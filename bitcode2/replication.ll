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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %6, label %8, label %7, !dbg !477

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %16, !dbg !478

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !480
  %10 = load i32, i32* %9, align 8, !dbg !480, !tbaa !481
  %11 = call i32 @anetPeerToString(i32 %10, i8* nonnull %3, i64 46, i32* null) #8, !dbg !489
  %12 = icmp eq i32 %11, -1, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %12, label %26, label %13, !dbg !491

; <label>:13:                                     ; preds = %8
  %14 = load i8, i8* %4, align 8, !dbg !492, !tbaa !470
  %15 = icmp eq i8 %14, 0, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %15, label %18, label %16, !dbg !478

; <label>:16:                                     ; preds = %7, %13
  %17 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i64 46) #8, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %18, !dbg !495

; <label>:18:                                     ; preds = %13, %16
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35, !dbg !496
  %20 = load i32, i32* %19, align 4, !dbg !496, !tbaa !498
  %21 = icmp eq i32 %20, 0, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %21, label %24, label %22, !dbg !500

; <label>:22:                                     ; preds = %18
  %23 = call i32 @anetFormatAddr(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* nonnull %3, i32 %20) #8, !dbg !501
  br label %30, !dbg !501

; <label>:24:                                     ; preds = %18
  %25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* nonnull %3) #8, !dbg !502
  br label %30

; <label>:26:                                     ; preds = %8
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !503
  %28 = load i64, i64* %27, align 8, !dbg !503, !tbaa !505
  %29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %28) #8, !dbg !506
  br label %30

; <label>:30:                                     ; preds = %22, %24, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %2, label %4, label %3, !dbg !510

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #8, !dbg !510
  tail call void @_exit(i32 1) #9, !dbg !510
  unreachable

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %5, label %14, label %6, !dbg !539

; <label>:6:                                      ; preds = %1
  store i64 %3, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !540, !tbaa !518
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !541, !tbaa !511
  %8 = icmp eq i8* %7, null, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %4, label %6, label %5, !dbg !557

; <label>:5:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !557
  tail call void @_exit(i32 1) #9, !dbg !557
  unreachable

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  %5 = icmp eq i64 %1, 0, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %5, label %6, label %9, !dbg !579

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !580, !tbaa !582
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !583, !tbaa !518
  br label %35, !dbg !579

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !584, !tbaa !518
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !585, !tbaa !586
  br label %12, !dbg !584

; <label>:12:                                     ; preds = %9, %20
  %13 = phi i64 [ %29, %20 ], [ %11, %9 ], !dbg !585
  %14 = phi i64 [ %27, %20 ], [ %10, %9 ], !dbg !584
  %15 = phi i8* [ %31, %20 ], [ %0, %9 ]
  %16 = phi i64 [ %30, %20 ], [ %1, %9 ]
  %17 = sub nsw i64 %14, %13, !dbg !587
  %18 = icmp ugt i64 %17, %16, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %18, label %19, label %20, !dbg !591

; <label>:19:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br label %20, !dbg !592

; <label>:20:                                     ; preds = %19, %12
  %21 = phi i64 [ %16, %19 ], [ %17, %12 ], !dbg !593
  %22 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !594, !tbaa !511
  %23 = getelementptr inbounds i8, i8* %22, i64 %13, !dbg !595
  %24 = tail call i8* @memcpy(i8* %23, i8* %15, i64 %21) #8, !dbg !596
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !597, !tbaa !586
  %26 = add i64 %25, %21, !dbg !597
  %27 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !598, !tbaa !518
  %28 = icmp eq i64 %26, %27, !dbg !600
  %29 = select i1 %28, i64 0, i64 %26, !dbg !601
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !602
  %30 = sub i64 %16, %21, !dbg !603
  %31 = getelementptr inbounds i8, i8* %15, i64 %21, !dbg !604
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !605, !tbaa !582
  %33 = add i64 %32, %21, !dbg !605
  store i64 %33, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !605, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  %34 = icmp eq i64 %30, 0, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %34, label %35, label %12, !dbg !579, !llvm.loop !606

; <label>:35:                                     ; preds = %20, %6
  %36 = phi i64 [ %8, %6 ], [ %27, %20 ], !dbg !583
  %37 = phi i64 [ %7, %6 ], [ %33, %20 ], !dbg !580
  %38 = icmp sgt i64 %37, %36, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %38, label %39, label %40, !dbg !609

; <label>:39:                                     ; preds = %35
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !610, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br label %40, !dbg !611

; <label>:40:                                     ; preds = %39, %35
  %41 = phi i64 [ %36, %39 ], [ %37, %35 ], !dbg !612
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !613, !tbaa !524
  %43 = add i64 %42, 1, !dbg !614
  %44 = sub i64 %43, %41, !dbg !615
  store i64 %44, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !616, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  ret void, !dbg !617
}

; Function Attrs: noredzone nounwind
define dso_local void @feedReplicationBacklogWithObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !618 {
  %2 = alloca [21 x i8], align 16
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !630
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #7, !dbg !630
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !632
  %5 = load i32, i32* %4, align 8, !dbg !632
  %6 = and i32 %5, 240, !dbg !632
  %7 = icmp eq i32 %6, 16, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !636
  br i1 %7, label %9, label %14, !dbg !635

; <label>:9:                                      ; preds = %1
  %10 = bitcast i8** %8 to i64*, !dbg !638
  %11 = load i64, i64* %10, align 8, !dbg !638, !tbaa !640
  %12 = call i32 @ll2string(i8* nonnull %3, i64 21, i64 %11) #8, !dbg !642
  %13 = sext i32 %12 to i64, !dbg !642
  br label %42, !dbg !645

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %8, align 8, !dbg !646, !tbaa !640
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !658
  %17 = load i8, i8* %16, align 1, !dbg !658, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %18 = trunc i8 %17 to i3, !dbg !660
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !660

; <label>:19:                                     ; preds = %14
  %20 = lshr i8 %17, 3, !dbg !661
  %21 = zext i8 %20 to i64, !dbg !661
  br label %40, !dbg !663

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %15, i64 -3, !dbg !664
  %24 = load i8, i8* %23, align 1, !dbg !665, !tbaa !470
  %25 = zext i8 %24 to i64, !dbg !664
  br label %40, !dbg !666

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %15, i64 -5, !dbg !667
  %28 = bitcast i8* %27 to i16*, !dbg !668
  %29 = load i16, i16* %28, align 1, !dbg !668, !tbaa !669
  %30 = zext i16 %29 to i64, !dbg !667
  br label %40, !dbg !671

; <label>:31:                                     ; preds = %14
  %32 = getelementptr inbounds i8, i8* %15, i64 -9, !dbg !672
  %33 = bitcast i8* %32 to i32*, !dbg !673
  %34 = load i32, i32* %33, align 1, !dbg !673, !tbaa !674
  %35 = zext i32 %34 to i64, !dbg !672
  br label %40, !dbg !675

; <label>:36:                                     ; preds = %14
  %37 = getelementptr inbounds i8, i8* %15, i64 -17, !dbg !676
  %38 = bitcast i8* %37 to i64*, !dbg !677
  %39 = load i64, i64* %38, align 1, !dbg !677, !tbaa !678
  br label %40, !dbg !679

; <label>:40:                                     ; preds = %14, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %14 ], !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br label %42

; <label>:42:                                     ; preds = %40, %9
  %43 = phi i8* [ %3, %9 ], [ %15, %40 ], !dbg !636
  %44 = phi i64 [ %13, %9 ], [ %41, %40 ], !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !686, !tbaa !524
  %46 = add i64 %45, %44, !dbg !686
  store i64 %46, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !686, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %47 = icmp eq i64 %44, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %47, label %48, label %51, !dbg !687

; <label>:48:                                     ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !688, !tbaa !582
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !689, !tbaa !518
  br label %77, !dbg !687

; <label>:51:                                     ; preds = %42
  %52 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !690, !tbaa !518
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !691, !tbaa !586
  br label %54, !dbg !690

; <label>:54:                                     ; preds = %62, %51
  %55 = phi i64 [ %71, %62 ], [ %53, %51 ], !dbg !691
  %56 = phi i64 [ %69, %62 ], [ %52, %51 ], !dbg !690
  %57 = phi i8* [ %73, %62 ], [ %43, %51 ]
  %58 = phi i64 [ %72, %62 ], [ %44, %51 ]
  %59 = sub nsw i64 %56, %55, !dbg !692
  %60 = icmp ugt i64 %59, %58, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  br i1 %60, label %61, label %62, !dbg !695

; <label>:61:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br label %62, !dbg !696

; <label>:62:                                     ; preds = %61, %54
  %63 = phi i64 [ %58, %61 ], [ %59, %54 ], !dbg !697
  %64 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !698, !tbaa !511
  %65 = getelementptr inbounds i8, i8* %64, i64 %55, !dbg !699
  %66 = call i8* @memcpy(i8* %65, i8* %57, i64 %63) #8, !dbg !700
  %67 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !701, !tbaa !586
  %68 = add i64 %67, %63, !dbg !701
  %69 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !702, !tbaa !518
  %70 = icmp eq i64 %68, %69, !dbg !703
  %71 = select i1 %70, i64 0, i64 %68, !dbg !704
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !705
  %72 = sub i64 %58, %63, !dbg !706
  %73 = getelementptr inbounds i8, i8* %57, i64 %63, !dbg !707
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !708, !tbaa !582
  %75 = add i64 %74, %63, !dbg !708
  store i64 %75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !708, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %76 = icmp eq i64 %72, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br i1 %76, label %77, label %54, !dbg !687, !llvm.loop !606

; <label>:77:                                     ; preds = %62, %48
  %78 = phi i64 [ %50, %48 ], [ %69, %62 ], !dbg !689
  %79 = phi i64 [ %49, %48 ], [ %75, %62 ], !dbg !688
  %80 = icmp sgt i64 %79, %78, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br i1 %80, label %81, label %82, !dbg !710

; <label>:81:                                     ; preds = %77
  store i64 %78, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !711, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br label %82, !dbg !712

; <label>:82:                                     ; preds = %77, %81
  %83 = phi i64 [ %78, %81 ], [ %79, %77 ], !dbg !713
  %84 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !714, !tbaa !524
  %85 = sub i64 1, %83, !dbg !715
  %86 = add i64 %85, %84, !dbg !716
  store i64 %86, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !717, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #7, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  ret void, !dbg !719
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !720 {
  %5 = alloca %struct.listIter, align 8
  %6 = alloca [21 x i8], align 16
  %7 = alloca [24 x i8], align 16
  %8 = bitcast %struct.listIter* %5 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !757
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #7, !dbg !758
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !760, !tbaa !762
  %11 = icmp eq i8* %10, null, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br i1 %11, label %12, label %242, !dbg !764

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !765, !tbaa !511
  %14 = icmp eq i8* %13, null, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %14, label %15, label %20, !dbg !768

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !769
  %17 = load i64, i64* %16, align 8, !dbg !769, !tbaa !559
  %18 = icmp eq i64 %17, 0, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %18, label %243, label %19, !dbg !771

; <label>:19:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 192) #8, !dbg !773
  tail call void @_exit(i32 1) #9, !dbg !773
  unreachable

; <label>:20:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !774, !tbaa !775
  %22 = icmp eq i32 %21, %1, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %22, label %23, label %24, !dbg !777

; <label>:23:                                     ; preds = %20
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !778, !tbaa !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br label %61, !dbg !779

; <label>:24:                                     ; preds = %20
  %25 = icmp ult i32 %1, 10, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %26 = sext i32 %1 to i64, !dbg !781
  br i1 %25, label %27, label %30, !dbg !780

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 46, i64 %26, !dbg !782
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !782, !tbaa !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br label %37, !dbg !787

; <label>:30:                                     ; preds = %24
  %31 = call i32 @ll2string(i8* nonnull %9, i64 21, i64 %26) #8, !dbg !788
  %32 = call i8* @sdsempty() #8, !dbg !790
  %33 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %31, i8* nonnull %9) #8, !dbg !791
  %34 = call %struct.redisObject* @createObject(i32 0, i8* %33) #8, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !793, !tbaa !511
  %36 = icmp eq i8* %35, null, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %36, label %39, label %37, !dbg !787

; <label>:37:                                     ; preds = %27, %30
  %38 = phi %struct.redisObject* [ %29, %27 ], [ %34, %30 ]
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %38) #10, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br label %39, !dbg !796

; <label>:39:                                     ; preds = %30, %37
  %40 = phi %struct.redisObject* [ %34, %30 ], [ %38, %37 ]
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #8, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %41 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !800
  %42 = icmp eq %struct.listNode* %41, null, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %42, label %55, label %43, !dbg !799

; <label>:43:                                     ; preds = %39, %52
  %44 = phi %struct.listNode* [ %53, %52 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.listNode, %struct.listNode* %44, i64 0, i32 2, !dbg !802
  %46 = bitcast i8** %45 to %struct.client**, !dbg !802
  %47 = load %struct.client*, %struct.client** %46, align 8, !dbg !802, !tbaa !803
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i64 0, i32 23, !dbg !806
  %49 = load i32, i32* %48, align 8, !dbg !806, !tbaa !808
  %50 = icmp eq i32 %49, 6, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %50, label %52, label %51, !dbg !810, !llvm.loop !811

; <label>:51:                                     ; preds = %43
  call void @addReply(%struct.client* %47, %struct.redisObject* %40) #8, !dbg !813
  br label %52, !dbg !812

; <label>:52:                                     ; preds = %43, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !800
  %54 = icmp eq %struct.listNode* %53, null, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %54, label %55, label %43, !dbg !799

; <label>:55:                                     ; preds = %52, %39
  %56 = icmp ugt i32 %1, 9, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br i1 %56, label %57, label %58, !dbg !815

; <label>:57:                                     ; preds = %55
  call void @decrRefCount(%struct.redisObject* %40) #8, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %58, !dbg !817

; <label>:58:                                     ; preds = %57, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %59 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !819, !tbaa !511
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !778, !tbaa !775
  %60 = icmp eq i8* %59, null, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %60, label %217, label %61, !dbg !779

; <label>:61:                                     ; preds = %23, %58
  %62 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %62) #7, !dbg !821
  store i8 42, i8* %62, align 16, !dbg !823, !tbaa !470
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 1, !dbg !824
  %64 = sext i32 %3 to i64, !dbg !825
  %65 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %64) #8, !dbg !826
  %66 = add nsw i32 %65, 1, !dbg !828
  %67 = sext i32 %66 to i64, !dbg !829
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %67, !dbg !829
  store i8 13, i8* %68, align 1, !dbg !830, !tbaa !470
  %69 = add nsw i32 %65, 2, !dbg !831
  %70 = sext i32 %69 to i64, !dbg !832
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %70, !dbg !832
  store i8 10, i8* %71, align 1, !dbg !833, !tbaa !470
  %72 = add nsw i32 %65, 3, !dbg !834
  %73 = sext i32 %72 to i64, !dbg !835
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !840, !tbaa !524
  %75 = add i64 %74, %73, !dbg !840
  store i64 %75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !840, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %76 = icmp eq i32 %72, 0, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %76, label %77, label %80, !dbg !841

; <label>:77:                                     ; preds = %61
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !842, !tbaa !582
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !843, !tbaa !518
  br label %106, !dbg !841

; <label>:80:                                     ; preds = %61
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !844, !tbaa !518
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !845, !tbaa !586
  br label %83, !dbg !844

; <label>:83:                                     ; preds = %91, %80
  %84 = phi i64 [ %100, %91 ], [ %82, %80 ], !dbg !845
  %85 = phi i64 [ %98, %91 ], [ %81, %80 ], !dbg !844
  %86 = phi i8* [ %102, %91 ], [ %62, %80 ]
  %87 = phi i64 [ %101, %91 ], [ %73, %80 ]
  %88 = sub nsw i64 %85, %84, !dbg !846
  %89 = icmp ugt i64 %88, %87, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %89, label %90, label %91, !dbg !849

; <label>:90:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br label %91, !dbg !850

; <label>:91:                                     ; preds = %90, %83
  %92 = phi i64 [ %87, %90 ], [ %88, %83 ], !dbg !851
  %93 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !852, !tbaa !511
  %94 = getelementptr inbounds i8, i8* %93, i64 %84, !dbg !853
  %95 = call i8* @memcpy(i8* %94, i8* %86, i64 %92) #8, !dbg !854
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !855, !tbaa !586
  %97 = add i64 %96, %92, !dbg !855
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !856, !tbaa !518
  %99 = icmp eq i64 %97, %98, !dbg !857
  %100 = select i1 %99, i64 0, i64 %97, !dbg !858
  store i64 %100, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !859
  %101 = sub i64 %87, %92, !dbg !860
  %102 = getelementptr inbounds i8, i8* %86, i64 %92, !dbg !861
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !862, !tbaa !582
  %104 = add i64 %103, %92, !dbg !862
  store i64 %104, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !862, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %105 = icmp eq i64 %101, 0, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %105, label %106, label %83, !dbg !841, !llvm.loop !606

; <label>:106:                                    ; preds = %91, %77
  %107 = phi i64 [ %79, %77 ], [ %98, %91 ], !dbg !843
  %108 = phi i64 [ %78, %77 ], [ %104, %91 ], !dbg !842
  %109 = icmp sgt i64 %108, %107, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %109, label %110, label %111, !dbg !864

; <label>:110:                                    ; preds = %106
  store i64 %107, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !865, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br label %111, !dbg !866

; <label>:111:                                    ; preds = %106, %110
  %112 = phi i64 [ %107, %110 ], [ %108, %106 ], !dbg !867
  %113 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !868, !tbaa !524
  %114 = sub i64 1, %112, !dbg !869
  %115 = add i64 %114, %113, !dbg !870
  store i64 %115, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !871, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %116 = icmp sgt i32 %3, 0, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %116, label %117, label %216, !dbg !876

; <label>:117:                                    ; preds = %111
  %118 = zext i32 %3 to i64
  br label %119, !dbg !877

; <label>:119:                                    ; preds = %209, %117
  %120 = phi i64 [ 0, %117 ], [ %214, %209 ]
  %121 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %120, !dbg !877
  %122 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !877, !tbaa !784
  %123 = call i64 @stringObjectLen(%struct.redisObject* %122) #8, !dbg !878
  store i8 36, i8* %62, align 16, !dbg !880, !tbaa !470
  %124 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %123) #8, !dbg !881
  %125 = add nsw i32 %124, 1, !dbg !882
  %126 = sext i32 %125 to i64, !dbg !883
  %127 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %126, !dbg !883
  store i8 13, i8* %127, align 1, !dbg !884, !tbaa !470
  %128 = add nsw i32 %124, 2, !dbg !885
  %129 = sext i32 %128 to i64, !dbg !886
  %130 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %129, !dbg !886
  store i8 10, i8* %130, align 1, !dbg !887, !tbaa !470
  %131 = add nsw i32 %124, 3, !dbg !888
  %132 = sext i32 %131 to i64, !dbg !889
  %133 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !894, !tbaa !524
  %134 = add i64 %133, %132, !dbg !894
  store i64 %134, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !894, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %135 = icmp eq i32 %131, 0, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %135, label %136, label %139, !dbg !895

; <label>:136:                                    ; preds = %119
  %137 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !896, !tbaa !582
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !897, !tbaa !518
  br label %165, !dbg !895

; <label>:139:                                    ; preds = %119
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !898, !tbaa !518
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !899, !tbaa !586
  br label %142, !dbg !898

; <label>:142:                                    ; preds = %150, %139
  %143 = phi i64 [ %159, %150 ], [ %141, %139 ], !dbg !899
  %144 = phi i64 [ %157, %150 ], [ %140, %139 ], !dbg !898
  %145 = phi i8* [ %161, %150 ], [ %62, %139 ]
  %146 = phi i64 [ %160, %150 ], [ %132, %139 ]
  %147 = sub nsw i64 %144, %143, !dbg !900
  %148 = icmp ugt i64 %147, %146, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %148, label %149, label %150, !dbg !903

; <label>:149:                                    ; preds = %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br label %150, !dbg !904

; <label>:150:                                    ; preds = %149, %142
  %151 = phi i64 [ %146, %149 ], [ %147, %142 ], !dbg !905
  %152 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !906, !tbaa !511
  %153 = getelementptr inbounds i8, i8* %152, i64 %143, !dbg !907
  %154 = call i8* @memcpy(i8* %153, i8* %145, i64 %151) #8, !dbg !908
  %155 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !909, !tbaa !586
  %156 = add i64 %155, %151, !dbg !909
  %157 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !910, !tbaa !518
  %158 = icmp eq i64 %156, %157, !dbg !911
  %159 = select i1 %158, i64 0, i64 %156, !dbg !912
  store i64 %159, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !913
  %160 = sub i64 %146, %151, !dbg !914
  %161 = getelementptr inbounds i8, i8* %145, i64 %151, !dbg !915
  %162 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !916, !tbaa !582
  %163 = add i64 %162, %151, !dbg !916
  store i64 %163, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !916, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %164 = icmp eq i64 %160, 0, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br i1 %164, label %165, label %142, !dbg !895, !llvm.loop !606

; <label>:165:                                    ; preds = %150, %136
  %166 = phi i64 [ %138, %136 ], [ %157, %150 ], !dbg !897
  %167 = phi i64 [ %137, %136 ], [ %163, %150 ], !dbg !896
  %168 = icmp sgt i64 %167, %166, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br i1 %168, label %169, label %170, !dbg !918

; <label>:169:                                    ; preds = %165
  store i64 %166, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !919, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br label %170, !dbg !920

; <label>:170:                                    ; preds = %165, %169
  %171 = phi i64 [ %166, %169 ], [ %167, %165 ], !dbg !921
  %172 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !922, !tbaa !524
  %173 = sub i64 1, %171, !dbg !923
  %174 = add i64 %173, %172, !dbg !924
  store i64 %174, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !925, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  %175 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !927, !tbaa !784
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %175) #10, !dbg !928
  %176 = sext i32 %124 to i64, !dbg !929
  %177 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %176, !dbg !929
  %178 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !930
  %179 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !935, !tbaa !524
  %180 = add i64 %179, 2, !dbg !935
  store i64 %180, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !935, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %181 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !937, !tbaa !518
  %182 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !938, !tbaa !586
  br label %183, !dbg !937

; <label>:183:                                    ; preds = %191, %170
  %184 = phi i64 [ %200, %191 ], [ %182, %170 ], !dbg !938
  %185 = phi i64 [ %198, %191 ], [ %181, %170 ], !dbg !937
  %186 = phi i8* [ %202, %191 ], [ %178, %170 ]
  %187 = phi i64 [ %201, %191 ], [ 2, %170 ]
  %188 = sub nsw i64 %185, %184, !dbg !939
  %189 = icmp ugt i64 %188, %187, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %189, label %190, label %191, !dbg !942

; <label>:190:                                    ; preds = %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br label %191, !dbg !943

; <label>:191:                                    ; preds = %190, %183
  %192 = phi i64 [ %187, %190 ], [ %188, %183 ], !dbg !944
  %193 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !945, !tbaa !511
  %194 = getelementptr inbounds i8, i8* %193, i64 %184, !dbg !946
  %195 = call i8* @memcpy(i8* %194, i8* %186, i64 %192) #8, !dbg !947
  %196 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !948, !tbaa !586
  %197 = add i64 %196, %192, !dbg !948
  %198 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !949, !tbaa !518
  %199 = icmp eq i64 %197, %198, !dbg !950
  %200 = select i1 %199, i64 0, i64 %197, !dbg !951
  store i64 %200, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !952
  %201 = sub i64 %187, %192, !dbg !953
  %202 = getelementptr inbounds i8, i8* %186, i64 %192, !dbg !954
  %203 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !955, !tbaa !582
  %204 = add i64 %203, %192, !dbg !955
  store i64 %204, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !955, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  %205 = icmp eq i64 %201, 0, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %205, label %206, label %183, !dbg !936, !llvm.loop !606

; <label>:206:                                    ; preds = %191
  %207 = icmp sgt i64 %204, %198, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  br i1 %207, label %208, label %209, !dbg !957

; <label>:208:                                    ; preds = %206
  store i64 %198, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !958, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %209, !dbg !959

; <label>:209:                                    ; preds = %206, %208
  %210 = phi i64 [ %198, %208 ], [ %204, %206 ], !dbg !960
  %211 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !961, !tbaa !524
  %212 = sub i64 1, %210, !dbg !962
  %213 = add i64 %212, %211, !dbg !963
  store i64 %213, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !964, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  %214 = add nuw nsw i64 %120, 1, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  %215 = icmp eq i64 %214, %118, !dbg !875
  br i1 %215, label %216, label %119, !dbg !876, !llvm.loop !968

; <label>:216:                                    ; preds = %209, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %62) #7, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %217, !dbg !971

; <label>:217:                                    ; preds = %58, %216
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #8, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  %218 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !974
  %219 = icmp eq %struct.listNode* %218, null, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %219, label %242, label %220, !dbg !973

; <label>:220:                                    ; preds = %217
  %221 = sext i32 %3 to i64
  %222 = icmp sgt i32 %3, 0
  %223 = zext i32 %3 to i64
  br label %224, !dbg !973

; <label>:224:                                    ; preds = %220, %239
  %225 = phi %struct.listNode* [ %218, %220 ], [ %240, %239 ]
  %226 = getelementptr inbounds %struct.listNode, %struct.listNode* %225, i64 0, i32 2, !dbg !975
  %227 = bitcast i8** %226 to %struct.client**, !dbg !975
  %228 = load %struct.client*, %struct.client** %227, align 8, !dbg !975, !tbaa !803
  %229 = getelementptr inbounds %struct.client, %struct.client* %228, i64 0, i32 23, !dbg !977
  %230 = load i32, i32* %229, align 8, !dbg !977, !tbaa !808
  %231 = icmp eq i32 %230, 6, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %231, label %239, label %232, !dbg !980, !llvm.loop !981

; <label>:232:                                    ; preds = %224
  call void @addReplyMultiBulkLen(%struct.client* %228, i64 %221) #8, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %222, label %233, label %239, !dbg !986

; <label>:233:                                    ; preds = %232, %233
  %234 = phi i64 [ %237, %233 ], [ 0, %232 ]
  %235 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %234, !dbg !987
  %236 = load %struct.redisObject*, %struct.redisObject** %235, align 8, !dbg !987, !tbaa !784
  call void @addReplyBulk(%struct.client* %228, %struct.redisObject* %236) #8, !dbg !989
  %237 = add nuw nsw i64 %234, 1, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  %238 = icmp eq i64 %237, %223, !dbg !992
  br i1 %238, label %239, label %233, !dbg !986, !llvm.loop !993

; <label>:239:                                    ; preds = %233, %232, %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %240 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !974
  %241 = icmp eq %struct.listNode* %240, null, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %241, label %242, label %224, !dbg !973

; <label>:242:                                    ; preds = %239, %217, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br label %243, !dbg !997

; <label>:243:                                    ; preds = %242, %15
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #7, !dbg !997
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  ret void, !dbg !997
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
define dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #0 !dbg !998 {
  %4 = alloca %struct.listIter, align 8
  %5 = bitcast %struct.listIter* %4 to i8*, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1012
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1013, !tbaa !511
  %7 = icmp eq i8* %6, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %7, label %51, label %8, !dbg !1016

; <label>:8:                                      ; preds = %3
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1021, !tbaa !524
  %10 = add i64 %9, %2, !dbg !1021
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1021, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %11 = icmp eq i64 %2, 0, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %11, label %12, label %15, !dbg !1022

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1023, !tbaa !582
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1024, !tbaa !518
  br label %41, !dbg !1022

; <label>:15:                                     ; preds = %8
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1025, !tbaa !518
  %17 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1026, !tbaa !586
  br label %18, !dbg !1025

; <label>:18:                                     ; preds = %26, %15
  %19 = phi i64 [ %35, %26 ], [ %17, %15 ], !dbg !1026
  %20 = phi i64 [ %33, %26 ], [ %16, %15 ], !dbg !1025
  %21 = phi i8* [ %37, %26 ], [ %1, %15 ]
  %22 = phi i64 [ %36, %26 ], [ %2, %15 ]
  %23 = sub nsw i64 %20, %19, !dbg !1027
  %24 = icmp ugt i64 %23, %22, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %24, label %25, label %26, !dbg !1030

; <label>:25:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br label %26, !dbg !1031

; <label>:26:                                     ; preds = %25, %18
  %27 = phi i64 [ %22, %25 ], [ %23, %18 ], !dbg !1032
  %28 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1033, !tbaa !511
  %29 = getelementptr inbounds i8, i8* %28, i64 %19, !dbg !1034
  %30 = tail call i8* @memcpy(i8* %29, i8* %21, i64 %27) #8, !dbg !1035
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1036, !tbaa !586
  %32 = add i64 %31, %27, !dbg !1036
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1037, !tbaa !518
  %34 = icmp eq i64 %32, %33, !dbg !1038
  %35 = select i1 %34, i64 0, i64 %32, !dbg !1039
  store i64 %35, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1040
  %36 = sub i64 %22, %27, !dbg !1041
  %37 = getelementptr inbounds i8, i8* %21, i64 %27, !dbg !1042
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1043, !tbaa !582
  %39 = add i64 %38, %27, !dbg !1043
  store i64 %39, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1043, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %40 = icmp eq i64 %36, 0, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %40, label %41, label %18, !dbg !1022, !llvm.loop !606

; <label>:41:                                     ; preds = %26, %12
  %42 = phi i64 [ %14, %12 ], [ %33, %26 ], !dbg !1024
  %43 = phi i64 [ %13, %12 ], [ %39, %26 ], !dbg !1023
  %44 = icmp sgt i64 %43, %42, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %44, label %45, label %46, !dbg !1045

; <label>:45:                                     ; preds = %41
  store i64 %42, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1046, !tbaa !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br label %46, !dbg !1047

; <label>:46:                                     ; preds = %41, %45
  %47 = phi i64 [ %42, %45 ], [ %43, %41 ], !dbg !1048
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1049, !tbaa !524
  %49 = sub i64 1, %47, !dbg !1050
  %50 = add i64 %49, %48, !dbg !1051
  store i64 %50, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1052, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br label %51, !dbg !1054

; <label>:51:                                     ; preds = %3, %46
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %4) #8, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %52 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !1058
  %53 = icmp eq %struct.listNode* %52, null, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %53, label %66, label %54, !dbg !1057

; <label>:54:                                     ; preds = %51, %63
  %55 = phi %struct.listNode* [ %64, %63 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.listNode, %struct.listNode* %55, i64 0, i32 2, !dbg !1060
  %57 = bitcast i8** %56 to %struct.client**, !dbg !1060
  %58 = load %struct.client*, %struct.client** %57, align 8, !dbg !1060, !tbaa !803
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 23, !dbg !1062
  %60 = load i32, i32* %59, align 8, !dbg !1062, !tbaa !808
  %61 = icmp eq i32 %60, 6, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %61, label %63, label %62, !dbg !1065, !llvm.loop !1066

; <label>:62:                                     ; preds = %54
  call void @addReplyString(%struct.client* %58, i8* %1, i64 %2) #8, !dbg !1068
  br label %63, !dbg !1067

; <label>:63:                                     ; preds = %54, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !1058
  %65 = icmp eq %struct.listNode* %64, null, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %65, label %66, label %54, !dbg !1057

; <label>:66:                                     ; preds = %63, %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  ret void, !dbg !1070
}

; Function Attrs: noredzone
declare dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedMonitors(%struct.client*, %struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1071 {
  %6 = alloca %struct.listIter, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = bitcast %struct.listIter* %6 to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1098
  %9 = tail call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1099
  %10 = bitcast %struct.timeval* %7 to i8*, !dbg !1101
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1101
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #8, !dbg !1103
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0, !dbg !1104
  %13 = load i64, i64* %12, align 8, !dbg !1104, !tbaa !1105
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1, !dbg !1107
  %15 = load i64, i64* %14, align 8, !dbg !1107, !tbaa !1108
  %16 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %13, i64 %15) #8, !dbg !1109
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1110
  %18 = load i32, i32* %17, align 8, !dbg !1110, !tbaa !1112
  %19 = and i32 %18, 256, !dbg !1113
  %20 = icmp eq i32 %19, 0, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %20, label %23, label %21, !dbg !1114

; <label>:21:                                     ; preds = %5
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %2) #8, !dbg !1115
  br label %32, !dbg !1117

; <label>:23:                                     ; preds = %5
  %24 = and i32 %18, 2048, !dbg !1118
  %25 = icmp eq i32 %24, 0, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %25, label %29, label %26, !dbg !1120

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !1121, !tbaa !1123
  %28 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %2, i8* %27) #8, !dbg !1124
  br label %32, !dbg !1125

; <label>:29:                                     ; preds = %23
  %30 = call i8* @getClientPeerId(%struct.client* nonnull %0) #8, !dbg !1126
  %31 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %2, i8* %30) #8, !dbg !1128
  br label %32

; <label>:32:                                     ; preds = %26, %29, %21
  %33 = phi i8* [ %22, %21 ], [ %28, %26 ], [ %31, %29 ], !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %34 = icmp sgt i32 %4, 0, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br i1 %34, label %35, label %90, !dbg !1135

; <label>:35:                                     ; preds = %32
  %36 = add nsw i32 %4, -1
  %37 = zext i32 %36 to i64, !dbg !1135
  %38 = zext i32 %4 to i64
  br label %39, !dbg !1135

; <label>:39:                                     ; preds = %86, %35
  %40 = phi i64 [ 0, %35 ], [ %88, %86 ]
  %41 = phi i8* [ %33, %35 ], [ %87, %86 ]
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 %40, !dbg !1136
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1136, !tbaa !784
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 0, !dbg !1139
  %45 = load i32, i32* %44, align 8, !dbg !1139
  %46 = and i32 %45, 240, !dbg !1139
  %47 = icmp eq i32 %46, 16, !dbg !1140
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1141
  %49 = load i8*, i8** %48, align 8, !dbg !1141, !tbaa !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %47, label %50, label %53, !dbg !1143

; <label>:50:                                     ; preds = %39
  %51 = ptrtoint i8* %49 to i64, !dbg !1144
  %52 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 %51) #8, !dbg !1146
  br label %81, !dbg !1147

; <label>:53:                                     ; preds = %39
  %54 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !1150
  %55 = load i8, i8* %54, align 1, !dbg !1150, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  %56 = trunc i8 %55 to i3, !dbg !1152
  switch i3 %56, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !1152

; <label>:57:                                     ; preds = %53
  %58 = lshr i8 %55, 3, !dbg !1153
  %59 = zext i8 %58 to i64, !dbg !1153
  br label %78, !dbg !1154

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !1155
  %62 = load i8, i8* %61, align 1, !dbg !1156, !tbaa !470
  %63 = zext i8 %62 to i64, !dbg !1155
  br label %78, !dbg !1157

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !1158
  %66 = bitcast i8* %65 to i16*, !dbg !1159
  %67 = load i16, i16* %66, align 1, !dbg !1159, !tbaa !669
  %68 = zext i16 %67 to i64, !dbg !1158
  br label %78, !dbg !1160

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !1161
  %71 = bitcast i8* %70 to i32*, !dbg !1162
  %72 = load i32, i32* %71, align 1, !dbg !1162, !tbaa !674
  %73 = zext i32 %72 to i64, !dbg !1161
  br label %78, !dbg !1163

; <label>:74:                                     ; preds = %53
  %75 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !1164
  %76 = bitcast i8* %75 to i64*, !dbg !1165
  %77 = load i64, i64* %76, align 1, !dbg !1165, !tbaa !678
  br label %78, !dbg !1166

; <label>:78:                                     ; preds = %53, %57, %60, %64, %69, %74
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %53 ], !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  %80 = call i8* @sdscatrepr(i8* %41, i8* nonnull %49, i64 %79) #8, !dbg !1169
  br label %81

; <label>:81:                                     ; preds = %78, %50
  %82 = phi i8* [ %52, %50 ], [ %80, %78 ], !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = icmp eq i64 %40, %37, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %83, label %86, label %84, !dbg !1172

; <label>:84:                                     ; preds = %81
  %85 = call i8* @sdscatlen(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1) #8, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br label %86, !dbg !1174

; <label>:86:                                     ; preds = %81, %84
  %87 = phi i8* [ %85, %84 ], [ %82, %81 ], !dbg !1175
  %88 = add nuw nsw i64 %40, 1, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  %89 = icmp eq i64 %88, %38, !dbg !1133
  br i1 %89, label %90, label %39, !dbg !1135, !llvm.loop !1178

; <label>:90:                                     ; preds = %86, %32
  %91 = phi i8* [ %33, %32 ], [ %87, %86 ], !dbg !1180
  %92 = call i8* @sdscatlen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 2) #8, !dbg !1181
  %93 = call %struct.redisObject* @createObject(i32 0, i8* %92) #8, !dbg !1182
  call void @listRewind(%struct.list* %1, %struct.listIter* nonnull %6) #8, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %94 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #8, !dbg !1187
  %95 = icmp eq %struct.listNode* %94, null, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %95, label %103, label %96, !dbg !1186

; <label>:96:                                     ; preds = %90, %96
  %97 = phi %struct.listNode* [ %101, %96 ], [ %94, %90 ]
  %98 = getelementptr inbounds %struct.listNode, %struct.listNode* %97, i64 0, i32 2, !dbg !1189
  %99 = bitcast i8** %98 to %struct.client**, !dbg !1189
  %100 = load %struct.client*, %struct.client** %99, align 8, !dbg !1189, !tbaa !803
  call void @addReply(%struct.client* %100, %struct.redisObject* %93) #8, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %101 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #8, !dbg !1187
  %102 = icmp eq %struct.listNode* %101, null, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %102, label %103, label %96, !dbg !1186, !llvm.loop !1192

; <label>:103:                                    ; preds = %96, %90
  call void @decrRefCount(%struct.redisObject* %93) #8, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1195
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  ret void, !dbg !1195
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
define dso_local i64 @addReplyReplicationBacklog(%struct.client*, i64) local_unnamed_addr #0 !dbg !1196 {
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %1) #8, !dbg !1209
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1210, !tbaa !582
  %4 = icmp eq i64 %3, 0, !dbg !1212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  br i1 %4, label %5, label %6, !dbg !1213

; <label>:5:                                      ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1214
  br label %47, !dbg !1216

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1217, !tbaa !518
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i64 %7) #8, !dbg !1218
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1219, !tbaa !527
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 %8) #8, !dbg !1220
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1221, !tbaa !582
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %9) #8, !dbg !1222
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1223, !tbaa !586
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i64 %10) #8, !dbg !1224
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1225, !tbaa !527
  %12 = sub nsw i64 %1, %11, !dbg !1226
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i64 %12) #8, !dbg !1228
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1229, !tbaa !586
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1230, !tbaa !518
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1231, !tbaa !582
  %16 = add i64 %14, %13, !dbg !1232
  %17 = sub i64 %16, %15, !dbg !1233
  %18 = srem i64 %17, %14, !dbg !1234
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i64 %18) #8, !dbg !1236
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1237, !tbaa !518
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1238, !tbaa !582
  %21 = sub nsw i64 %20, %12, !dbg !1239
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i64 %21) #8, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %22 = icmp eq i64 %21, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %22, label %44, label %23, !dbg !1242

; <label>:23:                                     ; preds = %6
  %24 = add nsw i64 %18, %12, !dbg !1243
  %25 = srem i64 %24, %19, !dbg !1244
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1245, !tbaa !518
  %27 = sub nsw i64 %26, %25, !dbg !1246
  %28 = icmp slt i64 %27, %21, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  %29 = select i1 %28, i64 %27, i64 %21, !dbg !1248
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %29) #8, !dbg !1250
  %30 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1251, !tbaa !511
  %31 = getelementptr inbounds i8, i8* %30, i64 %25, !dbg !1252
  %32 = tail call i8* @sdsnewlen(i8* %31, i64 %29) #8, !dbg !1253
  tail call void @addReplySds(%struct.client* %0, i8* %32) #8, !dbg !1254
  %33 = sub nsw i64 %21, %29, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %34 = icmp eq i64 %33, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %34, label %44, label %35, !dbg !1242, !llvm.loop !1256

; <label>:35:                                     ; preds = %23, %35
  %36 = phi i64 [ %42, %35 ], [ %33, %23 ]
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1245, !tbaa !518
  %38 = icmp slt i64 %37, %36, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  %39 = select i1 %38, i64 %37, i64 %36, !dbg !1248
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %39) #8, !dbg !1250
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1251, !tbaa !511
  %41 = tail call i8* @sdsnewlen(i8* %40, i64 %39) #8, !dbg !1253
  tail call void @addReplySds(%struct.client* %0, i8* %41) #8, !dbg !1254
  %42 = sub nsw i64 %36, %39, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %43 = icmp eq i64 %42, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %43, label %44, label %35, !dbg !1242, !llvm.loop !1258

; <label>:44:                                     ; preds = %23, %35, %6
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1260, !tbaa !582
  %46 = sub nsw i64 %45, %12, !dbg !1261
  br label %47, !dbg !1262

; <label>:47:                                     ; preds = %44, %5
  %48 = phi i64 [ 0, %5 ], [ %46, %44 ], !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  ret i64 %48, !dbg !1265
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @getPsyncInitialOffset() local_unnamed_addr #5 !dbg !1266 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1269, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  ret i64 %1, !dbg !1270
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationSetupSlaveForFullResync(%struct.client*, i64) local_unnamed_addr #0 !dbg !1271 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1284
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1284
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1286
  store i64 %1, i64* %5, align 8, !dbg !1287, !tbaa !1288
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1289
  store i32 7, i32* %6, align 8, !dbg !1290, !tbaa !808
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1291, !tbaa !775
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1292
  %8 = load i32, i32* %7, align 8, !dbg !1292, !tbaa !1112
  %9 = and i32 %8, 65536, !dbg !1294
  %10 = icmp eq i32 %9, 0, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1295
  br i1 %10, label %11, label %19, !dbg !1295

; <label>:11:                                     ; preds = %2
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %1) #8, !dbg !1296
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1299
  %14 = load i32, i32* %13, align 8, !dbg !1299, !tbaa !481
  %15 = sext i32 %12 to i64, !dbg !1301
  %16 = call i64 @write(i32 %14, i8* nonnull %4, i64 %15) #8, !dbg !1302
  %17 = icmp eq i64 %16, %15, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %17, label %19, label %18, !dbg !1304

; <label>:18:                                     ; preds = %11
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1305
  br label %19, !dbg !1307

; <label>:19:                                     ; preds = %2, %11, %18
  %20 = phi i32 [ -1, %18 ], [ 0, %11 ], [ 0, %2 ], !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  ret i32 %20, !dbg !1309
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @masterTryPartialResynchronization(%struct.client*) local_unnamed_addr #0 !dbg !1310 {
  %2 = alloca i64, align 8
  %3 = alloca [128 x i8], align 16
  %4 = bitcast i64* %2 to i8*, !dbg !1321
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !1321
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1322
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1322, !tbaa !1323
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !1324
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !1324, !tbaa !784
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !1325
  %10 = load i8*, i8** %9, align 8, !dbg !1325, !tbaa !640
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1327
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #7, !dbg !1327
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !1329
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !1329, !tbaa !784
  %14 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %13, i64* nonnull %2, i8* null) #8, !dbg !1332
  %15 = icmp eq i32 %14, 0, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %15, label %16, label %92, !dbg !1334

; <label>:16:                                     ; preds = %1
  %17 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #11, !dbg !1335
  %18 = icmp eq i32 %17, 0, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %18, label %41, label %19, !dbg !1337

; <label>:19:                                     ; preds = %16
  %20 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #11, !dbg !1338
  %21 = icmp eq i32 %20, 0, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %21, label %22, label %26, !dbg !1339

; <label>:22:                                     ; preds = %19
  %23 = load i64, i64* %2, align 8, !dbg !1340, !tbaa !522
  %24 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1341, !tbaa !1342
  %25 = icmp sgt i64 %23, %24, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br i1 %25, label %26, label %41, !dbg !1344

; <label>:26:                                     ; preds = %19, %22
  %27 = load i8, i8* %10, align 1, !dbg !1345, !tbaa !470
  %28 = icmp eq i8 %27, 63, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %28, label %39, label %29, !dbg !1349

; <label>:29:                                     ; preds = %26
  %30 = call i32 @strcasecmp(i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #11, !dbg !1350
  %31 = icmp eq i32 %30, 0, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br i1 %31, label %36, label %32, !dbg !1353

; <label>:32:                                     ; preds = %29
  %33 = call i32 @strcasecmp(i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #11, !dbg !1354
  %34 = icmp eq i32 %33, 0, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  br i1 %34, label %36, label %35, !dbg !1355

; <label>:35:                                     ; preds = %32
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #8, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br label %92, !dbg !1358

; <label>:36:                                     ; preds = %32, %29
  %37 = load i64, i64* %2, align 8, !dbg !1359, !tbaa !522
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1361, !tbaa !1342
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.27, i64 0, i64 0), i64 %37, i64 %38) #8, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %92

; <label>:39:                                     ; preds = %26
  %40 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1363
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %92

; <label>:41:                                     ; preds = %16, %22
  %42 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1366, !tbaa !511
  %43 = icmp eq i8* %42, null, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  br i1 %43, label %52, label %44, !dbg !1369

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %2, align 8, !dbg !1370, !tbaa !522
  %46 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1371, !tbaa !527
  %47 = icmp slt i64 %45, %46, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  br i1 %47, label %52, label %48, !dbg !1373

; <label>:48:                                     ; preds = %44
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1374, !tbaa !582
  %50 = add nsw i64 %49, %46, !dbg !1375
  %51 = icmp sgt i64 %45, %50, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br i1 %51, label %52, label %60, !dbg !1377

; <label>:52:                                     ; preds = %41, %48, %44
  %53 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1378
  %54 = load i64, i64* %2, align 8, !dbg !1380, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %54) #8, !dbg !1381
  %55 = load i64, i64* %2, align 8, !dbg !1382, !tbaa !522
  %56 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1384, !tbaa !524
  %57 = icmp sgt i64 %55, %56, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %57, label %58, label %92, !dbg !1386

; <label>:58:                                     ; preds = %52
  %59 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1387
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  br label %92, !dbg !1390

; <label>:60:                                     ; preds = %48
  %61 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1391
  %62 = load i32, i32* %61, align 8, !dbg !1392, !tbaa !1112
  %63 = or i32 %62, 1, !dbg !1392
  store i32 %63, i32* %61, align 8, !dbg !1392, !tbaa !1112
  %64 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1393
  store i32 9, i32* %64, align 8, !dbg !1394, !tbaa !808
  %65 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1395, !tbaa !1396
  %66 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !1397
  store i64 %65, i64* %66, align 8, !dbg !1398, !tbaa !1399
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1400
  store i32 0, i32* %67, align 4, !dbg !1401, !tbaa !1402
  %68 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1403, !tbaa !558
  %69 = bitcast %struct.client* %0 to i8*, !dbg !1404
  %70 = call %struct.list* @listAddNodeTail(%struct.list* %68, i8* %69) #8, !dbg !1405
  %71 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1406
  %72 = load i32, i32* %71, align 8, !dbg !1406, !tbaa !1408
  %73 = and i32 %72, 2, !dbg !1409
  %74 = icmp eq i32 %73, 0, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br i1 %74, label %77, label %75, !dbg !1410

; <label>:75:                                     ; preds = %60
  %76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %11, i64 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !1411
  br label %79, !dbg !1414

; <label>:77:                                     ; preds = %60
  %78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %11, i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !1415
  br label %79

; <label>:79:                                     ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ], !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1418
  %82 = load i32, i32* %81, align 8, !dbg !1418, !tbaa !481
  %83 = sext i32 %80 to i64, !dbg !1420
  %84 = call i64 @write(i32 %82, i8* nonnull %11, i64 %83) #8, !dbg !1421
  %85 = icmp eq i64 %84, %83, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  br i1 %85, label %87, label %86, !dbg !1423

; <label>:86:                                     ; preds = %79
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1424
  br label %92, !dbg !1426

; <label>:87:                                     ; preds = %79
  %88 = load i64, i64* %2, align 8, !dbg !1427, !tbaa !522
  %89 = call i64 @addReplyReplicationBacklog(%struct.client* nonnull %0, i64 %88) #10, !dbg !1428
  %90 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1430
  %91 = load i64, i64* %2, align 8, !dbg !1431, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %89, i64 %91) #8, !dbg !1432
  call void @refreshGoodSlavesCount() #10, !dbg !1433
  br label %92, !dbg !1434

; <label>:92:                                     ; preds = %35, %36, %39, %58, %52, %1, %87, %86
  %93 = phi i32 [ 0, %86 ], [ 0, %87 ], [ -1, %1 ], [ -1, %52 ], [ -1, %58 ], [ -1, %39 ], [ -1, %36 ], [ -1, %35 ], !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %11) #7, !dbg !1437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  ret i32 %93, !dbg !1437
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @refreshGoodSlavesCount() local_unnamed_addr #0 !dbg !1438 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1446
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !1448, !tbaa !1450
  %4 = icmp ne i32 %3, 0, !dbg !1451
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1452
  %6 = icmp ne i32 %5, 0, !dbg !1453
  %7 = and i1 %4, %6, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %7, label %8, label %37, !dbg !1454

; <label>:8:                                      ; preds = %0
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1455, !tbaa !558
  call void @listRewind(%struct.list* %9, %struct.listIter* nonnull %1) #8, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !1459
  %11 = icmp eq %struct.listNode* %10, null, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %11, label %35, label %12, !dbg !1458

; <label>:12:                                     ; preds = %8, %31
  %13 = phi %struct.listNode* [ %33, %31 ], [ %10, %8 ]
  %14 = phi i32 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 2, !dbg !1461
  %16 = bitcast i8** %15 to %struct.client**, !dbg !1461
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !1461, !tbaa !803
  %18 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1463, !tbaa !1396
  %19 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 32, !dbg !1464
  %20 = load i64, i64* %19, align 8, !dbg !1464, !tbaa !1399
  %21 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 23, !dbg !1465
  %22 = load i32, i32* %21, align 8, !dbg !1465, !tbaa !808
  %23 = icmp eq i32 %22, 9, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %23, label %24, label %31, !dbg !1468

; <label>:24:                                     ; preds = %12
  %25 = sub nsw i64 %18, %20, !dbg !1469
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1471, !tbaa !1472
  %27 = sext i32 %26 to i64, !dbg !1473
  %28 = icmp sgt i64 %25, %27, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  br i1 %28, label %31, label %29, !dbg !1475

; <label>:29:                                     ; preds = %24
  %30 = add nsw i32 %14, 1, !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  br label %31, !dbg !1477

; <label>:31:                                     ; preds = %24, %29, %12
  %32 = phi i32 [ %30, %29 ], [ %14, %24 ], [ %14, %12 ], !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %33 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !1459
  %34 = icmp eq %struct.listNode* %33, null, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %34, label %35, label %12, !dbg !1458, !llvm.loop !1479

; <label>:35:                                     ; preds = %31, %8
  %36 = phi i32 [ 0, %8 ], [ %32, %31 ], !dbg !1481
  store i32 %36, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !1482, !tbaa !1483
  br label %37, !dbg !1484

; <label>:37:                                     ; preds = %0, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  ret void, !dbg !1484
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startBgsaveForReplication(i32) local_unnamed_addr #0 !dbg !1486 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.rdbSaveInfo, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1511, !tbaa !1512
  %6 = icmp eq i32 %5, 0, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  br i1 %6, label %7, label %9, !dbg !1514

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.listIter* %3 to i8*, !dbg !1515
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1515
  br label %14, !dbg !1516

; <label>:9:                                      ; preds = %1
  %10 = and i32 %0, 1, !dbg !1517
  %11 = icmp ne i32 %10, 0, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %12 = bitcast %struct.listIter* %3 to i8*, !dbg !1515
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !1515
  %13 = select i1 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), !dbg !1516
  br label %14, !dbg !1516

; <label>:14:                                     ; preds = %9, %7
  %15 = phi i8* [ %8, %7 ], [ %12, %9 ]
  %16 = phi i1 [ false, %7 ], [ %11, %9 ]
  %17 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), %7 ], [ %13, %9 ]
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* nonnull %17) #8, !dbg !1518
  %18 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !1519
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %18) #7, !dbg !1519
  %19 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #8, !dbg !1521
  %20 = icmp eq %struct.rdbSaveInfo* %19, null, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  br i1 %20, label %27, label %21, !dbg !1525

; <label>:21:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  br i1 %16, label %22, label %24, !dbg !1526

; <label>:22:                                     ; preds = %21
  %23 = call i32 @rdbSaveToSlavesSockets(%struct.rdbSaveInfo* nonnull %19) #8, !dbg !1528
  br label %28, !dbg !1531

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1532, !tbaa !1533
  %26 = call i32 @rdbSaveBackground(i8* %25, %struct.rdbSaveInfo* nonnull %19) #8, !dbg !1534
  br label %28

; <label>:27:                                     ; preds = %14
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br label %32, !dbg !1537

; <label>:28:                                     ; preds = %22, %24
  %29 = phi i1 [ true, %22 ], [ false, %24 ]
  %30 = phi i32 [ %23, %22 ], [ %26, %24 ], !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = icmp eq i32 %30, -1, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %31, label %32, label %54, !dbg !1537

; <label>:32:                                     ; preds = %27, %28
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1540
  %33 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1541, !tbaa !558
  call void @listRewind(%struct.list* %33, %struct.listIter* nonnull %3) #8, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %34 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1545
  %35 = icmp eq %struct.listNode* %34, null, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  br i1 %35, label %94, label %36, !dbg !1544

; <label>:36:                                     ; preds = %32, %51
  %37 = phi %struct.listNode* [ %52, %51 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.listNode, %struct.listNode* %37, i64 0, i32 2, !dbg !1547
  %39 = bitcast i8** %38 to %struct.client**, !dbg !1547
  %40 = load %struct.client*, %struct.client** %39, align 8, !dbg !1547, !tbaa !803
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i64 0, i32 23, !dbg !1549
  %42 = load i32, i32* %41, align 8, !dbg !1549, !tbaa !808
  %43 = icmp eq i32 %42, 6, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  br i1 %43, label %44, label %51, !dbg !1552

; <label>:44:                                     ; preds = %36
  store i32 0, i32* %41, align 8, !dbg !1553, !tbaa !808
  %45 = getelementptr inbounds %struct.client, %struct.client* %40, i64 0, i32 21, !dbg !1555
  %46 = load i32, i32* %45, align 8, !dbg !1556, !tbaa !1112
  %47 = and i32 %46, -2, !dbg !1556
  store i32 %47, i32* %45, align 8, !dbg !1556, !tbaa !1112
  %48 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1557, !tbaa !558
  call void @listDelNode(%struct.list* %48, %struct.listNode* nonnull %37) #8, !dbg !1558
  call void @addReplyError(%struct.client* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1559
  %49 = load i32, i32* %45, align 8, !dbg !1560, !tbaa !1112
  %50 = or i32 %49, 64, !dbg !1560
  store i32 %50, i32* %45, align 8, !dbg !1560, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  br label %51, !dbg !1561

; <label>:51:                                     ; preds = %44, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %52 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1545
  %53 = icmp eq %struct.listNode* %52, null, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  br i1 %53, label %94, label %36, !dbg !1544, !llvm.loop !1562

; <label>:54:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  br i1 %29, label %88, label %55, !dbg !1564

; <label>:55:                                     ; preds = %54
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1565, !tbaa !558
  call void @listRewind(%struct.list* %56, %struct.listIter* nonnull %3) #8, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  %57 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1568
  %58 = icmp eq %struct.listNode* %57, null, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %58, label %88, label %59, !dbg !1567

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  br label %61, !dbg !1567

; <label>:61:                                     ; preds = %59, %85
  %62 = phi %struct.listNode* [ %57, %59 ], [ %86, %85 ]
  %63 = getelementptr inbounds %struct.listNode, %struct.listNode* %62, i64 0, i32 2, !dbg !1569
  %64 = bitcast i8** %63 to %struct.client**, !dbg !1569
  %65 = load %struct.client*, %struct.client** %64, align 8, !dbg !1569, !tbaa !803
  %66 = getelementptr inbounds %struct.client, %struct.client* %65, i64 0, i32 23, !dbg !1571
  %67 = load i32, i32* %66, align 8, !dbg !1571, !tbaa !808
  %68 = icmp eq i32 %67, 6, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %68, label %69, label %85, !dbg !1573

; <label>:69:                                     ; preds = %61
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1574, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %60) #7, !dbg !1579
  %71 = getelementptr inbounds %struct.client, %struct.client* %65, i64 0, i32 33, !dbg !1580
  store i64 %70, i64* %71, align 8, !dbg !1581, !tbaa !1288
  store i32 7, i32* %66, align 8, !dbg !1582, !tbaa !808
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1583, !tbaa !775
  %72 = getelementptr inbounds %struct.client, %struct.client* %65, i64 0, i32 21, !dbg !1584
  %73 = load i32, i32* %72, align 8, !dbg !1584, !tbaa !1112
  %74 = and i32 %73, 65536, !dbg !1585
  %75 = icmp eq i32 %74, 0, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br i1 %75, label %76, label %84, !dbg !1586

; <label>:76:                                     ; preds = %69
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %60, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %70) #8, !dbg !1587
  %78 = getelementptr inbounds %struct.client, %struct.client* %65, i64 0, i32 1, !dbg !1589
  %79 = load i32, i32* %78, align 8, !dbg !1589, !tbaa !481
  %80 = sext i32 %77 to i64, !dbg !1590
  %81 = call i64 @write(i32 %79, i8* nonnull %60, i64 %80) #8, !dbg !1591
  %82 = icmp eq i64 %81, %80, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %82, label %84, label %83, !dbg !1593

; <label>:83:                                     ; preds = %76
  call void @freeClientAsync(%struct.client* nonnull %65) #8, !dbg !1594
  br label %84, !dbg !1595

; <label>:84:                                     ; preds = %69, %76, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %60) #7, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br label %85, !dbg !1598

; <label>:85:                                     ; preds = %84, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  %86 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1568
  %87 = icmp eq %struct.listNode* %86, null, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  br i1 %87, label %88, label %61, !dbg !1567, !llvm.loop !1599

; <label>:88:                                     ; preds = %85, %55, %54
  %89 = icmp eq i32 %30, 0, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %89, label %90, label %94, !dbg !1603

; <label>:90:                                     ; preds = %88
  %91 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1604, !tbaa !1607
  call void @dictEmpty(%struct.dict* %91, void (i8*)* null) #8, !dbg !1608
  %92 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1609, !tbaa !1610
  call void @listRelease(%struct.list* %92) #8, !dbg !1611
  %93 = call %struct.list* @listCreate() #8, !dbg !1612
  store %struct.list* %93, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1613, !tbaa !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br label %94, !dbg !1615

; <label>:94:                                     ; preds = %51, %88, %90, %32
  %95 = phi i32 [ -1, %32 ], [ %30, %90 ], [ %30, %88 ], [ -1, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %18) #7, !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %15) #7, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  ret i32 %95, !dbg !1617
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
define dso_local void @replicationScriptCacheFlush() local_unnamed_addr #0 !dbg !1605 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1618, !tbaa !1607
  tail call void @dictEmpty(%struct.dict* %1, void (i8*)* null) #8, !dbg !1619
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1620, !tbaa !1610
  tail call void @listRelease(%struct.list* %2) #8, !dbg !1621
  %3 = tail call %struct.list* @listCreate() #8, !dbg !1622
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1623, !tbaa !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  ret void, !dbg !1624
}

; Function Attrs: noredzone nounwind
define dso_local void @syncCommand(%struct.client*) local_unnamed_addr #0 !dbg !1625 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1643
  %5 = load i32, i32* %4, align 8, !dbg !1643, !tbaa !1112
  %6 = and i32 %5, 1, !dbg !1645
  %7 = icmp eq i32 %6, 0, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  br i1 %7, label %8, label %153, !dbg !1646

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1647, !tbaa !762
  %10 = icmp ne i8* %9, null, !dbg !1649
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !1650
  %12 = icmp ne i32 %11, 15, !dbg !1651
  %13 = and i1 %10, %12, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br i1 %13, label %14, label %16, !dbg !1652

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1653
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %15) #8, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  br label %153, !dbg !1656

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #8, !dbg !1657
  %18 = icmp eq i32 %17, 0, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  br i1 %18, label %20, label %19, !dbg !1659

; <label>:19:                                     ; preds = %16
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br label %153, !dbg !1662

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1663
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1664
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1665
  %23 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1665, !tbaa !1323
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1666, !tbaa !784
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1667
  %26 = load i8*, i8** %25, align 8, !dbg !1667, !tbaa !640
  %27 = tail call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !1668
  %28 = icmp eq i32 %27, 0, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %28, label %29, label %46, !dbg !1669

; <label>:29:                                     ; preds = %20
  %30 = tail call i32 @masterTryPartialResynchronization(%struct.client* nonnull %0) #10, !dbg !1670
  %31 = icmp eq i32 %30, 0, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  br i1 %31, label %32, label %35, !dbg !1672

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1673, !tbaa !1675
  %34 = add nsw i64 %33, 1, !dbg !1673
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1673, !tbaa !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br label %153, !dbg !1676

; <label>:35:                                     ; preds = %29
  %36 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1677, !tbaa !1323
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1, !dbg !1678
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !1678, !tbaa !784
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2, !dbg !1679
  %40 = load i8*, i8** %39, align 8, !dbg !1679, !tbaa !640
  %41 = load i8, i8* %40, align 1, !dbg !1681, !tbaa !470
  %42 = icmp eq i8 %41, 63, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br i1 %42, label %49, label %43, !dbg !1684

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1685, !tbaa !1686
  %45 = add nsw i64 %44, 1, !dbg !1685
  store i64 %45, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1685, !tbaa !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  br label %49, !dbg !1687

; <label>:46:                                     ; preds = %20
  %47 = load i32, i32* %4, align 8, !dbg !1688, !tbaa !1112
  %48 = or i32 %47, 65536, !dbg !1688
  store i32 %48, i32* %4, align 8, !dbg !1688, !tbaa !1112
  br label %49

; <label>:49:                                     ; preds = %43, %35, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1690, !tbaa !1691
  %51 = add nsw i64 %50, 1, !dbg !1690
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1690, !tbaa !1691
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1692
  store i32 6, i32* %52, align 8, !dbg !1693, !tbaa !808
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 214), align 8, !dbg !1694, !tbaa !1696
  %54 = icmp eq i32 %53, 0, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  br i1 %54, label %59, label %55, !dbg !1698

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1699
  %57 = load i32, i32* %56, align 8, !dbg !1699, !tbaa !481
  %58 = tail call i32 @anetDisableTcpNoDelay(i8* null, i32 %57) #8, !dbg !1700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br label %59, !dbg !1700

; <label>:59:                                     ; preds = %49, %55
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !1701
  store i32 -1, i32* %60, align 8, !dbg !1702, !tbaa !1703
  %61 = load i32, i32* %4, align 8, !dbg !1704, !tbaa !1112
  %62 = or i32 %61, 1, !dbg !1704
  store i32 %62, i32* %4, align 8, !dbg !1704, !tbaa !1112
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1705, !tbaa !558
  %64 = bitcast %struct.client* %0 to i8*, !dbg !1706
  %65 = tail call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %64) #8, !dbg !1707
  %66 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1708, !tbaa !558
  %67 = getelementptr inbounds %struct.list, %struct.list* %66, i64 0, i32 5, !dbg !1708
  %68 = load i64, i64* %67, align 8, !dbg !1708, !tbaa !559
  %69 = icmp eq i64 %68, 1, !dbg !1710
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1711
  %71 = icmp eq i8* %70, null, !dbg !1712
  %72 = and i1 %69, %71, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %72, label %73, label %83, !dbg !1713

; <label>:73:                                     ; preds = %59
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !1714
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1718, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1719
  %74 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !1720
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1723, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1724, !tbaa !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  %75 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1726, !tbaa !511
  %76 = icmp eq i8* %75, null, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br i1 %76, label %78, label %77, !dbg !1726

; <label>:77:                                     ; preds = %73
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #8, !dbg !1726
  tail call void @_exit(i32 1) #9, !dbg !1726
  unreachable

; <label>:78:                                     ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1728, !tbaa !518
  %80 = tail call i8* @zmalloc(i64 %79) #8, !dbg !1729
  store i8* %80, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1730, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !1731, !tbaa !522
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1732, !tbaa !524
  %82 = add nsw i64 %81, 1, !dbg !1733
  store i64 %82, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1734, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  br label %83, !dbg !1736

; <label>:83:                                     ; preds = %78, %59
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1737, !tbaa !1738
  %85 = icmp ne i32 %84, -1, !dbg !1739
  %86 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !1740
  %87 = icmp eq i32 %86, 1, !dbg !1741
  %88 = and i1 %85, %87, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  br i1 %88, label %89, label %129, !dbg !1742

; <label>:89:                                     ; preds = %83
  %90 = bitcast %struct.listIter* %3 to i8*, !dbg !1743
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1743
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1744, !tbaa !558
  call void @listRewind(%struct.list* %91, %struct.listIter* nonnull %3) #8, !dbg !1746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  br label %92, !dbg !1747

; <label>:92:                                     ; preds = %95, %89
  %93 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1748
  %94 = icmp eq %struct.listNode* %93, null, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1747
  br i1 %94, label %102, label %95, !dbg !1747

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.listNode, %struct.listNode* %93, i64 0, i32 2, !dbg !1750
  %97 = bitcast i8** %96 to %struct.client**, !dbg !1750
  %98 = load %struct.client*, %struct.client** %97, align 8, !dbg !1750, !tbaa !803
  %99 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 23, !dbg !1753
  %100 = load i32, i32* %99, align 8, !dbg !1753, !tbaa !808
  %101 = icmp eq i32 %100, 7, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  br i1 %101, label %103, label %92, !dbg !1756, !llvm.loop !1757

; <label>:102:                                    ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  br label %127

; <label>:103:                                    ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  %104 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1760
  %105 = load i32, i32* %104, align 8, !dbg !1760, !tbaa !1408
  %106 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 37, !dbg !1761
  %107 = load i32, i32* %106, align 8, !dbg !1761, !tbaa !1408
  %108 = and i32 %107, %105, !dbg !1762
  %109 = icmp eq i32 %108, %107, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br i1 %109, label %110, label %127, !dbg !1764

; <label>:110:                                    ; preds = %103
  call void @copyClientOutputBuffer(%struct.client* nonnull %0, %struct.client* nonnull %98) #8, !dbg !1765
  %111 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 33, !dbg !1766
  %112 = load i64, i64* %111, align 8, !dbg !1766, !tbaa !1288
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !1769
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %113) #7, !dbg !1769
  %114 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1770
  store i64 %112, i64* %114, align 8, !dbg !1771, !tbaa !1288
  store i32 7, i32* %52, align 8, !dbg !1772, !tbaa !808
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1773, !tbaa !775
  %115 = load i32, i32* %4, align 8, !dbg !1774, !tbaa !1112
  %116 = and i32 %115, 65536, !dbg !1775
  %117 = icmp eq i32 %116, 0, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br i1 %117, label %118, label %126, !dbg !1776

; <label>:118:                                    ; preds = %110
  %119 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %113, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %112) #8, !dbg !1777
  %120 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1779
  %121 = load i32, i32* %120, align 8, !dbg !1779, !tbaa !481
  %122 = sext i32 %119 to i64, !dbg !1780
  %123 = call i64 @write(i32 %121, i8* nonnull %113, i64 %122) #8, !dbg !1781
  %124 = icmp eq i64 %123, %122, !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  br i1 %124, label %126, label %125, !dbg !1783

; <label>:125:                                    ; preds = %118
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1784
  br label %126, !dbg !1785

; <label>:126:                                    ; preds = %110, %118, %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1786
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %113) #7, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !1788
  br label %128, !dbg !1789

; <label>:127:                                    ; preds = %102, %103
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1790
  br label %128

; <label>:128:                                    ; preds = %127, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  br label %153, !dbg !1793

; <label>:129:                                    ; preds = %83
  %130 = icmp eq i32 %86, 2, !dbg !1794
  %131 = and i1 %85, %130, !dbg !1796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  br i1 %131, label %132, label %133, !dbg !1796

; <label>:132:                                    ; preds = %129
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1799
  br label %153, !dbg !1799

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1800, !tbaa !1512
  %135 = icmp eq i32 %134, 0, !dbg !1803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br i1 %135, label %145, label %136, !dbg !1804

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1805
  %138 = load i32, i32* %137, align 8, !dbg !1805, !tbaa !1408
  %139 = and i32 %138, 1, !dbg !1806
  %140 = icmp eq i32 %139, 0, !dbg !1806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  br i1 %140, label %145, label %141, !dbg !1807

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !1808, !tbaa !1811
  %143 = icmp eq i32 %142, 0, !dbg !1812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  br i1 %143, label %153, label %144, !dbg !1813

; <label>:144:                                    ; preds = %141
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !1814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br label %153, !dbg !1814

; <label>:145:                                    ; preds = %136, %133
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1815, !tbaa !1818
  %147 = icmp eq i32 %146, -1, !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  br i1 %147, label %148, label %152, !dbg !1820

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1821
  %150 = load i32, i32* %149, align 8, !dbg !1821, !tbaa !1408
  %151 = tail call i32 @startBgsaveForReplication(i32 %150) #10, !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  br label %153, !dbg !1824

; <label>:152:                                    ; preds = %145
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %153

; <label>:153:                                    ; preds = %141, %1, %128, %144, %152, %148, %132, %32, %19, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  ret void, !dbg !1827
}

; Function Attrs: noredzone
declare dso_local i32 @clientHasPendingReplies(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @changeReplicationId() local_unnamed_addr #0 !dbg !1715 {
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !1828
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1829, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  ret void, !dbg !1830
}

; Function Attrs: noredzone nounwind
define dso_local void @clearReplicationId2() local_unnamed_addr #0 !dbg !1721 {
  %1 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !1831
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1832, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1833, !tbaa !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  ret void, !dbg !1834
}

; Function Attrs: noredzone
declare dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replconfCommand(%struct.client*) local_unnamed_addr #0 !dbg !1835 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1853
  %5 = load i32, i32* %4, align 8, !dbg !1853, !tbaa !1855
  %6 = and i32 %5, 1, !dbg !1856
  %7 = icmp eq i32 %6, 0, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  br i1 %7, label %8, label %10, !dbg !1857

; <label>:8:                                      ; preds = %1
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1858, !tbaa !1860
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %9) #8, !dbg !1862
  br label %199, !dbg !1863

; <label>:10:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  %11 = icmp sgt i32 %5, 1, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  br i1 %11, label %12, label %197, !dbg !1867

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %14 = bitcast i64* %2 to i8*
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 36, i64 0
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37
  br label %18, !dbg !1867

; <label>:18:                                     ; preds = %12, %192
  %19 = phi i64 [ 1, %12 ], [ %193, %192 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !1868, !tbaa !1323
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !1869
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1869, !tbaa !784
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1870
  %24 = load i8*, i8** %23, align 8, !dbg !1870, !tbaa !640
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !1871
  %26 = icmp eq i32 %25, 0, !dbg !1871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1872
  br i1 %26, label %27, label %37, !dbg !1872

; <label>:27:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1873
  %28 = add nuw nsw i64 %19, 1, !dbg !1874
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %28, !dbg !1876
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !1876, !tbaa !784
  %31 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %30, i64* nonnull %2, i8* null) #8, !dbg !1878
  %32 = icmp eq i32 %31, 0, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %32, label %34, label %33, !dbg !1880

; <label>:33:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1882
  br label %199

; <label>:34:                                     ; preds = %27
  %35 = load i64, i64* %2, align 8, !dbg !1883, !tbaa !678
  %36 = trunc i64 %35 to i32, !dbg !1883
  store i32 %36, i32* %15, align 4, !dbg !1884, !tbaa !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1882
  br label %191

; <label>:37:                                     ; preds = %18
  %38 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0)) #11, !dbg !1885
  %39 = icmp eq i32 %38, 0, !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  br i1 %39, label %40, label %119, !dbg !1886

; <label>:40:                                     ; preds = %37
  %41 = add nuw nsw i64 %19, 1, !dbg !1887
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %41, !dbg !1888
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1888, !tbaa !784
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1889
  %45 = load i8*, i8** %44, align 8, !dbg !1889, !tbaa !640
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1894
  %47 = load i8, i8* %46, align 1, !dbg !1894, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %48 = trunc i8 %47 to i3, !dbg !1896
  switch i3 %48, label %67 [
    i3 -4, label %63
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
  ], !dbg !1896

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1897
  %51 = load i8, i8* %50, align 1, !dbg !1898, !tbaa !470
  %52 = zext i8 %51 to i64, !dbg !1897
  br label %68, !dbg !1899

; <label>:53:                                     ; preds = %40
  %54 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1900
  %55 = bitcast i8* %54 to i16*, !dbg !1901
  %56 = load i16, i16* %55, align 1, !dbg !1901, !tbaa !669
  %57 = zext i16 %56 to i64, !dbg !1900
  br label %68, !dbg !1902

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1903
  %60 = bitcast i8* %59 to i32*, !dbg !1904
  %61 = load i32, i32* %60, align 1, !dbg !1904, !tbaa !674
  %62 = zext i32 %61 to i64, !dbg !1903
  br label %68, !dbg !1905

; <label>:63:                                     ; preds = %40
  %64 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1906
  %65 = bitcast i8* %64 to i64*, !dbg !1907
  %66 = load i64, i64* %65, align 1, !dbg !1907, !tbaa !678
  br label %68, !dbg !1908

; <label>:67:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  br label %71, !dbg !1911

; <label>:68:                                     ; preds = %49, %53, %58, %63
  %69 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %70 = icmp ult i64 %69, 46, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  br i1 %70, label %71, label %97, !dbg !1911

; <label>:71:                                     ; preds = %67, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  switch i3 %48, label %93 [
    i3 0, label %72
    i3 1, label %75
    i3 2, label %79
    i3 3, label %84
    i3 -4, label %89
  ], !dbg !1918

; <label>:72:                                     ; preds = %71
  %73 = lshr i8 %47, 3, !dbg !1919
  %74 = zext i8 %73 to i64, !dbg !1919
  br label %93, !dbg !1920

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1921
  %77 = load i8, i8* %76, align 1, !dbg !1922, !tbaa !470
  %78 = zext i8 %77 to i64, !dbg !1921
  br label %93, !dbg !1923

; <label>:79:                                     ; preds = %71
  %80 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1924
  %81 = bitcast i8* %80 to i16*, !dbg !1925
  %82 = load i16, i16* %81, align 1, !dbg !1925, !tbaa !669
  %83 = zext i16 %82 to i64, !dbg !1924
  br label %93, !dbg !1926

; <label>:84:                                     ; preds = %71
  %85 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1927
  %86 = bitcast i8* %85 to i32*, !dbg !1928
  %87 = load i32, i32* %86, align 1, !dbg !1928, !tbaa !674
  %88 = zext i32 %87 to i64, !dbg !1927
  br label %93, !dbg !1929

; <label>:89:                                     ; preds = %71
  %90 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1930
  %91 = bitcast i8* %90 to i64*, !dbg !1931
  %92 = load i64, i64* %91, align 1, !dbg !1931, !tbaa !678
  br label %93, !dbg !1932

; <label>:93:                                     ; preds = %71, %72, %75, %79, %84, %89
  %94 = phi i64 [ %92, %89 ], [ %88, %84 ], [ %83, %79 ], [ %78, %75 ], [ %74, %72 ], [ 0, %71 ], !dbg !1933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  %95 = add i64 %94, 1, !dbg !1936
  %96 = call i8* @memcpy(i8* nonnull %16, i8* %45, i64 %95) #8, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  br label %191

; <label>:97:                                     ; preds = %68
  %98 = trunc i8 %47 to i3, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  switch i3 %98, label %117 [
    i3 -4, label %113
    i3 1, label %99
    i3 2, label %103
    i3 3, label %108
  ], !dbg !1943

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1944
  %101 = load i8, i8* %100, align 1, !dbg !1945, !tbaa !470
  %102 = zext i8 %101 to i64, !dbg !1944
  br label %117, !dbg !1946

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1947
  %105 = bitcast i8* %104 to i16*, !dbg !1948
  %106 = load i16, i16* %105, align 1, !dbg !1948, !tbaa !669
  %107 = zext i16 %106 to i64, !dbg !1947
  br label %117, !dbg !1949

; <label>:108:                                    ; preds = %97
  %109 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1950
  %110 = bitcast i8* %109 to i32*, !dbg !1951
  %111 = load i32, i32* %110, align 1, !dbg !1951, !tbaa !674
  %112 = zext i32 %111 to i64, !dbg !1950
  br label %117, !dbg !1952

; <label>:113:                                    ; preds = %97
  %114 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1953
  %115 = bitcast i8* %114 to i64*, !dbg !1954
  %116 = load i64, i64* %115, align 1, !dbg !1954, !tbaa !678
  br label %117, !dbg !1955

; <label>:117:                                    ; preds = %97, %99, %103, %108, %113
  %118 = phi i64 [ %116, %113 ], [ %112, %108 ], [ %107, %103 ], [ %102, %99 ], [ 0, %97 ], !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.51, i64 0, i64 0), i64 %118) #8, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  br label %199

; <label>:119:                                    ; preds = %37
  %120 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !1961
  %121 = icmp eq i32 %120, 0, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  br i1 %121, label %122, label %139, !dbg !1962

; <label>:122:                                    ; preds = %119
  %123 = add nuw nsw i64 %19, 1, !dbg !1963
  %124 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %123, !dbg !1966
  %125 = load %struct.redisObject*, %struct.redisObject** %124, align 8, !dbg !1966, !tbaa !784
  %126 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %125, i64 0, i32 2, !dbg !1967
  %127 = load i8*, i8** %126, align 8, !dbg !1967, !tbaa !640
  %128 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #11, !dbg !1968
  %129 = icmp eq i32 %128, 0, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1969
  br i1 %129, label %130, label %133, !dbg !1969

; <label>:130:                                    ; preds = %122
  %131 = load i32, i32* %17, align 8, !dbg !1970, !tbaa !1408
  %132 = or i32 %131, 1, !dbg !1970
  store i32 %132, i32* %17, align 8, !dbg !1970, !tbaa !1408
  br label %191, !dbg !1971

; <label>:133:                                    ; preds = %122
  %134 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #11, !dbg !1972
  %135 = icmp eq i32 %134, 0, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  br i1 %135, label %136, label %192, !dbg !1974

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %17, align 8, !dbg !1975, !tbaa !1408
  %138 = or i32 %137, 2, !dbg !1975
  store i32 %138, i32* %17, align 8, !dbg !1975, !tbaa !1408
  br label %191, !dbg !1976

; <label>:139:                                    ; preds = %119
  %140 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #11, !dbg !1977
  %141 = icmp eq i32 %140, 0, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br i1 %141, label %142, label %173, !dbg !1978

; <label>:142:                                    ; preds = %139
  %143 = bitcast i64* %3 to i8*, !dbg !1979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %143) #7, !dbg !1979
  %144 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1980
  %145 = load i32, i32* %144, align 8, !dbg !1980, !tbaa !1112
  %146 = and i32 %145, 1, !dbg !1982
  %147 = icmp eq i32 %146, 0, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  br i1 %147, label %172, label %148, !dbg !1983

; <label>:148:                                    ; preds = %142
  %149 = add i64 %19, 1, !dbg !1984
  %150 = and i64 %149, 4294967295, !dbg !1986
  %151 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %150, !dbg !1986
  %152 = load %struct.redisObject*, %struct.redisObject** %151, align 8, !dbg !1986, !tbaa !784
  %153 = call i32 @getLongLongFromObject(%struct.redisObject* %152, i64* nonnull %3) #8, !dbg !1988
  %154 = icmp eq i32 %153, 0, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  br i1 %154, label %155, label %172, !dbg !1990

; <label>:155:                                    ; preds = %148
  %156 = load i64, i64* %3, align 8, !dbg !1991, !tbaa !522
  %157 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 31, !dbg !1993
  %158 = load i64, i64* %157, align 8, !dbg !1993, !tbaa !1994
  %159 = icmp sgt i64 %156, %158, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %159, label %160, label %161, !dbg !1996

; <label>:160:                                    ; preds = %155
  store i64 %156, i64* %157, align 8, !dbg !1997, !tbaa !1994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1998
  br label %161, !dbg !1998

; <label>:161:                                    ; preds = %160, %155
  %162 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1999, !tbaa !1396
  %163 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !2000
  store i64 %162, i64* %163, align 8, !dbg !2001, !tbaa !1399
  %164 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2002
  %165 = load i32, i32* %164, align 4, !dbg !2002, !tbaa !1402
  %166 = icmp eq i32 %165, 0, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %166, label %172, label %167, !dbg !2005

; <label>:167:                                    ; preds = %161
  %168 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2006
  %169 = load i32, i32* %168, align 8, !dbg !2006, !tbaa !808
  %170 = icmp eq i32 %169, 9, !dbg !2007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  br i1 %170, label %171, label %172, !dbg !2008

; <label>:171:                                    ; preds = %167
  call void @putSlaveOnline(%struct.client* nonnull %0) #10, !dbg !2009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  br label %172, !dbg !2009

; <label>:172:                                    ; preds = %167, %171, %161, %148, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %143) #7, !dbg !2011
  br label %199

; <label>:173:                                    ; preds = %139
  %174 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #11, !dbg !2012
  %175 = icmp eq i32 %174, 0, !dbg !2012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  br i1 %175, label %176, label %190, !dbg !2014

; <label>:176:                                    ; preds = %173
  %177 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2015, !tbaa !762
  %178 = icmp ne i8* %177, null, !dbg !2018
  %179 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2019
  %180 = icmp ne %struct.client* %179, null, !dbg !2020
  %181 = and i1 %178, %180, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  br i1 %181, label %182, label %199, !dbg !2021

; <label>:182:                                    ; preds = %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  %183 = getelementptr inbounds %struct.client, %struct.client* %179, i64 0, i32 21, !dbg !2028
  %184 = load i32, i32* %183, align 8, !dbg !2031, !tbaa !1112
  %185 = or i32 %184, 8192, !dbg !2031
  store i32 %185, i32* %183, align 8, !dbg !2031, !tbaa !1112
  call void @addReplyMultiBulkLen(%struct.client* nonnull %179, i64 3) #8, !dbg !2032
  call void @addReplyBulkCString(%struct.client* nonnull %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !2033
  call void @addReplyBulkCString(%struct.client* nonnull %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !2034
  %186 = getelementptr inbounds %struct.client, %struct.client* %179, i64 0, i32 30, !dbg !2035
  %187 = load i64, i64* %186, align 8, !dbg !2035, !tbaa !2036
  call void @addReplyBulkLongLong(%struct.client* nonnull %179, i64 %187) #8, !dbg !2037
  %188 = load i32, i32* %183, align 8, !dbg !2038, !tbaa !1112
  %189 = and i32 %188, -8193, !dbg !2038
  store i32 %189, i32* %183, align 8, !dbg !2038, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  br label %199, !dbg !2041

; <label>:190:                                    ; preds = %173
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i8* %24) #8, !dbg !2042
  br label %199, !dbg !2044

; <label>:191:                                    ; preds = %130, %136, %34, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %192, !dbg !2045

; <label>:192:                                    ; preds = %191, %133
  %193 = add nuw i64 %19, 2, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  %194 = load i32, i32* %4, align 8, !dbg !2047, !tbaa !1855
  %195 = trunc i64 %193 to i32, !dbg !1866
  %196 = icmp sgt i32 %194, %195, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  br i1 %196, label %18, label %197, !dbg !1867, !llvm.loop !2048

; <label>:197:                                    ; preds = %192, %10
  %198 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2050, !tbaa !2051
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %198) #8, !dbg !2052
  br label %199, !dbg !2053

; <label>:199:                                    ; preds = %176, %182, %117, %33, %197, %190, %172, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  ret void, !dbg !2053
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @putSlaveOnline(%struct.client*) local_unnamed_addr #0 !dbg !2054 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2058
  store i32 9, i32* %2, align 8, !dbg !2059, !tbaa !808
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2060
  store i32 0, i32* %3, align 4, !dbg !2061, !tbaa !1402
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2062, !tbaa !1396
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !2063
  store i64 %4, i64* %5, align 8, !dbg !2064, !tbaa !1399
  %6 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2065, !tbaa !2067
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2068
  %8 = load i32, i32* %7, align 8, !dbg !2068, !tbaa !481
  %9 = bitcast %struct.client* %0 to i8*, !dbg !2069
  %10 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %6, i32 %8, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %9) #8, !dbg !2070
  %11 = icmp eq i32 %10, -1, !dbg !2071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  br i1 %11, label %12, label %16, !dbg !2072

; <label>:12:                                     ; preds = %1
  %13 = tail call i32* @__errno() #8, !dbg !2073
  %14 = load i32, i32* %13, align 4, !dbg !2073, !tbaa !674
  %15 = tail call i8* @strerror(i32 %14) #8, !dbg !2075
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.58, i64 0, i64 0), i8* %15) #8, !dbg !2076
  tail call void @freeClient(%struct.client* nonnull %0) #8, !dbg !2077
  br label %18, !dbg !2078

; <label>:16:                                     ; preds = %1
  tail call void @refreshGoodSlavesCount() #10, !dbg !2079
  %17 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !2080
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !2081
  br label %18, !dbg !2082

; <label>:18:                                     ; preds = %16, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  ret void, !dbg !2082
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendAck() local_unnamed_addr #0 !dbg !2023 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2084, !tbaa !2085
  %2 = icmp eq %struct.client* %1, null, !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  br i1 %2, label %11, label %3, !dbg !2088

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !2089
  %5 = load i32, i32* %4, align 8, !dbg !2090, !tbaa !1112
  %6 = or i32 %5, 8192, !dbg !2090
  store i32 %6, i32* %4, align 8, !dbg !2090, !tbaa !1112
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %1, i64 3) #8, !dbg !2091
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !2092
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !2093
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 30, !dbg !2094
  %8 = load i64, i64* %7, align 8, !dbg !2094, !tbaa !2036
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %1, i64 %8) #8, !dbg !2095
  %9 = load i32, i32* %4, align 8, !dbg !2096, !tbaa !1112
  %10 = and i32 %9, -8193, !dbg !2096
  store i32 %10, i32* %4, align 8, !dbg !2096, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  br label %11, !dbg !2097

; <label>:11:                                     ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  ret void, !dbg !2098
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
define dso_local void @sendBulkToSlave(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !2099 {
  %5 = alloca [16384 x i8], align 16
  %6 = bitcast i8* %2 to %struct.client*, !dbg !2113
  %7 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i64 0, i64 0, !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2115
  %8 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !2117
  %9 = bitcast i8* %8 to i8**, !dbg !2117
  %10 = load i8*, i8** %9, align 8, !dbg !2117, !tbaa !2119
  %11 = icmp eq i8* %10, null, !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  br i1 %11, label %79, label %12, !dbg !2121

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !2125
  %14 = load i8, i8* %13, align 1, !dbg !2125, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  %15 = trunc i8 %14 to i3, !dbg !2127
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !2127

; <label>:16:                                     ; preds = %12
  %17 = lshr i8 %14, 3, !dbg !2128
  %18 = zext i8 %17 to i64, !dbg !2128
  br label %37, !dbg !2129

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !2130
  %21 = load i8, i8* %20, align 1, !dbg !2131, !tbaa !470
  %22 = zext i8 %21 to i64, !dbg !2130
  br label %37, !dbg !2132

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !2133
  %25 = bitcast i8* %24 to i16*, !dbg !2134
  %26 = load i16, i16* %25, align 1, !dbg !2134, !tbaa !669
  %27 = zext i16 %26 to i64, !dbg !2133
  br label %37, !dbg !2135

; <label>:28:                                     ; preds = %12
  %29 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2136
  %30 = bitcast i8* %29 to i32*, !dbg !2137
  %31 = load i32, i32* %30, align 1, !dbg !2137, !tbaa !674
  %32 = zext i32 %31 to i64, !dbg !2136
  br label %37, !dbg !2138

; <label>:33:                                     ; preds = %12
  %34 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !2139
  %35 = bitcast i8* %34 to i64*, !dbg !2140
  %36 = load i64, i64* %35, align 1, !dbg !2140, !tbaa !678
  br label %37, !dbg !2141

; <label>:37:                                     ; preds = %12, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %12 ], !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2144
  %39 = tail call i64 @write(i32 %1, i8* nonnull %10, i64 %38) #8, !dbg !2145
  %40 = icmp eq i64 %39, -1, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  br i1 %40, label %41, label %45, !dbg !2149

; <label>:41:                                     ; preds = %37
  %42 = tail call i32* @__errno() #8, !dbg !2150
  %43 = load i32, i32* %42, align 4, !dbg !2150, !tbaa !674
  %44 = tail call i8* @strerror(i32 %43) #8, !dbg !2152
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* %44) #8, !dbg !2153
  tail call void @freeClient(%struct.client* %6) #8, !dbg !2154
  br label %125, !dbg !2155

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2156, !tbaa !2157
  %47 = add nsw i64 %46, %39, !dbg !2156
  store i64 %47, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2156, !tbaa !2157
  %48 = load i8*, i8** %9, align 8, !dbg !2158, !tbaa !2119
  tail call void @sdsrange(i8* %48, i64 %39, i64 -1) #8, !dbg !2159
  %49 = load i8*, i8** %9, align 8, !dbg !2160, !tbaa !2119
  %50 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !2164
  %51 = load i8, i8* %50, align 1, !dbg !2164, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  %52 = trunc i8 %51 to i3, !dbg !2166
  switch i3 %52, label %74 [
    i3 0, label %53
    i3 1, label %56
    i3 2, label %60
    i3 3, label %65
    i3 -4, label %70
  ], !dbg !2166

; <label>:53:                                     ; preds = %45
  %54 = lshr i8 %51, 3, !dbg !2167
  %55 = zext i8 %54 to i64, !dbg !2167
  br label %75, !dbg !2168

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !2169
  %58 = load i8, i8* %57, align 1, !dbg !2170, !tbaa !470
  %59 = zext i8 %58 to i64, !dbg !2169
  br label %75, !dbg !2171

; <label>:60:                                     ; preds = %45
  %61 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !2172
  %62 = bitcast i8* %61 to i16*, !dbg !2173
  %63 = load i16, i16* %62, align 1, !dbg !2173, !tbaa !669
  %64 = zext i16 %63 to i64, !dbg !2172
  br label %75, !dbg !2174

; <label>:65:                                     ; preds = %45
  %66 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !2175
  %67 = bitcast i8* %66 to i32*, !dbg !2176
  %68 = load i32, i32* %67, align 1, !dbg !2176, !tbaa !674
  %69 = zext i32 %68 to i64, !dbg !2175
  br label %75, !dbg !2177

; <label>:70:                                     ; preds = %45
  %71 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !2178
  %72 = bitcast i8* %71 to i64*, !dbg !2179
  %73 = load i64, i64* %72, align 1, !dbg !2179, !tbaa !678
  br label %75, !dbg !2180

; <label>:74:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br label %78, !dbg !2183

; <label>:75:                                     ; preds = %53, %56, %60, %65, %70
  %76 = phi i64 [ %73, %70 ], [ %69, %65 ], [ %64, %60 ], [ %59, %56 ], [ %55, %53 ], !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  %77 = icmp eq i64 %76, 0, !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br i1 %77, label %78, label %125, !dbg !2183

; <label>:78:                                     ; preds = %74, %75
  tail call void @sdsfree(i8* %49) #8, !dbg !2187
  store i8* null, i8** %9, align 8, !dbg !2189, !tbaa !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  br label %79, !dbg !2190

; <label>:79:                                     ; preds = %4, %78
  %80 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !2191
  %81 = bitcast i8* %80 to i32*, !dbg !2191
  %82 = load i32, i32* %81, align 8, !dbg !2191, !tbaa !1703
  %83 = getelementptr inbounds i8, i8* %2, i64 184, !dbg !2192
  %84 = bitcast i8* %83 to i64*, !dbg !2192
  %85 = load i64, i64* %84, align 8, !dbg !2192, !tbaa !2193
  %86 = tail call i64 @lseek(i32 %82, i64 %85, i32 0) #8, !dbg !2194
  %87 = load i32, i32* %81, align 8, !dbg !2195, !tbaa !1703
  %88 = call i64 @read(i32 %87, i8* nonnull %7, i64 16384) #8, !dbg !2196
  %89 = icmp slt i64 %88, 1, !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  br i1 %89, label %90, label %98, !dbg !2200

; <label>:90:                                     ; preds = %79
  %91 = icmp eq i64 %88, 0, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br i1 %91, label %96, label %92, !dbg !2203

; <label>:92:                                     ; preds = %90
  %93 = call i32* @__errno() #8, !dbg !2204
  %94 = load i32, i32* %93, align 4, !dbg !2204, !tbaa !674
  %95 = call i8* @strerror(i32 %94) #8, !dbg !2205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br label %96, !dbg !2203

; <label>:96:                                     ; preds = %90, %92
  %97 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), %90 ], !dbg !2203
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* %97) #8, !dbg !2206
  call void @freeClient(%struct.client* nonnull %6) #8, !dbg !2207
  br label %125, !dbg !2208

; <label>:98:                                     ; preds = %79
  %99 = call i64 @write(i32 %1, i8* nonnull %7, i64 %88) #8, !dbg !2209
  %100 = icmp eq i64 %99, -1, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %100, label %101, label %109, !dbg !2212

; <label>:101:                                    ; preds = %98
  %102 = call i32* @__errno() #8, !dbg !2213
  %103 = load i32, i32* %102, align 4, !dbg !2213, !tbaa !674
  %104 = icmp eq i32 %103, 11, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %104, label %125, label %105, !dbg !2217

; <label>:105:                                    ; preds = %101
  %106 = call i32* @__errno() #8, !dbg !2218
  %107 = load i32, i32* %106, align 4, !dbg !2218, !tbaa !674
  %108 = call i8* @strerror(i32 %107) #8, !dbg !2220
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0), i8* %108) #8, !dbg !2221
  call void @freeClient(%struct.client* nonnull %6) #8, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  br label %125, !dbg !2223

; <label>:109:                                    ; preds = %98
  %110 = load i64, i64* %84, align 8, !dbg !2224, !tbaa !2193
  %111 = add nsw i64 %110, %99, !dbg !2224
  store i64 %111, i64* %84, align 8, !dbg !2224, !tbaa !2193
  %112 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2225, !tbaa !2157
  %113 = add nsw i64 %112, %99, !dbg !2225
  store i64 %113, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2225, !tbaa !2157
  %114 = getelementptr inbounds i8, i8* %2, i64 192, !dbg !2226
  %115 = bitcast i8* %114 to i64*, !dbg !2226
  %116 = load i64, i64* %115, align 8, !dbg !2226, !tbaa !2228
  %117 = icmp eq i64 %111, %116, !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %117, label %118, label %125, !dbg !2230

; <label>:118:                                    ; preds = %109
  %119 = load i32, i32* %81, align 8, !dbg !2231, !tbaa !1703
  %120 = call i32 @close(i32 %119) #8, !dbg !2233
  store i32 -1, i32* %81, align 8, !dbg !2234, !tbaa !1703
  %121 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2235, !tbaa !2067
  %122 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2236
  %123 = bitcast i8* %122 to i32*, !dbg !2236
  %124 = load i32, i32* %123, align 8, !dbg !2236, !tbaa !481
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %121, i32 %124, i32 2) #8, !dbg !2237
  call void @putSlaveOnline(%struct.client* nonnull %6) #10, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2239
  br label %125, !dbg !2239

; <label>:125:                                    ; preds = %109, %118, %105, %101, %75, %96, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  ret void, !dbg !2241
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
define dso_local void @updateSlavesWaitingBgsave(i32, i32) local_unnamed_addr #0 !dbg !2242 {
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.stat, align 8
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !2299
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2299
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2300, !tbaa !558
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #8, !dbg !2302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !2304
  %8 = icmp eq %struct.listNode* %7, null, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  br i1 %8, label %89, label %9, !dbg !2303

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.stat* %4 to i8*
  %11 = icmp eq i32 %1, 2
  %12 = icmp eq i32 %0, 0
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 7
  br label %14, !dbg !2303

; <label>:14:                                     ; preds = %9, %80
  %15 = phi %struct.listNode* [ %7, %9 ], [ %83, %80 ]
  %16 = phi i32 [ 0, %9 ], [ %82, %80 ]
  %17 = phi i32 [ -1, %9 ], [ %81, %80 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !2306
  %19 = load i8*, i8** %18, align 8, !dbg !2306, !tbaa !803
  %20 = bitcast i8* %19 to %struct.client*, !dbg !2307
  %21 = getelementptr inbounds i8, i8* %19, i64 168, !dbg !2309
  %22 = bitcast i8* %21 to i32*, !dbg !2309
  %23 = load i32, i32* %22, align 8, !dbg !2309, !tbaa !808
  %24 = icmp eq i32 %23, 6, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  br i1 %24, label %25, label %30, !dbg !2311

; <label>:25:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  %26 = getelementptr inbounds i8, i8* %19, i64 344, !dbg !2314
  %27 = bitcast i8* %26 to i32*, !dbg !2314
  %28 = load i32, i32* %27, align 8, !dbg !2314, !tbaa !1408
  %29 = and i32 %28, %17, !dbg !2315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  br label %77, !dbg !2316

; <label>:30:                                     ; preds = %14
  %31 = icmp eq i32 %23, 7, !dbg !2317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  br i1 %31, label %32, label %80, !dbg !2318

; <label>:32:                                     ; preds = %30
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  br i1 %11, label %33, label %40, !dbg !2320

; <label>:33:                                     ; preds = %32
  %34 = call i8* @replicationGetSlaveName(%struct.client* %20) #10, !dbg !2321
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !2324
  store i32 9, i32* %22, align 8, !dbg !2325, !tbaa !808
  %35 = getelementptr inbounds i8, i8* %19, i64 172, !dbg !2326
  %36 = bitcast i8* %35 to i32*, !dbg !2326
  store i32 1, i32* %36, align 4, !dbg !2327, !tbaa !1402
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2328, !tbaa !1396
  %38 = getelementptr inbounds i8, i8* %19, i64 232, !dbg !2329
  %39 = bitcast i8* %38 to i64*, !dbg !2329
  store i64 %37, i64* %39, align 8, !dbg !2330, !tbaa !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  br label %75, !dbg !2331

; <label>:40:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br i1 %12, label %42, label %41, !dbg !2332

; <label>:41:                                     ; preds = %40
  call void @freeClient(%struct.client* %20) #8, !dbg !2334
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2337
  br label %76, !dbg !2338, !llvm.loop !2339

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2341, !tbaa !1533
  %44 = call i32 (i8*, i32, ...) @open(i8* %43, i32 0) #8, !dbg !2343
  %45 = getelementptr inbounds i8, i8* %19, i64 176, !dbg !2344
  %46 = bitcast i8* %45 to i32*, !dbg !2344
  store i32 %44, i32* %46, align 8, !dbg !2345, !tbaa !1703
  %47 = icmp eq i32 %44, -1, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %47, label %51, label %48, !dbg !2347

; <label>:48:                                     ; preds = %42
  %49 = call i32 @fstat(i32 %44, %struct.stat* nonnull %4) #8, !dbg !2349
  %50 = icmp eq i32 %49, -1, !dbg !2350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2351
  br i1 %50, label %51, label %55, !dbg !2351

; <label>:51:                                     ; preds = %48, %42
  call void @freeClient(%struct.client* nonnull %20) #8, !dbg !2352
  %52 = call i32* @__errno() #8, !dbg !2354
  %53 = load i32, i32* %52, align 4, !dbg !2354, !tbaa !674
  %54 = call i8* @strerror(i32 %53) #8, !dbg !2355
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.66, i64 0, i64 0), i8* %54) #8, !dbg !2356
  br label %76, !dbg !2357, !llvm.loop !2339

; <label>:55:                                     ; preds = %48
  %56 = getelementptr inbounds i8, i8* %19, i64 184, !dbg !2358
  %57 = bitcast i8* %56 to i64*, !dbg !2358
  store i64 0, i64* %57, align 8, !dbg !2359, !tbaa !2193
  %58 = load i64, i64* %13, align 8, !dbg !2360, !tbaa !2361
  %59 = getelementptr inbounds i8, i8* %19, i64 192, !dbg !2364
  %60 = bitcast i8* %59 to i64*, !dbg !2364
  store i64 %58, i64* %60, align 8, !dbg !2365, !tbaa !2228
  store i32 8, i32* %22, align 8, !dbg !2366, !tbaa !808
  %61 = call i8* @sdsempty() #8, !dbg !2367
  %62 = load i64, i64* %60, align 8, !dbg !2368, !tbaa !2228
  %63 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i64 %62) #8, !dbg !2369
  %64 = getelementptr inbounds i8, i8* %19, i64 200, !dbg !2370
  %65 = bitcast i8* %64 to i8**, !dbg !2370
  store i8* %63, i8** %65, align 8, !dbg !2371, !tbaa !2119
  %66 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2372, !tbaa !2067
  %67 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2373
  %68 = bitcast i8* %67 to i32*, !dbg !2373
  %69 = load i32, i32* %68, align 8, !dbg !2373, !tbaa !481
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %66, i32 %69, i32 2) #8, !dbg !2374
  %70 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2375, !tbaa !2067
  %71 = load i32, i32* %68, align 8, !dbg !2377, !tbaa !481
  %72 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %70, i32 %71, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendBulkToSlave, i8* nonnull %19) #8, !dbg !2378
  %73 = icmp eq i32 %72, -1, !dbg !2379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  br i1 %73, label %74, label %75, !dbg !2380

; <label>:74:                                     ; preds = %55
  call void @freeClient(%struct.client* nonnull %20) #8, !dbg !2381
  br label %76, !dbg !2383, !llvm.loop !2339

; <label>:75:                                     ; preds = %55, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2384
  br label %77

; <label>:76:                                     ; preds = %74, %51, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2384
  br label %80

; <label>:77:                                     ; preds = %25, %75
  %78 = phi i32 [ %17, %75 ], [ %29, %25 ]
  %79 = phi i32 [ %16, %75 ], [ 1, %25 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %80, !dbg !2340

; <label>:80:                                     ; preds = %30, %77, %76
  %81 = phi i32 [ %17, %76 ], [ %17, %30 ], [ %78, %77 ], !dbg !2386
  %82 = phi i32 [ %16, %76 ], [ %16, %30 ], [ %79, %77 ], !dbg !2386
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !2304
  %84 = icmp eq %struct.listNode* %83, null, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  br i1 %84, label %85, label %14, !dbg !2303

; <label>:85:                                     ; preds = %80
  %86 = icmp eq i32 %82, 0, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  br i1 %86, label %90, label %87, !dbg !2389

; <label>:87:                                     ; preds = %85
  %88 = call i32 @startBgsaveForReplication(i32 %81) #10, !dbg !2390
  br label %89, !dbg !2390

; <label>:89:                                     ; preds = %2, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2391
  br label %90, !dbg !2392

; <label>:90:                                     ; preds = %89, %85
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  ret void, !dbg !2392
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
define dso_local void @shiftReplicationId() local_unnamed_addr #0 !dbg !2393 {
  %1 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !2394
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2395, !tbaa !524
  %3 = add nsw i64 %2, 1, !dbg !2396
  store i64 %3, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2397, !tbaa !1342
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !2398
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !2400, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2401
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2402, !tbaa !1342
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %4, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2404
  ret void, !dbg !2404
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @slaveIsInHandshakeState() local_unnamed_addr #5 !dbg !2405 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2408, !tbaa !2409
  %2 = add i32 %1, -3, !dbg !2410
  %3 = icmp ult i32 %2, 11, !dbg !2410
  %4 = zext i1 %3 to i32, !dbg !2410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  ret i32 %4, !dbg !2411
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendNewlineToMaster() local_unnamed_addr #0 !dbg !305 {
  %1 = tail call i64 @time(i64* null) #8, !dbg !2412
  %2 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2414, !tbaa !678
  %3 = icmp eq i64 %1, %2, !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  br i1 %3, label %8, label %4, !dbg !2416

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @time(i64* null) #8, !dbg !2417
  store i64 %5, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2419, !tbaa !678
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2420, !tbaa !2422
  %7 = tail call i64 @write(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  br label %8, !dbg !2424

; <label>:8:                                      ; preds = %0, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2425
  ret void, !dbg !2425
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationEmptyDbCallback(i8* nocapture readnone) #0 !dbg !2426 {
  %2 = tail call i64 @time(i64* null) #8, !dbg !2430
  %3 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2432, !tbaa !678
  %4 = icmp eq i64 %2, %3, !dbg !2433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  br i1 %4, label %9, label %5, !dbg !2434

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #8, !dbg !2435
  store i64 %6, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2436, !tbaa !678
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2437, !tbaa !2422
  %8 = tail call i64 @write(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  br label %9, !dbg !2439

; <label>:9:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  ret void, !dbg !2441
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCreateMasterClient(i32, i32) local_unnamed_addr #0 !dbg !2442 {
  %3 = tail call %struct.client* @createClient(i32 %0) #8, !dbg !2448
  store %struct.client* %3, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2449, !tbaa !2085
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !2450
  %5 = load i32, i32* %4, align 8, !dbg !2451, !tbaa !1112
  %6 = or i32 %5, 2, !dbg !2451
  store i32 %6, i32* %4, align 8, !dbg !2451, !tbaa !1112
  %7 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !2452
  store i32 1, i32* %7, align 4, !dbg !2453, !tbaa !2454
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2455, !tbaa !2456
  %9 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 30, !dbg !2457
  store i64 %8, i64* %9, align 8, !dbg !2458, !tbaa !2036
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 29, !dbg !2459
  store i64 %8, i64* %10, align 8, !dbg !2460, !tbaa !2461
  %11 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 34, i64 0, !dbg !2462
  %12 = tail call i8* @memcpy(i8* nonnull %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !2463
  %13 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2464, !tbaa !2085
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 30, !dbg !2466
  %15 = load i64, i64* %14, align 8, !dbg !2466, !tbaa !2036
  %16 = icmp eq i64 %15, -1, !dbg !2467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  br i1 %16, label %17, label %21, !dbg !2468

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 21, !dbg !2469
  %19 = load i32, i32* %18, align 8, !dbg !2470, !tbaa !1112
  %20 = or i32 %19, 65536, !dbg !2470
  store i32 %20, i32* %18, align 8, !dbg !2470, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2471
  br label %21, !dbg !2471

; <label>:21:                                     ; preds = %17, %2
  %22 = icmp eq i32 %1, -1, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  br i1 %22, label %25, label %23, !dbg !2474

; <label>:23:                                     ; preds = %21
  %24 = tail call i32 @selectDb(%struct.client* %13, i32 %1) #8, !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  br label %25, !dbg !2475

; <label>:25:                                     ; preds = %21, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  ret void, !dbg !2476
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @restartAOFAfterSYNC() local_unnamed_addr #0 !dbg !2477 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %1 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %2 = icmp eq i32 %1, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %2, label %9, label %3, !dbg !2491

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %4 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %5 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %6 = icmp eq i32 %5, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %6, label %9, label %10, !dbg !2491

; <label>:7:                                      ; preds = %38
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %8 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2496
  tail call void @exit(i32 1) #9, !dbg !2499
  unreachable

; <label>:9:                                      ; preds = %0, %3, %10, %14, %18, %22, %26, %30, %34, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2500
  ret void, !dbg !2500

; <label>:10:                                     ; preds = %3
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %11 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %12 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %13 = icmp eq i32 %12, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %13, label %9, label %14, !dbg !2491

; <label>:14:                                     ; preds = %10
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %15 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %16 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %17 = icmp eq i32 %16, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %17, label %9, label %18, !dbg !2491

; <label>:18:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %19 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %20 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %21 = icmp eq i32 %20, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %21, label %9, label %22, !dbg !2491

; <label>:22:                                     ; preds = %18
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %23 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %24 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %25 = icmp eq i32 %24, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %25, label %9, label %26, !dbg !2491

; <label>:26:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %27 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %28 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %29 = icmp eq i32 %28, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %29, label %9, label %30, !dbg !2491

; <label>:30:                                     ; preds = %26
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %31 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %32 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %33 = icmp eq i32 %32, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %33, label %9, label %34, !dbg !2491

; <label>:34:                                     ; preds = %30
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %35 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %36 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %37 = icmp eq i32 %36, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %37, label %9, label %38, !dbg !2491

; <label>:38:                                     ; preds = %34
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2492
  %39 = tail call i32 @sleep(i32 1) #8, !dbg !2493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  %40 = tail call i32 @startAppendOnly() #8, !dbg !2486
  %41 = icmp eq i32 %40, 0, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %41, label %9, label %7, !dbg !2491
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
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !2505
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2505
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2507, !tbaa !2509
  %9 = icmp eq i64 %8, -1, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2511
  br i1 %9, label %10, label %46, !dbg !2511

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2512, !tbaa !2515
  %12 = mul nsw i32 %11, 1000, !dbg !2516
  %13 = sext i32 %12 to i64, !dbg !2517
  %14 = call i64 @syncReadLine(i32 %1, i8* nonnull %7, i64 1024, i64 %13) #8, !dbg !2518
  %15 = icmp eq i64 %14, -1, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %15, label %16, label %20, !dbg !2520

; <label>:16:                                     ; preds = %10
  %17 = call i32* @__errno() #8, !dbg !2521
  %18 = load i32, i32* %17, align 4, !dbg !2521, !tbaa !674
  %19 = call i8* @strerror(i32 %18) #8, !dbg !2523
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i64 0, i64 0), i8* %19) #8, !dbg !2524
  br label %263, !dbg !2525

; <label>:20:                                     ; preds = %10
  %21 = load i8, i8* %7, align 16, !dbg !2526, !tbaa !470
  %22 = icmp eq i8 %21, 45, !dbg !2528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2529
  br i1 %22, label %23, label %25, !dbg !2529

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2530
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %24) #8, !dbg !2532
  br label %263, !dbg !2533

; <label>:25:                                     ; preds = %20
  %26 = icmp eq i8 %21, 0, !dbg !2534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  br i1 %26, label %27, label %29, !dbg !2536

; <label>:27:                                     ; preds = %25
  %28 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2537, !tbaa !1396
  store i64 %28, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2539, !tbaa !2540
  br label %278, !dbg !2541

; <label>:29:                                     ; preds = %25
  %30 = icmp eq i8 %21, 36, !dbg !2542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br i1 %30, label %32, label %31, !dbg !2544

; <label>:31:                                     ; preds = %29
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %7) #8, !dbg !2545
  br label %263, !dbg !2547

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2548
  %34 = call i32 @strncmp(i8* nonnull %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 4) #8, !dbg !2550
  %35 = icmp eq i32 %34, 0, !dbg !2551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2552
  br i1 %35, label %36, label %43, !dbg !2552

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 5, !dbg !2553
  %38 = call i64 @strlen(i8* nonnull %37) #8, !dbg !2554
  %39 = icmp ugt i64 %38, 39, !dbg !2555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2556
  br i1 %39, label %40, label %43, !dbg !2556

; <label>:40:                                     ; preds = %36
  store i1 true, i1* @readSyncBulkPayload.usemark, align 4
  %41 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i8* nonnull %37, i64 40) #8, !dbg !2557
  %42 = call i8* @memset(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i32 0, i64 40) #8, !dbg !2559
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2560, !tbaa !2509
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !2561
  br label %45, !dbg !2562

; <label>:43:                                     ; preds = %36, %32
  store i1 false, i1* @readSyncBulkPayload.usemark, align 4
  %44 = call i64 @strtol(i8* nonnull %33, i8** null, i32 10) #8, !dbg !2563
  store i64 %44, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2565, !tbaa !2509
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.77, i64 0, i64 0), i64 %44) #8, !dbg !2566
  br label %45

; <label>:45:                                     ; preds = %43, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %278, !dbg !2567

; <label>:46:                                     ; preds = %4
  %47 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  br i1 %47, label %53, label %48, !dbg !2568

; <label>:48:                                     ; preds = %46
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2569, !tbaa !2572
  %50 = sub nsw i64 %8, %49, !dbg !2573
  %51 = icmp slt i64 %50, 4096, !dbg !2575
  %52 = select i1 %51, i64 %50, i64 4096, !dbg !2576
  br label %53

; <label>:53:                                     ; preds = %46, %48
  %54 = phi i64 [ %52, %48 ], [ 4096, %46 ], !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %55 = call i64 @read(i32 %1, i8* nonnull %7, i64 %54) #8, !dbg !2579
  %56 = icmp slt i64 %55, 1, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br i1 %56, label %57, label %79, !dbg !2583

; <label>:57:                                     ; preds = %53
  %58 = icmp eq i64 %55, -1, !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %58, label %59, label %63, !dbg !2586

; <label>:59:                                     ; preds = %57
  %60 = call i32* @__errno() #8, !dbg !2587
  %61 = load i32, i32* %60, align 4, !dbg !2587, !tbaa !674
  %62 = call i8* @strerror(i32 %61) #8, !dbg !2588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br label %63, !dbg !2586

; <label>:63:                                     ; preds = %57, %59
  %64 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), %57 ], !dbg !2586
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i8* %64) #8, !dbg !2589
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2590, !tbaa !2409
  %66 = icmp eq i32 %65, 14, !dbg !2594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2595
  br i1 %66, label %67, label %68, !dbg !2595

; <label>:67:                                     ; preds = %63
  call void @replicationAbortSyncTransfer() #8, !dbg !2596
  br label %77, !dbg !2598

; <label>:68:                                     ; preds = %63
  %69 = icmp eq i32 %65, 2, !dbg !2599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  br i1 %69, label %73, label %70, !dbg !2601

; <label>:70:                                     ; preds = %68
  %71 = add i32 %65, -3, !dbg !2602
  %72 = icmp ugt i32 %71, 10, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  br i1 %72, label %78, label %73, !dbg !2605

; <label>:73:                                     ; preds = %70, %68
  %74 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2606, !tbaa !2422
  %75 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2613, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %75, i32 %74, i32 3) #8, !dbg !2614
  %76 = call i32 @close(i32 %74) #8, !dbg !2615
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2616, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  br label %77

; <label>:77:                                     ; preds = %73, %67
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2618, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %78, !dbg !2619

; <label>:78:                                     ; preds = %70, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  br label %278, !dbg !2621

; <label>:79:                                     ; preds = %53
  %80 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2622, !tbaa !2623
  %81 = add nsw i64 %80, %55, !dbg !2622
  store i64 %81, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2622, !tbaa !2623
  %82 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br i1 %82, label %83, label %101, !dbg !2625

; <label>:83:                                     ; preds = %79
  %84 = icmp sgt i64 %55, 39, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  br i1 %84, label %85, label %89, !dbg !2627

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 %55, !dbg !2628
  %87 = getelementptr inbounds i8, i8* %86, i64 -40, !dbg !2630
  %88 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %87, i64 40) #8, !dbg !2631
  br label %97, !dbg !2632

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %55, !dbg !2633
  %91 = shl i64 %55, 32, !dbg !2634
  %92 = sub i64 171798691840, %91, !dbg !2634
  %93 = ashr exact i64 %92, 32, !dbg !2634
  %94 = call i8* @memmove(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %90, i64 %93) #8, !dbg !2635
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %93, !dbg !2636
  %96 = call i8* @memcpy(i8* nonnull %95, i8* nonnull %7, i64 %55) #8, !dbg !2637
  br label %97

; <label>:97:                                     ; preds = %89, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %98 = call i32 @memcmp(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i64 40) #8, !dbg !2638
  %99 = icmp eq i32 %98, 0, !dbg !2640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  br i1 %99, label %100, label %101, !dbg !2641

; <label>:100:                                    ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  br label %101, !dbg !2642

; <label>:101:                                    ; preds = %97, %100, %79
  %102 = phi i32 [ 1, %100 ], [ 0, %97 ], [ 0, %79 ], !dbg !2643
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2644, !tbaa !1396
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2645, !tbaa !2540
  %104 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2646, !tbaa !2648
  %105 = call i64 @write(i32 %104, i8* nonnull %7, i64 %55) #8, !dbg !2649
  %106 = icmp eq i64 %105, %55, !dbg !2651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  br i1 %106, label %115, label %107, !dbg !2652

; <label>:107:                                    ; preds = %101
  %108 = icmp eq i64 %105, -1, !dbg !2653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  br i1 %108, label %109, label %113, !dbg !2655

; <label>:109:                                    ; preds = %107
  %110 = call i32* @__errno() #8, !dbg !2656
  %111 = load i32, i32* %110, align 4, !dbg !2656, !tbaa !674
  %112 = call i8* @strerror(i32 %111) #8, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  br label %113, !dbg !2655

; <label>:113:                                    ; preds = %107, %109
  %114 = phi i8* [ %112, %109 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), %107 ], !dbg !2655
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.80, i64 0, i64 0), i8* %114) #8, !dbg !2658
  br label %263, !dbg !2659

; <label>:115:                                    ; preds = %101
  %116 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2660, !tbaa !2572
  %117 = add nsw i64 %116, %55, !dbg !2660
  store i64 %117, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2660, !tbaa !2572
  %118 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  %119 = icmp ne i32 %102, 0, !dbg !2661
  %120 = and i1 %119, %118, !dbg !2663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %120, label %121, label %132, !dbg !2663

; <label>:121:                                    ; preds = %115
  %122 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2664, !tbaa !2648
  %123 = add nsw i64 %117, -40, !dbg !2667
  %124 = call i32 @ftruncate(i32 %122, i64 %123) #8, !dbg !2668
  %125 = icmp eq i32 %124, -1, !dbg !2669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  br i1 %125, label %128, label %126, !dbg !2670

; <label>:126:                                    ; preds = %121
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2671, !tbaa !2572
  br label %132, !dbg !2670

; <label>:128:                                    ; preds = %121
  %129 = call i32* @__errno() #8, !dbg !2672
  %130 = load i32, i32* %129, align 4, !dbg !2672, !tbaa !674
  %131 = call i8* @strerror(i32 %130) #8, !dbg !2674
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.82, i64 0, i64 0), i8* %131) #8, !dbg !2675
  br label %263, !dbg !2676

; <label>:132:                                    ; preds = %126, %115
  %133 = phi i64 [ %127, %126 ], [ %117, %115 ], !dbg !2671
  %134 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2677, !tbaa !2678
  %135 = add nsw i64 %134, 8388608, !dbg !2679
  %136 = icmp slt i64 %133, %135, !dbg !2680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %136, label %143, label %137, !dbg !2681

; <label>:137:                                    ; preds = %132
  %138 = sub i64 %133, %134, !dbg !2682
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2684, !tbaa !2648
  %140 = call i32 @fsync(i32 %139) #8, !dbg !2684
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2685, !tbaa !2678
  %142 = add nsw i64 %138, %141, !dbg !2685
  store i64 %142, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2685, !tbaa !2678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2686
  br label %143, !dbg !2686

; <label>:143:                                    ; preds = %132, %137
  %144 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  br i1 %144, label %150, label %145, !dbg !2687

; <label>:145:                                    ; preds = %143
  %146 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2688, !tbaa !2572
  %147 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2692, !tbaa !2509
  %148 = icmp eq i64 %146, %147, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  br i1 %148, label %149, label %150, !dbg !2694

; <label>:149:                                    ; preds = %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  br label %152, !dbg !2696

; <label>:150:                                    ; preds = %145, %143
  %151 = icmp eq i32 %102, 0, !dbg !2697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2696
  br i1 %151, label %278, label %152, !dbg !2696

; <label>:152:                                    ; preds = %149, %150
  %153 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2698, !tbaa !2699
  %154 = icmp ne i32 %153, 0, !dbg !2700
  %155 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2701, !tbaa !1738
  %156 = icmp eq i32 %155, -1, !dbg !2703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2704
  br i1 %156, label %162, label %157, !dbg !2704

; <label>:157:                                    ; preds = %152
  %158 = sext i32 %155 to i64, !dbg !2705
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.83, i64 0, i64 0), i64 %158) #8, !dbg !2707
  %159 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2708, !tbaa !1738
  %160 = call i32 @kill(i32 %159, i32 10) #8, !dbg !2709
  %161 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2710, !tbaa !1738
  call void @rdbRemoveTempFile(i32 %161) #8, !dbg !2711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2712
  br label %162, !dbg !2712

; <label>:162:                                    ; preds = %152, %157
  %163 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2713, !tbaa !2715
  %164 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2716, !tbaa !1533
  %165 = call i32 @rename(i8* %163, i8* %164) #8, !dbg !2717
  %166 = icmp eq i32 %165, -1, !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  br i1 %166, label %167, label %185, !dbg !2719

; <label>:167:                                    ; preds = %162
  %168 = call i32* @__errno() #8, !dbg !2720
  %169 = load i32, i32* %168, align 4, !dbg !2720, !tbaa !674
  %170 = call i8* @strerror(i32 %169) #8, !dbg !2722
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.84, i64 0, i64 0), i8* %170) #8, !dbg !2723
  %171 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2724, !tbaa !2409
  %172 = icmp eq i32 %171, 14, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  br i1 %172, label %173, label %174, !dbg !2727

; <label>:173:                                    ; preds = %167
  call void @replicationAbortSyncTransfer() #8, !dbg !2728
  br label %183, !dbg !2729

; <label>:174:                                    ; preds = %167
  %175 = icmp eq i32 %171, 2, !dbg !2730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  br i1 %175, label %179, label %176, !dbg !2731

; <label>:176:                                    ; preds = %174
  %177 = add i32 %171, -3, !dbg !2732
  %178 = icmp ugt i32 %177, 10, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %178, label %184, label %179, !dbg !2735

; <label>:179:                                    ; preds = %176, %174
  %180 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2736, !tbaa !2422
  %181 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2739, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %181, i32 %180, i32 3) #8, !dbg !2740
  %182 = call i32 @close(i32 %180) #8, !dbg !2741
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2742, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br label %183

; <label>:183:                                    ; preds = %179, %173
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2744, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %184, !dbg !2745

; <label>:184:                                    ; preds = %176, %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br label %278

; <label>:185:                                    ; preds = %162
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  br i1 %154, label %186, label %187, !dbg !2749

; <label>:186:                                    ; preds = %185
  call void @stopAppendOnly() #8, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  br label %187, !dbg !2750

; <label>:187:                                    ; preds = %186, %185
  call void @signalFlushedDb(i32 -1) #8, !dbg !2752
  %188 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 220), align 8, !dbg !2753, !tbaa !2754
  %189 = icmp ne i32 %188, 0, !dbg !2755
  %190 = zext i1 %189 to i32, !dbg !2755
  %191 = call i64 @emptyDb(i32 -1, i32 %190, void (i8*)* nonnull @replicationEmptyDbCallback) #8, !dbg !2756
  %192 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2757, !tbaa !2067
  %193 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2758, !tbaa !2422
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %192, i32 %193, i32 1) #8, !dbg !2759
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2760
  %194 = bitcast %struct.rdbSaveInfo* %6 to i8*, !dbg !2761
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %194) #7, !dbg !2761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %194, i8* align 8 bitcast (%struct.rdbSaveInfo* @readSyncBulkPayload.rsi to i8*), i64 64, i1 false), !dbg !2762
  %195 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2763, !tbaa !1533
  %196 = call i32 @rdbLoad(i8* %195, %struct.rdbSaveInfo* nonnull %6) #8, !dbg !2765
  %197 = icmp eq i32 %196, 0, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  br i1 %197, label %214, label %198, !dbg !2767

; <label>:198:                                    ; preds = %187
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2768
  %199 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2770, !tbaa !2409
  %200 = icmp eq i32 %199, 14, !dbg !2772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2773
  br i1 %200, label %201, label %202, !dbg !2773

; <label>:201:                                    ; preds = %198
  call void @replicationAbortSyncTransfer() #8, !dbg !2774
  br label %211, !dbg !2775

; <label>:202:                                    ; preds = %198
  %203 = icmp eq i32 %199, 2, !dbg !2776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br i1 %203, label %207, label %204, !dbg !2777

; <label>:204:                                    ; preds = %202
  %205 = add i32 %199, -3, !dbg !2778
  %206 = icmp ugt i32 %205, 10, !dbg !2778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  br i1 %206, label %212, label %207, !dbg !2781

; <label>:207:                                    ; preds = %204, %202
  %208 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2782, !tbaa !2422
  %209 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2785, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %209, i32 %208, i32 3) #8, !dbg !2786
  %210 = call i32 @close(i32 %208) #8, !dbg !2787
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2788, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  br label %211

; <label>:211:                                    ; preds = %207, %201
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2790, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %212, !dbg !2791

; <label>:212:                                    ; preds = %204, %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  br i1 %154, label %213, label %262, !dbg !2793

; <label>:213:                                    ; preds = %212
  call void @restartAOFAfterSYNC() #10, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  br label %262, !dbg !2794

; <label>:214:                                    ; preds = %187
  %215 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2796, !tbaa !2715
  call void @zfree(i8* %215) #8, !dbg !2797
  %216 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2798, !tbaa !2648
  %217 = call i32 @close(i32 %216) #8, !dbg !2799
  %218 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2800, !tbaa !2422
  %219 = getelementptr inbounds %struct.rdbSaveInfo, %struct.rdbSaveInfo* %6, i64 0, i32 0, !dbg !2801
  %220 = load i32, i32* %219, align 8, !dbg !2801, !tbaa !2802
  %221 = call %struct.client* @createClient(i32 %218) #8, !dbg !2807
  store %struct.client* %221, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2808, !tbaa !2085
  %222 = getelementptr inbounds %struct.client, %struct.client* %221, i64 0, i32 21, !dbg !2809
  %223 = load i32, i32* %222, align 8, !dbg !2810, !tbaa !1112
  %224 = or i32 %223, 2, !dbg !2810
  store i32 %224, i32* %222, align 8, !dbg !2810, !tbaa !1112
  %225 = getelementptr inbounds %struct.client, %struct.client* %221, i64 0, i32 22, !dbg !2811
  store i32 1, i32* %225, align 4, !dbg !2812, !tbaa !2454
  %226 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2813, !tbaa !2456
  %227 = getelementptr inbounds %struct.client, %struct.client* %221, i64 0, i32 30, !dbg !2814
  store i64 %226, i64* %227, align 8, !dbg !2815, !tbaa !2036
  %228 = getelementptr inbounds %struct.client, %struct.client* %221, i64 0, i32 29, !dbg !2816
  store i64 %226, i64* %228, align 8, !dbg !2817, !tbaa !2461
  %229 = getelementptr inbounds %struct.client, %struct.client* %221, i64 0, i32 34, i64 0, !dbg !2818
  %230 = call i8* @memcpy(i8* nonnull %229, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !2819
  %231 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2820, !tbaa !2085
  %232 = getelementptr inbounds %struct.client, %struct.client* %231, i64 0, i32 30, !dbg !2821
  %233 = load i64, i64* %232, align 8, !dbg !2821, !tbaa !2036
  %234 = icmp eq i64 %233, -1, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  br i1 %234, label %235, label %239, !dbg !2823

; <label>:235:                                    ; preds = %214
  %236 = getelementptr inbounds %struct.client, %struct.client* %231, i64 0, i32 21, !dbg !2824
  %237 = load i32, i32* %236, align 8, !dbg !2825, !tbaa !1112
  %238 = or i32 %237, 65536, !dbg !2825
  store i32 %238, i32* %236, align 8, !dbg !2825, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2826
  br label %239, !dbg !2826

; <label>:239:                                    ; preds = %235, %214
  %240 = icmp eq i32 %220, -1, !dbg !2827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  br i1 %240, label %244, label %241, !dbg !2828

; <label>:241:                                    ; preds = %239
  %242 = call i32 @selectDb(%struct.client* %231, i32 %220) #8, !dbg !2829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %243 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2830, !tbaa !2085
  br label %244, !dbg !2829

; <label>:244:                                    ; preds = %239, %241
  %245 = phi %struct.client* [ %231, %239 ], [ %243, %241 ], !dbg !2830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2832, !tbaa !2409
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !2833, !tbaa !2834
  %246 = getelementptr inbounds %struct.client, %struct.client* %245, i64 0, i32 34, i64 0, !dbg !2835
  %247 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %246, i64 41) #8, !dbg !2836
  %248 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2837, !tbaa !2085
  %249 = getelementptr inbounds %struct.client, %struct.client* %248, i64 0, i32 30, !dbg !2838
  %250 = load i64, i64* %249, align 8, !dbg !2838, !tbaa !2036
  store i64 %250, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2839, !tbaa !524
  %251 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !2840
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !2842, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2843, !tbaa !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  %252 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2845, !tbaa !511
  %253 = icmp eq i8* %252, null, !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2848
  br i1 %253, label %254, label %259, !dbg !2848

; <label>:254:                                    ; preds = %244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  %255 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !2851, !tbaa !518
  %256 = call i8* @zmalloc(i64 %255) #8, !dbg !2852
  store i8* %256, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2853, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !2854, !tbaa !522
  %257 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2855, !tbaa !524
  %258 = add nsw i64 %257, 1, !dbg !2856
  store i64 %258, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !2857, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  br label %259, !dbg !2859

; <label>:259:                                    ; preds = %254, %244
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %154, label %260, label %261, !dbg !2861

; <label>:260:                                    ; preds = %259
  call void @restartAOFAfterSYNC() #10, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  br label %261, !dbg !2862

; <label>:261:                                    ; preds = %259, %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2864
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %194) #7, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %278

; <label>:262:                                    ; preds = %212, %213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %194) #7, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %278

; <label>:263:                                    ; preds = %128, %113, %31, %23, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  %264 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2867, !tbaa !2409
  %265 = icmp eq i32 %264, 14, !dbg !2869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2870
  br i1 %265, label %266, label %267, !dbg !2870

; <label>:266:                                    ; preds = %263
  call void @replicationAbortSyncTransfer() #8, !dbg !2871
  br label %276, !dbg !2872

; <label>:267:                                    ; preds = %263
  %268 = icmp eq i32 %264, 2, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  br i1 %268, label %272, label %269, !dbg !2874

; <label>:269:                                    ; preds = %267
  %270 = add i32 %264, -3, !dbg !2875
  %271 = icmp ugt i32 %270, 10, !dbg !2875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  br i1 %271, label %277, label %272, !dbg !2878

; <label>:272:                                    ; preds = %269, %267
  %273 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2879, !tbaa !2422
  %274 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2882, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %274, i32 %273, i32 3) #8, !dbg !2883
  %275 = call i32 @close(i32 %273) #8, !dbg !2884
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2885, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2886
  br label %276

; <label>:276:                                    ; preds = %272, %266
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2643, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277, !dbg !2887

; <label>:277:                                    ; preds = %269, %276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2888
  br label %278, !dbg !2889

; <label>:278:                                    ; preds = %150, %261, %262, %184, %277, %78, %45, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  ret void, !dbg !2890
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
define dso_local i32 @cancelReplicationHandshake() local_unnamed_addr #0 !dbg !2592 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2891, !tbaa !2409
  %2 = icmp eq i32 %1, 14, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  br i1 %2, label %3, label %4, !dbg !2893

; <label>:3:                                      ; preds = %0
  tail call void @replicationAbortSyncTransfer() #10, !dbg !2894
  br label %13, !dbg !2895

; <label>:4:                                      ; preds = %0
  %5 = icmp eq i32 %1, 2, !dbg !2896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br i1 %5, label %9, label %6, !dbg !2897

; <label>:6:                                      ; preds = %4
  %7 = add i32 %1, -3, !dbg !2898
  %8 = icmp ugt i32 %7, 10, !dbg !2898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  br i1 %8, label %14, label %9, !dbg !2901

; <label>:9:                                      ; preds = %6, %4
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2902, !tbaa !2422
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2905, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %11, i32 %10, i32 3) #8, !dbg !2906
  %12 = tail call i32 @close(i32 %10) #8, !dbg !2907
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2908, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2909
  br label %13

; <label>:13:                                     ; preds = %9, %3
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2910, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %14, !dbg !2911

; <label>:14:                                     ; preds = %6, %13
  %15 = phi i32 [ 1, %13 ], [ 0, %6 ], !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2914
  ret i32 %15, !dbg !2914
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
define dso_local i8* @sendSynchronousCommand(i32, i32, ...) local_unnamed_addr #0 !dbg !2915 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [256 x i8], align 16
  %5 = and i32 %0, 2, !dbg !2948
  %6 = icmp eq i32 %5, 0, !dbg !2948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  br i1 %6, label %77, label %7, !dbg !2949

; <label>:7:                                      ; preds = %2
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2950
  %9 = tail call i8* @sdsempty() #8, !dbg !2952
  %10 = tail call i8* @sdsempty() #8, !dbg !2954
  call void @llvm.va_start(i8* nonnull %8), !dbg !2957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  br label %14, !dbg !2958

; <label>:14:                                     ; preds = %32, %7
  %15 = phi i8* [ %10, %7 ], [ %34, %32 ], !dbg !2959
  %16 = phi i64 [ 0, %7 ], [ %35, %32 ], !dbg !2959
  %17 = load i32, i32* %11, align 16, !dbg !2961
  %18 = icmp ult i32 %17, 41, !dbg !2961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2961
  br i1 %18, label %19, label %24, !dbg !2961

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %12, align 16, !dbg !2961
  %21 = sext i32 %17 to i64, !dbg !2961
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !2961
  %23 = add i32 %17, 8, !dbg !2961
  store i32 %23, i32* %11, align 16, !dbg !2961
  br label %27, !dbg !2961

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %13, align 8, !dbg !2961
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !2961
  store i8* %26, i8** %13, align 8, !dbg !2961
  br label %27, !dbg !2961

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i8* [ %22, %19 ], [ %25, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2961
  %29 = bitcast i8* %28 to i8**, !dbg !2961
  %30 = load i8*, i8** %29, align 8, !dbg !2961
  %31 = icmp eq i8* %30, null, !dbg !2963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2965
  br i1 %31, label %36, label %32, !dbg !2965

; <label>:32:                                     ; preds = %27
  %33 = call i64 @strlen(i8* nonnull %30) #8, !dbg !2966
  %34 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i64 %33, i8* nonnull %30) #8, !dbg !2967
  %35 = add i64 %16, 1, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  br label %14, !dbg !2958, !llvm.loop !2969

; <label>:36:                                     ; preds = %27
  call void @llvm.va_end(i8* nonnull %8), !dbg !2971
  %37 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i64 %16) #8, !dbg !2972
  %38 = call i8* @sdscatsds(i8* %37, i8* %15) #8, !dbg !2973
  call void @sdsfree(i8* %15) #8, !dbg !2974
  %39 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !2978
  %40 = load i8, i8* %39, align 1, !dbg !2978, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  %41 = trunc i8 %40 to i3, !dbg !2980
  switch i3 %41, label %63 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !2980

; <label>:42:                                     ; preds = %36
  %43 = lshr i8 %40, 3, !dbg !2981
  %44 = zext i8 %43 to i64, !dbg !2981
  br label %63, !dbg !2982

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds i8, i8* %38, i64 -3, !dbg !2983
  %47 = load i8, i8* %46, align 1, !dbg !2984, !tbaa !470
  %48 = zext i8 %47 to i64, !dbg !2983
  br label %63, !dbg !2985

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds i8, i8* %38, i64 -5, !dbg !2986
  %51 = bitcast i8* %50 to i16*, !dbg !2987
  %52 = load i16, i16* %51, align 1, !dbg !2987, !tbaa !669
  %53 = zext i16 %52 to i64, !dbg !2986
  br label %63, !dbg !2988

; <label>:54:                                     ; preds = %36
  %55 = getelementptr inbounds i8, i8* %38, i64 -9, !dbg !2989
  %56 = bitcast i8* %55 to i32*, !dbg !2990
  %57 = load i32, i32* %56, align 1, !dbg !2990, !tbaa !674
  %58 = zext i32 %57 to i64, !dbg !2989
  br label %63, !dbg !2991

; <label>:59:                                     ; preds = %36
  %60 = getelementptr inbounds i8, i8* %38, i64 -17, !dbg !2992
  %61 = bitcast i8* %60 to i64*, !dbg !2993
  %62 = load i64, i64* %61, align 1, !dbg !2993, !tbaa !678
  br label %63, !dbg !2994

; <label>:63:                                     ; preds = %36, %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], [ 0, %36 ], !dbg !2995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2998, !tbaa !2515
  %66 = mul nsw i32 %65, 1000, !dbg !2999
  %67 = sext i32 %66 to i64, !dbg !3000
  %68 = call i64 @syncWrite(i32 %1, i8* %38, i64 %64, i64 %67) #8, !dbg !3001
  %69 = icmp eq i64 %68, -1, !dbg !3002
  call void @sdsfree(i8* %38) #8, !dbg !3003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  br i1 %69, label %71, label %70, !dbg !3004

; <label>:70:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3005
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3005
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %77

; <label>:71:                                     ; preds = %63
  %72 = call i8* @sdsempty() #8, !dbg !3006
  %73 = call i32* @__errno() #8, !dbg !3008
  %74 = load i32, i32* %73, align 4, !dbg !3008, !tbaa !674
  %75 = call i8* @strerror(i32 %74) #8, !dbg !3009
  %76 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %75) #8, !dbg !3010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3005
  br label %98

; <label>:77:                                     ; preds = %70, %2
  %78 = and i32 %0, 1, !dbg !3012
  %79 = icmp eq i32 %78, 0, !dbg !3012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  br i1 %79, label %98, label %80, !dbg !3013

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %81) #7, !dbg !3014
  %82 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !3016, !tbaa !2515
  %83 = mul nsw i32 %82, 1000, !dbg !3018
  %84 = sext i32 %83 to i64, !dbg !3019
  %85 = call i64 @syncReadLine(i32 %1, i8* nonnull %81, i64 256, i64 %84) #8, !dbg !3020
  %86 = icmp eq i64 %85, -1, !dbg !3021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3022
  br i1 %86, label %87, label %93, !dbg !3022

; <label>:87:                                     ; preds = %80
  %88 = call i8* @sdsempty() #8, !dbg !3023
  %89 = call i32* @__errno() #8, !dbg !3025
  %90 = load i32, i32* %89, align 4, !dbg !3025, !tbaa !674
  %91 = call i8* @strerror(i32 %90) #8, !dbg !3026
  %92 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i64 0, i64 0), i8* %91) #8, !dbg !3027
  br label %96, !dbg !3028

; <label>:93:                                     ; preds = %80
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3029, !tbaa !1396
  store i64 %94, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3030, !tbaa !2540
  %95 = call i8* @sdsnew(i8* nonnull %81) #8, !dbg !3031
  br label %96, !dbg !3032

; <label>:96:                                     ; preds = %93, %87
  %97 = phi i8* [ %92, %87 ], [ %95, %93 ], !dbg !3033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %81) #7, !dbg !3035
  br label %98

; <label>:98:                                     ; preds = %77, %71, %96
  %99 = phi i8* [ %97, %96 ], [ %76, %71 ], [ null, %77 ], !dbg !3036
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3037
  ret i8* %99, !dbg !3037
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
define dso_local i32 @slaveTryPartialResynchronization(i32, i32) local_unnamed_addr #0 !dbg !3038 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3063
  %6 = icmp eq i32 %1, 0, !dbg !3065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  br i1 %6, label %7, label %24, !dbg !3067

; <label>:7:                                      ; preds = %2
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3068, !tbaa !2456
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3070, !tbaa !3072
  %9 = icmp eq %struct.client* %8, null, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br i1 %9, label %16, label %10, !dbg !3074

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 34, i64 0, !dbg !3075
  %12 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 30, !dbg !3078
  %13 = load i64, i64* %12, align 8, !dbg !3078, !tbaa !2036
  %14 = add nsw i64 %13, 1, !dbg !3079
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 %14) #8, !dbg !3080
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %11, i8* nonnull %5) #8, !dbg !3081
  br label %18, !dbg !3082

; <label>:16:                                     ; preds = %7
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3083
  %17 = call i8* @memcpy(i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i64 3) #8, !dbg !3085
  br label %18

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), %16 ], !dbg !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %19, i8* nonnull %5, i8* null) #10, !dbg !3087
  %21 = icmp eq i8* %20, null, !dbg !3089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3091
  br i1 %21, label %162, label %22, !dbg !3091

; <label>:22:                                     ; preds = %18
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %20) #8, !dbg !3092
  call void @sdsfree(i8* nonnull %20) #8, !dbg !3094
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3095, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1) #8, !dbg !3096
  br label %162, !dbg !3097

; <label>:24:                                     ; preds = %2
  %25 = tail call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %0, i8* null) #10, !dbg !3098
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !3102
  %27 = load i8, i8* %26, align 1, !dbg !3102, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3104
  %28 = trunc i8 %27 to i3, !dbg !3104
  switch i3 %28, label %50 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !3104

; <label>:29:                                     ; preds = %24
  %30 = lshr i8 %27, 3, !dbg !3105
  %31 = zext i8 %30 to i64, !dbg !3105
  br label %51, !dbg !3106

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !3107
  %34 = load i8, i8* %33, align 1, !dbg !3108, !tbaa !470
  %35 = zext i8 %34 to i64, !dbg !3107
  br label %51, !dbg !3109

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !3110
  %38 = bitcast i8* %37 to i16*, !dbg !3111
  %39 = load i16, i16* %38, align 1, !dbg !3111, !tbaa !669
  %40 = zext i16 %39 to i64, !dbg !3110
  br label %51, !dbg !3112

; <label>:41:                                     ; preds = %24
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !3113
  %43 = bitcast i8* %42 to i32*, !dbg !3114
  %44 = load i32, i32* %43, align 1, !dbg !3114, !tbaa !674
  %45 = zext i32 %44 to i64, !dbg !3113
  br label %51, !dbg !3115

; <label>:46:                                     ; preds = %24
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !3116
  %48 = bitcast i8* %47 to i64*, !dbg !3117
  %49 = load i64, i64* %48, align 1, !dbg !3117, !tbaa !678
  br label %51, !dbg !3118

; <label>:50:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  br label %54, !dbg !3121

; <label>:51:                                     ; preds = %29, %32, %36, %41, %46
  %52 = phi i64 [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3120
  %53 = icmp eq i64 %52, 0, !dbg !3124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  br i1 %53, label %54, label %55, !dbg !3121

; <label>:54:                                     ; preds = %50, %51
  tail call void @sdsfree(i8* %25) #8, !dbg !3125
  br label %162, !dbg !3127

; <label>:55:                                     ; preds = %51
  %56 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3128, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %56, i32 %0, i32 1) #8, !dbg !3129
  %57 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i64 11) #8, !dbg !3130
  %58 = icmp eq i32 %57, 0, !dbg !3130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3131
  br i1 %58, label %59, label %88, !dbg !3131

; <label>:59:                                     ; preds = %55
  %60 = tail call i8* @strchr(i8* %25, i32 32) #8, !dbg !3134
  %61 = icmp eq i8* %60, null, !dbg !3135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3137
  br i1 %61, label %66, label %62, !dbg !3137

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3138
  %64 = tail call i8* @strchr(i8* nonnull %63, i32 32) #8, !dbg !3140
  %65 = icmp eq i8* %64, null, !dbg !3141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3143
  br i1 %65, label %66, label %67, !dbg !3143

; <label>:66:                                     ; preds = %59, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  br label %74, !dbg !3144

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !3146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  %69 = ptrtoint i8* %68 to i64, !dbg !3148
  %70 = ptrtoint i8* %63 to i64, !dbg !3148
  %71 = xor i64 %70, -1, !dbg !3149
  %72 = add i64 %69, %71, !dbg !3149
  %73 = icmp eq i64 %72, 40, !dbg !3150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3151
  br i1 %73, label %76, label %74, !dbg !3151

; <label>:74:                                     ; preds = %66, %67
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3152
  %75 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i32 0, i64 41) #8, !dbg !3154
  br label %79, !dbg !3155

; <label>:76:                                     ; preds = %67
  %77 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i8* nonnull %63, i64 40) #8, !dbg !3156
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 40), align 8, !dbg !3158, !tbaa !470
  %78 = tail call i64 @strtoll(i8* nonnull %68, i8** null, i32 10) #8, !dbg !3159
  store i64 %78, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3160, !tbaa !2456
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 %78) #8, !dbg !3161
  br label %79

; <label>:79:                                     ; preds = %76, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3162, !tbaa !3072
  %81 = icmp eq %struct.client* %80, null, !dbg !3166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3167
  br i1 %81, label %87, label %82, !dbg !3167

; <label>:82:                                     ; preds = %79
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3168
  %83 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3169, !tbaa !3072
  %84 = getelementptr inbounds %struct.client, %struct.client* %83, i64 0, i32 21, !dbg !3170
  %85 = load i32, i32* %84, align 8, !dbg !3171, !tbaa !1112
  %86 = and i32 %85, -3, !dbg !3171
  store i32 %86, i32* %84, align 8, !dbg !3171, !tbaa !1112
  tail call void @freeClient(%struct.client* %83) #8, !dbg !3172
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3173, !tbaa !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  br label %87, !dbg !3174

; <label>:87:                                     ; preds = %79, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  tail call void @sdsfree(i8* %25) #8, !dbg !3175
  br label %162

; <label>:88:                                     ; preds = %55
  %89 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), i64 9) #8, !dbg !3176
  %90 = icmp eq i32 %89, 0, !dbg !3176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3177
  br i1 %90, label %91, label %141, !dbg !3177

; <label>:91:                                     ; preds = %88
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3178
  %92 = getelementptr inbounds i8, i8* %25, i64 10, !dbg !3179
  %93 = getelementptr inbounds i8, i8* %25, i64 9, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3183
  %94 = load i8, i8* %93, align 1, !dbg !3184, !tbaa !470
  %95 = icmp eq i8 %94, 13, !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  br i1 %95, label %106, label %96, !dbg !3186

; <label>:96:                                     ; preds = %91, %102
  %97 = phi i8 [ %104, %102 ], [ %94, %91 ]
  %98 = phi i8* [ %103, %102 ], [ %93, %91 ]
  %99 = icmp eq i8 %97, 10, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br i1 %99, label %106, label %100, !dbg !3188

; <label>:100:                                    ; preds = %96
  %101 = icmp eq i8 %97, 0, !dbg !3189
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3183
  br i1 %101, label %108, label %102, !dbg !3183

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !3190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3183
  %104 = load i8, i8* %103, align 1, !dbg !3184, !tbaa !470
  %105 = icmp eq i8 %104, 13, !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  br i1 %105, label %106, label %96, !dbg !3186, !llvm.loop !3191

; <label>:106:                                    ; preds = %102, %96, %91
  %107 = phi i8* [ %93, %91 ], [ %103, %102 ], [ %98, %96 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3183
  br label %108, !dbg !3192

; <label>:108:                                    ; preds = %100, %106
  %109 = phi i8* [ %107, %106 ], [ %98, %100 ]
  %110 = ptrtoint i8* %109 to i64, !dbg !3192
  %111 = ptrtoint i8* %92 to i64, !dbg !3192
  %112 = sub i64 %110, %111, !dbg !3192
  %113 = icmp eq i64 %112, 40, !dbg !3193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3194
  br i1 %113, label %114, label %133, !dbg !3194

; <label>:114:                                    ; preds = %108
  %115 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !3195
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %115) #7, !dbg !3195
  %116 = call i8* @memcpy(i8* nonnull %115, i8* nonnull %92, i64 40) #8, !dbg !3197
  %117 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !3198
  store i8 0, i8* %117, align 8, !dbg !3199, !tbaa !470
  %118 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3200, !tbaa !3072
  %119 = getelementptr inbounds %struct.client, %struct.client* %118, i64 0, i32 34, i64 0, !dbg !3202
  %120 = call i32 @strcmp(i8* nonnull %115, i8* nonnull %119) #8, !dbg !3203
  %121 = icmp eq i32 %120, 0, !dbg !3203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3204
  br i1 %121, label %132, label %122, !dbg !3204

; <label>:122:                                    ; preds = %114
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %115) #8, !dbg !3205
  %123 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3207, !tbaa !3072
  %124 = getelementptr inbounds %struct.client, %struct.client* %123, i64 0, i32 34, i64 0, !dbg !3208
  %125 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* nonnull %124, i64 41) #8, !dbg !3209
  %126 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3210, !tbaa !524
  %127 = add nsw i64 %126, 1, !dbg !3211
  store i64 %127, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3212, !tbaa !1342
  %128 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %115, i64 41) #8, !dbg !3213
  %129 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3214, !tbaa !3072
  %130 = getelementptr inbounds %struct.client, %struct.client* %129, i64 0, i32 34, i64 0, !dbg !3215
  %131 = call i8* @memcpy(i8* nonnull %130, i8* nonnull %115, i64 41) #8, !dbg !3216
  call void @disconnectSlaves() #8, !dbg !3217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3218
  br label %132, !dbg !3218

; <label>:132:                                    ; preds = %114, %122
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %115) #7, !dbg !3219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3220
  br label %133, !dbg !3220

; <label>:133:                                    ; preds = %132, %108
  call void @sdsfree(i8* %25) #8, !dbg !3221
  call void @replicationResurrectCachedMaster(i32 %0) #10, !dbg !3222
  %134 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3223, !tbaa !511
  %135 = icmp eq i8* %134, null, !dbg !3225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3226
  br i1 %135, label %136, label %162, !dbg !3226

; <label>:136:                                    ; preds = %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3227
  %137 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !3229, !tbaa !518
  %138 = call i8* @zmalloc(i64 %137) #8, !dbg !3230
  store i8* %138, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3231, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !3232, !tbaa !522
  %139 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3233, !tbaa !524
  %140 = add nsw i64 %139, 1, !dbg !3234
  store i64 %140, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !3235, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  br label %162, !dbg !3237

; <label>:141:                                    ; preds = %88
  %142 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i64 13) #8, !dbg !3238
  %143 = icmp eq i32 %142, 0, !dbg !3238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br i1 %143, label %147, label %144, !dbg !3240

; <label>:144:                                    ; preds = %141
  %145 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0), i64 8) #8, !dbg !3241
  %146 = icmp eq i32 %145, 0, !dbg !3241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3242
  br i1 %146, label %147, label %148, !dbg !3242

; <label>:147:                                    ; preds = %144, %141
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.108, i64 0, i64 0), i8* %25) #8, !dbg !3243
  tail call void @sdsfree(i8* %25) #8, !dbg !3245
  br label %162, !dbg !3246

; <label>:148:                                    ; preds = %144
  %149 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #8, !dbg !3247
  %150 = icmp eq i32 %149, 0, !dbg !3247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br i1 %150, label %152, label %151, !dbg !3249

; <label>:151:                                    ; preds = %148
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i64 0, i64 0), i8* %25) #8, !dbg !3250
  br label %153, !dbg !3252

; <label>:152:                                    ; preds = %148
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.111, i64 0, i64 0), i8* %25) #8, !dbg !3253
  br label %153

; <label>:153:                                    ; preds = %152, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @sdsfree(i8* %25) #8, !dbg !3255
  %154 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3256, !tbaa !3072
  %155 = icmp eq %struct.client* %154, null, !dbg !3258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3259
  br i1 %155, label %161, label %156, !dbg !3259

; <label>:156:                                    ; preds = %153
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3260
  %157 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3261, !tbaa !3072
  %158 = getelementptr inbounds %struct.client, %struct.client* %157, i64 0, i32 21, !dbg !3262
  %159 = load i32, i32* %158, align 8, !dbg !3263, !tbaa !1112
  %160 = and i32 %159, -3, !dbg !3263
  store i32 %160, i32* %158, align 8, !dbg !3263, !tbaa !1112
  tail call void @freeClient(%struct.client* %157) #8, !dbg !3264
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3265, !tbaa !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  br label %161, !dbg !3266

; <label>:161:                                    ; preds = %153, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  br label %162, !dbg !3267

; <label>:162:                                    ; preds = %133, %136, %18, %161, %147, %87, %54, %22
  %163 = phi i32 [ 1, %54 ], [ 4, %161 ], [ 5, %147 ], [ 3, %87 ], [ 0, %22 ], [ 1, %18 ], [ 2, %136 ], [ 2, %133 ], !dbg !3268
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  ret i32 %163, !dbg !3269
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationDiscardCachedMaster() local_unnamed_addr #0 !dbg !3164 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3270, !tbaa !3072
  %2 = icmp eq %struct.client* %1, null, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br i1 %2, label %8, label %3, !dbg !3272

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3273
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3274, !tbaa !3072
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !3275
  %6 = load i32, i32* %5, align 8, !dbg !3276, !tbaa !1112
  %7 = and i32 %6, -3, !dbg !3276
  store i32 %7, i32* %5, align 8, !dbg !3276, !tbaa !1112
  tail call void @freeClient(%struct.client* %4) #8, !dbg !3277
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3278, !tbaa !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3279
  br label %8, !dbg !3279

; <label>:8:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3279
  ret void, !dbg !3279
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @disconnectSlaves() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationResurrectCachedMaster(i32) local_unnamed_addr #0 !dbg !3280 {
  %2 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3286, !tbaa !3072
  store i64 %2, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3287, !tbaa !2085
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3288, !tbaa !3072
  %3 = inttoptr i64 %2 to %struct.client*, !dbg !3289
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 1, !dbg !3290
  store i32 %0, i32* %4, align 8, !dbg !3291, !tbaa !481
  %5 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !3292
  %6 = load i32, i32* %5, align 8, !dbg !3293, !tbaa !1112
  %7 = and i32 %6, -1089, !dbg !3293
  store i32 %7, i32* %5, align 8, !dbg !3293, !tbaa !1112
  %8 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !3294
  store i32 1, i32* %8, align 4, !dbg !3295, !tbaa !2454
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3296, !tbaa !1396
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 19, !dbg !3297
  store i64 %9, i64* %10, align 8, !dbg !3298, !tbaa !3299
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3300, !tbaa !2409
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3301, !tbaa !2834
  tail call void @linkClient(%struct.client* %3) #8, !dbg !3302
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3303, !tbaa !2067
  %12 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3305, !tbaa !2085
  %13 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %11, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #8, !dbg !3306
  %14 = icmp eq i32 %13, 0, !dbg !3306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3307
  br i1 %14, label %20, label %15, !dbg !3307

; <label>:15:                                     ; preds = %1
  %16 = tail call i32* @__errno() #8, !dbg !3308
  %17 = load i32, i32* %16, align 4, !dbg !3308, !tbaa !674
  %18 = tail call i8* @strerror(i32 %17) #8, !dbg !3310
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.160, i64 0, i64 0), i8* %18) #8, !dbg !3311
  %19 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3312, !tbaa !2085
  tail call void @freeClientAsync(%struct.client* %19) #8, !dbg !3313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3314
  br label %20, !dbg !3314

; <label>:20:                                     ; preds = %1, %15
  %21 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3315, !tbaa !2085
  %22 = tail call i32 @clientHasPendingReplies(%struct.client* %21) #8, !dbg !3317
  %23 = icmp eq i32 %22, 0, !dbg !3317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br i1 %23, label %34, label %24, !dbg !3318

; <label>:24:                                     ; preds = %20
  %25 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3319, !tbaa !2067
  %26 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3322, !tbaa !2085
  %27 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %25, i32 %0, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %26) #8, !dbg !3323
  %28 = icmp eq i32 %27, 0, !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br i1 %28, label %34, label %29, !dbg !3324

; <label>:29:                                     ; preds = %24
  %30 = tail call i32* @__errno() #8, !dbg !3325
  %31 = load i32, i32* %30, align 4, !dbg !3325, !tbaa !674
  %32 = tail call i8* @strerror(i32 %31) #8, !dbg !3327
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.161, i64 0, i64 0), i8* %32) #8, !dbg !3328
  %33 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3329, !tbaa !2085
  tail call void @freeClientAsync(%struct.client* %33) #8, !dbg !3330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  br label %34, !dbg !3331

; <label>:34:                                     ; preds = %24, %20, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  ret void, !dbg !3332
}

; Function Attrs: noredzone nounwind
define dso_local void @syncWithMaster(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !3333 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !3357
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3357
  %9 = bitcast i32* %6 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3362
  store i32 0, i32* %6, align 4, !dbg !3363, !tbaa !674
  %10 = bitcast i32* %7 to i8*, !dbg !3364
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3364
  store i32 4, i32* %7, align 4, !dbg !3365, !tbaa !674
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3366, !tbaa !2409
  %12 = icmp eq i32 %11, 0, !dbg !3368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3369
  br i1 %12, label %13, label %15, !dbg !3369

; <label>:13:                                     ; preds = %4
  %14 = tail call i32 @close(i32 %1) #8, !dbg !3370
  br label %203, !dbg !3372

; <label>:15:                                     ; preds = %4
  %16 = call i32 @getsockopt(i32 %1, i32 4095, i32 4103, i8* nonnull %9, i32* nonnull %7) #8, !dbg !3373
  %17 = icmp eq i32 %16, -1, !dbg !3375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3376
  br i1 %17, label %18, label %21, !dbg !3376

; <label>:18:                                     ; preds = %15
  %19 = call i32* @__errno() #8, !dbg !3377
  %20 = load i32, i32* %19, align 4, !dbg !3377, !tbaa !674
  store i32 %20, i32* %6, align 4, !dbg !3378, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  br label %23, !dbg !3379

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %6, align 4, !dbg !3380, !tbaa !674
  br label %23, !dbg !3380

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %20, %18 ], !dbg !3380
  %25 = icmp eq i32 %24, 0, !dbg !3380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3382
  br i1 %25, label %28, label %26, !dbg !3382

; <label>:26:                                     ; preds = %23
  %27 = call i8* @strerror(i32 %24) #8, !dbg !3383
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0), i8* %27) #8, !dbg !3385
  br label %191, !dbg !3386

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3387, !tbaa !2409
  %30 = icmp eq i32 %29, 2, !dbg !3389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3390
  br i1 %30, label %31, label %35, !dbg !3390

; <label>:31:                                     ; preds = %28
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !3391
  %32 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3393, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %32, i32 %1, i32 2) #8, !dbg !3394
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3395, !tbaa !2409
  %33 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i8* null) #10, !dbg !3396
  %34 = icmp eq i8* %33, null, !dbg !3397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3399
  br i1 %34, label %203, label %201, !dbg !3399

; <label>:35:                                     ; preds = %28
  %36 = icmp eq i32 %29, 3, !dbg !3400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3402
  br i1 %36, label %37, label %49, !dbg !3402

; <label>:37:                                     ; preds = %35
  %38 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3403
  %39 = load i8, i8* %38, align 1, !dbg !3405, !tbaa !470
  %40 = icmp eq i8 %39, 43, !dbg !3407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3408
  br i1 %40, label %48, label %41, !dbg !3408

; <label>:41:                                     ; preds = %37
  %42 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i64 7) #8, !dbg !3409
  %43 = icmp eq i32 %42, 0, !dbg !3410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3411
  br i1 %43, label %48, label %44, !dbg !3411

; <label>:44:                                     ; preds = %41
  %45 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i64 0, i64 0), i64 28) #8, !dbg !3412
  %46 = icmp eq i32 %45, 0, !dbg !3413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3414
  br i1 %46, label %48, label %47, !dbg !3414

; <label>:47:                                     ; preds = %44
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* %38) #8, !dbg !3415
  call void @sdsfree(i8* %38) #8, !dbg !3417
  br label %191, !dbg !3418

; <label>:48:                                     ; preds = %37, %41, %44
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.118, i64 0, i64 0)) #8, !dbg !3419
  call void @sdsfree(i8* %38) #8, !dbg !3421
  store i32 4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3422, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  br label %51, !dbg !3424

; <label>:49:                                     ; preds = %35
  %50 = icmp eq i32 %29, 4, !dbg !3425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  br i1 %50, label %51, label %59, !dbg !3424

; <label>:51:                                     ; preds = %48, %49
  %52 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 195), align 8, !dbg !3427, !tbaa !3430
  %53 = icmp eq i8* %52, null, !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3432
  br i1 %53, label %58, label %54, !dbg !3432

; <label>:54:                                     ; preds = %51
  %55 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %52, i8* null) #10, !dbg !3433
  %56 = icmp eq i8* %55, null, !dbg !3435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  br i1 %56, label %57, label %201, !dbg !3437

; <label>:57:                                     ; preds = %54
  store i32 5, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3438, !tbaa !2409
  br label %203, !dbg !3439

; <label>:58:                                     ; preds = %51
  store i32 6, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3440, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3442
  br label %67, !dbg !3443

; <label>:59:                                     ; preds = %49
  %60 = icmp eq i32 %29, 5, !dbg !3444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3443
  br i1 %60, label %61, label %68, !dbg !3443

; <label>:61:                                     ; preds = %59
  %62 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3446
  %63 = load i8, i8* %62, align 1, !dbg !3448, !tbaa !470
  %64 = icmp eq i8 %63, 45, !dbg !3450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3451
  br i1 %64, label %65, label %66, !dbg !3451

; <label>:65:                                     ; preds = %61
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.120, i64 0, i64 0), i8* %62) #8, !dbg !3452
  call void @sdsfree(i8* %62) #8, !dbg !3454
  br label %191, !dbg !3455

; <label>:66:                                     ; preds = %61
  call void @sdsfree(i8* %62) #8, !dbg !3456
  store i32 6, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3457, !tbaa !2409
  br label %67, !dbg !3458

; <label>:67:                                     ; preds = %58, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3460
  br label %70, !dbg !3460

; <label>:68:                                     ; preds = %59
  %69 = icmp eq i32 %29, 6, !dbg !3461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3460
  br i1 %69, label %70, label %81, !dbg !3460

; <label>:70:                                     ; preds = %67, %68
  %71 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 216), align 8, !dbg !3462, !tbaa !3463
  %72 = icmp eq i32 %71, 0, !dbg !3464
  %73 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 27), align 8, !dbg !3465
  %74 = select i1 %72, i32 %73, i32 %71, !dbg !3464
  %75 = sext i32 %74 to i64, !dbg !3464
  %76 = call i8* @sdsfromlonglong(i64 %75) #8, !dbg !3466
  %77 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* %76, i8* null) #10, !dbg !3468
  call void @sdsfree(i8* %76) #8, !dbg !3469
  %78 = icmp eq i8* %77, null, !dbg !3470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3472
  br i1 %78, label %80, label %79, !dbg !3472

; <label>:79:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3473
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %201

; <label>:80:                                     ; preds = %70
  call void @sdsfree(i8* null) #8, !dbg !3474
  store i32 7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3475, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3476
  br label %203

; <label>:81:                                     ; preds = %68
  %82 = icmp eq i32 %29, 7, !dbg !3477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3479
  br i1 %82, label %83, label %89, !dbg !3479

; <label>:83:                                     ; preds = %81
  %84 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3480
  %85 = load i8, i8* %84, align 1, !dbg !3482, !tbaa !470
  %86 = icmp eq i8 %85, 45, !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  br i1 %86, label %87, label %88, !dbg !3485

; <label>:87:                                     ; preds = %83
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.122, i64 0, i64 0), i8* %84) #8, !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3488
  br label %88, !dbg !3488

; <label>:88:                                     ; preds = %87, %83
  call void @sdsfree(i8* %84) #8, !dbg !3489
  store i32 8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3490, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3491
  br label %89, !dbg !3491

; <label>:89:                                     ; preds = %88, %81
  %90 = phi i32 [ 8, %88 ], [ %29, %81 ], !dbg !3492
  %91 = icmp eq i32 %90, 8, !dbg !3494
  %92 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 217), align 8, !dbg !3495
  %93 = icmp eq i8* %92, null, !dbg !3496
  %94 = and i1 %91, %93, !dbg !3497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3497
  br i1 %94, label %95, label %96, !dbg !3497

; <label>:95:                                     ; preds = %89
  store i32 10, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3498, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  br label %111, !dbg !3502

; <label>:96:                                     ; preds = %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  br i1 %91, label %97, label %101, !dbg !3501

; <label>:97:                                     ; preds = %96
  %98 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i8* %92, i8* null) #10, !dbg !3503
  %99 = icmp eq i8* %98, null, !dbg !3506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3508
  br i1 %99, label %100, label %201, !dbg !3508

; <label>:100:                                    ; preds = %97
  call void @sdsfree(i8* null) #8, !dbg !3509
  store i32 9, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3510, !tbaa !2409
  br label %203, !dbg !3511

; <label>:101:                                    ; preds = %96
  %102 = icmp eq i32 %90, 9, !dbg !3512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3514
  br i1 %102, label %103, label %109, !dbg !3514

; <label>:103:                                    ; preds = %101
  %104 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3515
  %105 = load i8, i8* %104, align 1, !dbg !3517, !tbaa !470
  %106 = icmp eq i8 %105, 45, !dbg !3519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3520
  br i1 %106, label %107, label %108, !dbg !3520

; <label>:107:                                    ; preds = %103
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), i8* %104) #8, !dbg !3521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  br label %108, !dbg !3523

; <label>:108:                                    ; preds = %103, %107
  call void @sdsfree(i8* %104) #8, !dbg !3524
  store i32 10, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3525, !tbaa !2409
  br label %111, !dbg !3502

; <label>:109:                                    ; preds = %101
  %110 = icmp eq i32 %90, 10, !dbg !3526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3502
  br i1 %110, label %112, label %116, !dbg !3502

; <label>:111:                                    ; preds = %108, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3502
  br label %112, !dbg !3529

; <label>:112:                                    ; preds = %111, %109
  %113 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* null) #10, !dbg !3529
  %114 = icmp eq i8* %113, null, !dbg !3531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3533
  br i1 %114, label %115, label %201, !dbg !3533

; <label>:115:                                    ; preds = %112
  call void @sdsfree(i8* null) #8, !dbg !3534
  store i32 11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3535, !tbaa !2409
  br label %203, !dbg !3536

; <label>:116:                                    ; preds = %109
  %117 = icmp eq i32 %90, 11, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3539
  br i1 %117, label %118, label %124, !dbg !3539

; <label>:118:                                    ; preds = %116
  %119 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3540
  %120 = load i8, i8* %119, align 1, !dbg !3542, !tbaa !470
  %121 = icmp eq i8 %120, 45, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  br i1 %121, label %122, label %123, !dbg !3545

; <label>:122:                                    ; preds = %118
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.124, i64 0, i64 0), i8* %119) #8, !dbg !3546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3548
  br label %123, !dbg !3548

; <label>:123:                                    ; preds = %118, %122
  call void @sdsfree(i8* %119) #8, !dbg !3549
  store i32 12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3550, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3552
  br label %126, !dbg !3552

; <label>:124:                                    ; preds = %116
  %125 = icmp eq i32 %90, 12, !dbg !3553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3552
  br i1 %125, label %126, label %132, !dbg !3552

; <label>:126:                                    ; preds = %123, %124
  %127 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 0) #10, !dbg !3555
  %128 = icmp eq i32 %127, 0, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3559
  br i1 %128, label %129, label %131, !dbg !3559

; <label>:129:                                    ; preds = %126
  %130 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.125, i64 0, i64 0)) #8, !dbg !3560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3562
  br label %201, !dbg !3562

; <label>:131:                                    ; preds = %126
  store i32 13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3563, !tbaa !2409
  br label %203, !dbg !3564

; <label>:132:                                    ; preds = %124
  %133 = icmp eq i32 %90, 13, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  br i1 %133, label %135, label %134, !dbg !3567

; <label>:134:                                    ; preds = %132
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.126, i64 0, i64 0), i32 %90) #8, !dbg !3568
  br label %191, !dbg !3570

; <label>:135:                                    ; preds = %132
  %136 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 1) #10, !dbg !3571
  %137 = icmp eq i32 %136, 1, !dbg !3573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3575
  br i1 %137, label %203, label %138, !dbg !3575

; <label>:138:                                    ; preds = %135
  %139 = icmp eq i32 %136, 5, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3578
  br i1 %139, label %193, label %140, !dbg !3578

; <label>:140:                                    ; preds = %138
  %141 = icmp eq i32 %136, 2, !dbg !3579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3581
  br i1 %141, label %142, label %143, !dbg !3581

; <label>:142:                                    ; preds = %140
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !3582
  br label %203, !dbg !3584

; <label>:143:                                    ; preds = %140
  call void @disconnectSlaves() #8, !dbg !3585
  %144 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3586, !tbaa !558
  %145 = getelementptr inbounds %struct.list, %struct.list* %144, i64 0, i32 5, !dbg !3586
  %146 = load i64, i64* %145, align 8, !dbg !3586, !tbaa !559
  %147 = icmp eq i64 %146, 0, !dbg !3586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3586
  br i1 %147, label %149, label %148, !dbg !3586

; <label>:148:                                    ; preds = %143
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !3586
  call void @_exit(i32 1) #9, !dbg !3586
  unreachable

; <label>:149:                                    ; preds = %143
  %150 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3588, !tbaa !511
  call void @zfree(i8* %150) #8, !dbg !3589
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3590, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3591
  %151 = icmp eq i32 %136, 4, !dbg !3592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3594
  br i1 %151, label %152, label %162, !dbg !3594

; <label>:152:                                    ; preds = %149
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !3595
  %153 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !3597, !tbaa !2515
  %154 = mul nsw i32 %153, 1000, !dbg !3599
  %155 = sext i32 %154 to i64, !dbg !3600
  %156 = call i64 @syncWrite(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0), i64 6, i64 %155) #8, !dbg !3601
  %157 = icmp eq i64 %156, -1, !dbg !3602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3603
  br i1 %157, label %158, label %162, !dbg !3603

; <label>:158:                                    ; preds = %152
  %159 = call i32* @__errno() #8, !dbg !3604
  %160 = load i32, i32* %159, align 4, !dbg !3604, !tbaa !674
  %161 = call i8* @strerror(i32 %160) #8, !dbg !3606
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.130, i64 0, i64 0), i8* %161) #8, !dbg !3607
  br label %191, !dbg !3608

; <label>:162:                                    ; preds = %152, %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  %163 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3610, !tbaa !1396
  %164 = trunc i64 %163 to i32, !dbg !3612
  %165 = call i32 @getpid() #8, !dbg !3613
  %166 = sext i32 %165 to i64, !dbg !3614
  %167 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %164, i64 %166) #8, !dbg !3615
  %168 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3616
  %169 = icmp eq i32 %168, -1, !dbg !3617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %169, label %170, label %179, !dbg !3619

; <label>:170:                                    ; preds = %162
  %171 = call i32 @sleep(i32 1) #8, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  %172 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3610, !tbaa !1396
  %173 = trunc i64 %172 to i32, !dbg !3612
  %174 = call i32 @getpid() #8, !dbg !3613
  %175 = sext i32 %174 to i64, !dbg !3614
  %176 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %173, i64 %175) #8, !dbg !3615
  %177 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3616
  %178 = icmp eq i32 %177, -1, !dbg !3617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %178, label %204, label %179, !dbg !3619

; <label>:179:                                    ; preds = %222, %213, %204, %170, %162
  %180 = phi i32 [ %168, %162 ], [ %177, %170 ], [ %211, %204 ], [ %220, %213 ], [ %229, %222 ], !dbg !3616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  %181 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3622, !tbaa !2067
  %182 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %181, i32 %1, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readSyncBulkPayload, i8* null) #8, !dbg !3624
  %183 = icmp eq i32 %182, -1, !dbg !3625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3626
  br i1 %183, label %184, label %188, !dbg !3626

; <label>:184:                                    ; preds = %179
  %185 = call i32* @__errno() #8, !dbg !3627
  %186 = load i32, i32* %185, align 4, !dbg !3627, !tbaa !674
  %187 = call i8* @strerror(i32 %186) #8, !dbg !3629
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.133, i64 0, i64 0), i8* %187, i32 %1) #8, !dbg !3630
  br label %191, !dbg !3631

; <label>:188:                                    ; preds = %179
  store i32 14, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3632, !tbaa !2409
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203) to <2 x i64>*), align 8, !dbg !3633, !tbaa !678
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !3634, !tbaa !2678
  store i32 %180, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3635, !tbaa !2648
  %189 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3636, !tbaa !1396
  store i64 %189, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3637, !tbaa !2540
  %190 = call i8* @zstrdup(i8* nonnull %8) #8, !dbg !3638
  store i8* %190, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3639, !tbaa !2715
  br label %203, !dbg !3640

; <label>:191:                                    ; preds = %26, %47, %65, %134, %158, %231, %184, %201
  %192 = phi i32 [ %180, %184 ], [ -1, %231 ], [ -1, %158 ], [ -1, %134 ], [ -1, %65 ], [ -1, %47 ], [ -1, %201 ], [ -1, %26 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  br label %193, !dbg !3642

; <label>:193:                                    ; preds = %191, %138
  %194 = phi i32 [ -1, %138 ], [ %192, %191 ], !dbg !3643
  %195 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3642, !tbaa !2067
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %195, i32 %1, i32 3) #8, !dbg !3644
  %196 = icmp eq i32 %194, -1, !dbg !3645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3647
  br i1 %196, label %199, label %197, !dbg !3647

; <label>:197:                                    ; preds = %193
  %198 = call i32 @close(i32 %194) #8, !dbg !3648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3648
  br label %199, !dbg !3648

; <label>:199:                                    ; preds = %193, %197
  %200 = call i32 @close(i32 %1) #8, !dbg !3649
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3650, !tbaa !2422
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3651, !tbaa !2409
  br label %203, !dbg !3652

; <label>:201:                                    ; preds = %79, %31, %54, %97, %112, %129
  %202 = phi i8* [ %33, %31 ], [ %55, %54 ], [ %98, %97 ], [ %113, %112 ], [ %130, %129 ], [ %77, %79 ], !dbg !3653
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.134, i64 0, i64 0), i8* %202) #8, !dbg !3654
  call void @sdsfree(i8* %202) #8, !dbg !3655
  br label %191, !dbg !3656

; <label>:203:                                    ; preds = %135, %31, %80, %199, %188, %142, %131, %115, %100, %57, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3657
  ret void, !dbg !3657

; <label>:204:                                    ; preds = %170
  %205 = call i32 @sleep(i32 1) #8, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  %206 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3610, !tbaa !1396
  %207 = trunc i64 %206 to i32, !dbg !3612
  %208 = call i32 @getpid() #8, !dbg !3613
  %209 = sext i32 %208 to i64, !dbg !3614
  %210 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %207, i64 %209) #8, !dbg !3615
  %211 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3616
  %212 = icmp eq i32 %211, -1, !dbg !3617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %212, label %213, label %179, !dbg !3619

; <label>:213:                                    ; preds = %204
  %214 = call i32 @sleep(i32 1) #8, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  %215 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3610, !tbaa !1396
  %216 = trunc i64 %215 to i32, !dbg !3612
  %217 = call i32 @getpid() #8, !dbg !3613
  %218 = sext i32 %217 to i64, !dbg !3614
  %219 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %216, i64 %218) #8, !dbg !3615
  %220 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3616
  %221 = icmp eq i32 %220, -1, !dbg !3617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %221, label %222, label %179, !dbg !3619

; <label>:222:                                    ; preds = %213
  %223 = call i32 @sleep(i32 1) #8, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  %224 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3610, !tbaa !1396
  %225 = trunc i64 %224 to i32, !dbg !3612
  %226 = call i32 @getpid() #8, !dbg !3613
  %227 = sext i32 %226 to i64, !dbg !3614
  %228 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %225, i64 %227) #8, !dbg !3615
  %229 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3616
  %230 = icmp eq i32 %229, -1, !dbg !3617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  br i1 %230, label %231, label %179, !dbg !3619

; <label>:231:                                    ; preds = %222
  %232 = call i32 @sleep(i32 1) #8, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  %233 = call i32* @__errno() #8, !dbg !3658
  %234 = load i32, i32* %233, align 4, !dbg !3658, !tbaa !674
  %235 = call i8* @strerror(i32 %234) #8, !dbg !3661
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.132, i64 0, i64 0), i8* %235) #8, !dbg !3662
  br label %191, !dbg !3663
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
define dso_local i32 @connectWithMaster() local_unnamed_addr #0 !dbg !3664 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3667, !tbaa !762
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3668, !tbaa !3669
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !3670, !tbaa !3671
  %4 = icmp eq i32 %3, 0, !dbg !3670
  %5 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 29, i64 0), align 8, !dbg !3670
  %6 = select i1 %4, i8* null, i8* %5, !dbg !3670
  %7 = tail call i32 @anetTcpNonBlockBestEffortBindConnect(i8* null, i8* %1, i32 %2, i8* %6) #8, !dbg !3672
  %8 = icmp eq i32 %7, -1, !dbg !3674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3676
  br i1 %8, label %9, label %13, !dbg !3676

; <label>:9:                                      ; preds = %0
  %10 = tail call i32* @__errno() #8, !dbg !3677
  %11 = load i32, i32* %10, align 4, !dbg !3677, !tbaa !674
  %12 = tail call i8* @strerror(i32 %11) #8, !dbg !3679
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.135, i64 0, i64 0), i8* %12) #8, !dbg !3680
  br label %21, !dbg !3681

; <label>:13:                                     ; preds = %0
  %14 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3682, !tbaa !2067
  %15 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %14, i32 %7, i32 3, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @syncWithMaster, i8* null) #8, !dbg !3684
  %16 = icmp eq i32 %15, -1, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3686
  br i1 %16, label %17, label %19, !dbg !3686

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @close(i32 %7) #8, !dbg !3687
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.136, i64 0, i64 0)) #8, !dbg !3689
  br label %21, !dbg !3690

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3691, !tbaa !1396
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3692, !tbaa !2540
  store i32 %7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3693, !tbaa !2422
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3694, !tbaa !2409
  br label %21, !dbg !3695

; <label>:21:                                     ; preds = %19, %17, %9
  %22 = phi i32 [ -1, %9 ], [ -1, %17 ], [ 0, %19 ], !dbg !3696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3698
  ret i32 %22, !dbg !3698
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @undoConnectWithMaster() local_unnamed_addr #0 !dbg !2607 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3699, !tbaa !2422
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3701, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %2, i32 %1, i32 3) #8, !dbg !3702
  %3 = tail call i32 @close(i32 %1) #8, !dbg !3703
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3704, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3705
  ret void, !dbg !3705
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationAbortSyncTransfer() local_unnamed_addr #0 !dbg !3706 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3707, !tbaa !2409
  %2 = icmp eq i32 %1, 14, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  br i1 %2, label %4, label %3, !dbg !3707

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 1951) #8, !dbg !3707
  tail call void @_exit(i32 1) #9, !dbg !3707
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3708, !tbaa !2422
  %6 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3711, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %6, i32 %5, i32 3) #8, !dbg !3712
  %7 = tail call i32 @close(i32 %5) #8, !dbg !3713
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3714, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3715
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3716, !tbaa !2648
  %9 = tail call i32 @close(i32 %8) #8, !dbg !3717
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3718, !tbaa !2715
  %11 = tail call i32 @unlink(i8* %10) #8, !dbg !3719
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3720, !tbaa !2715
  tail call void @zfree(i8* %12) #8, !dbg !3721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3722
  ret void, !dbg !3722
}

; Function Attrs: noredzone
declare dso_local i32 @unlink(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationSetMaster(i8*, i32) local_unnamed_addr #0 !dbg !3723 {
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3732, !tbaa !762
  %4 = icmp eq i8* %3, null, !dbg !3733
  tail call void @sdsfree(i8* %3) #8, !dbg !3734
  %5 = tail call i8* @sdsnew(i8* %0) #8, !dbg !3735
  store i8* %5, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3736, !tbaa !762
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3737, !tbaa !3669
  %6 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3738, !tbaa !2085
  %7 = icmp eq %struct.client* %6, null, !dbg !3740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  br i1 %7, label %9, label %8, !dbg !3741

; <label>:8:                                      ; preds = %2
  tail call void @freeClient(%struct.client* nonnull %6) #8, !dbg !3742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3744
  br label %9, !dbg !3744

; <label>:9:                                      ; preds = %2, %8
  tail call void @disconnectAllBlockedClients() #8, !dbg !3745
  tail call void @disconnectSlaves() #8, !dbg !3746
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3747, !tbaa !2409
  %11 = icmp eq i32 %10, 14, !dbg !3749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3750
  br i1 %11, label %12, label %13, !dbg !3750

; <label>:12:                                     ; preds = %9
  tail call void @replicationAbortSyncTransfer() #8, !dbg !3751
  br label %22, !dbg !3752

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %10, 2, !dbg !3753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3754
  br i1 %14, label %18, label %15, !dbg !3754

; <label>:15:                                     ; preds = %13
  %16 = add i32 %10, -3, !dbg !3755
  %17 = icmp ugt i32 %16, 10, !dbg !3755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  br i1 %17, label %23, label %18, !dbg !3758

; <label>:18:                                     ; preds = %15, %13
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3759, !tbaa !2422
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3762, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %20, i32 %19, i32 3) #8, !dbg !3763
  %21 = tail call i32 @close(i32 %19) #8, !dbg !3764
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3765, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3766
  br label %22

; <label>:22:                                     ; preds = %18, %12
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3767, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %23, !dbg !3768

; <label>:23:                                     ; preds = %15, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3770
  br i1 %4, label %24, label %25, !dbg !3770

; <label>:24:                                     ; preds = %23
  tail call void @replicationCacheMasterUsingMyself() #10, !dbg !3771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3771
  br label %25, !dbg !3771

; <label>:25:                                     ; preds = %24, %23
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3773, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3774
  ret void, !dbg !3774
}

; Function Attrs: noredzone
declare dso_local void @disconnectAllBlockedClients() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationCacheMasterUsingMyself() local_unnamed_addr #0 !dbg !3775 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3776, !tbaa !524
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3777, !tbaa !2456
  %2 = tail call %struct.client* @createClient(i32 -1) #8, !dbg !3781
  store %struct.client* %2, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3782, !tbaa !2085
  %3 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 21, !dbg !3783
  %4 = load i32, i32* %3, align 8, !dbg !3784, !tbaa !1112
  %5 = or i32 %4, 2, !dbg !3784
  store i32 %5, i32* %3, align 8, !dbg !3784, !tbaa !1112
  %6 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 22, !dbg !3785
  store i32 1, i32* %6, align 4, !dbg !3786, !tbaa !2454
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3787, !tbaa !2456
  %8 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 30, !dbg !3788
  store i64 %7, i64* %8, align 8, !dbg !3789, !tbaa !2036
  %9 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 29, !dbg !3790
  store i64 %7, i64* %9, align 8, !dbg !3791, !tbaa !2461
  %10 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 34, i64 0, !dbg !3792
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !3793
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3794, !tbaa !2085
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 30, !dbg !3795
  %14 = load i64, i64* %13, align 8, !dbg !3795, !tbaa !2036
  %15 = icmp eq i64 %14, -1, !dbg !3796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3797
  br i1 %15, label %16, label %20, !dbg !3797

; <label>:16:                                     ; preds = %0
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 21, !dbg !3798
  %18 = load i32, i32* %17, align 8, !dbg !3799, !tbaa !1112
  %19 = or i32 %18, 65536, !dbg !3799
  store i32 %19, i32* %17, align 8, !dbg !3799, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3800
  br label %20, !dbg !3800

; <label>:20:                                     ; preds = %0, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3802
  %21 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 34, i64 0, !dbg !3803
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !3804
  %23 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3805, !tbaa !2085
  tail call void @unlinkClient(%struct.client* %23) #8, !dbg !3806
  %24 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3807, !tbaa !2085
  store i64 %24, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3808, !tbaa !3072
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3809, !tbaa !2085
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.158, i64 0, i64 0)) #8, !dbg !3810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3811
  ret void, !dbg !3811
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationUnsetMaster() local_unnamed_addr #0 !dbg !3812 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3813, !tbaa !762
  %2 = icmp eq i8* %1, null, !dbg !3815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3816
  br i1 %2, label %35, label %3, !dbg !3816

; <label>:3:                                      ; preds = %0
  tail call void @sdsfree(i8* nonnull %1) #8, !dbg !3817
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3818, !tbaa !762
  %4 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !3819
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3821, !tbaa !524
  %6 = add nsw i64 %5, 1, !dbg !3822
  store i64 %6, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3823, !tbaa !1342
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !3824
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !3826, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3827
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3828, !tbaa !1342
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %7, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !3829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3830
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3831, !tbaa !2085
  %9 = icmp eq %struct.client* %8, null, !dbg !3833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3834
  br i1 %9, label %11, label %10, !dbg !3834

; <label>:10:                                     ; preds = %3
  tail call void @freeClient(%struct.client* nonnull %8) #8, !dbg !3835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3835
  br label %11, !dbg !3835

; <label>:11:                                     ; preds = %3, %10
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3836, !tbaa !3072
  %13 = icmp eq %struct.client* %12, null, !dbg !3838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3839
  br i1 %13, label %19, label %14, !dbg !3839

; <label>:14:                                     ; preds = %11
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3840
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3841, !tbaa !3072
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 21, !dbg !3842
  %17 = load i32, i32* %16, align 8, !dbg !3843, !tbaa !1112
  %18 = and i32 %17, -3, !dbg !3843
  store i32 %18, i32* %16, align 8, !dbg !3843, !tbaa !1112
  tail call void @freeClient(%struct.client* %15) #8, !dbg !3844
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3845, !tbaa !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3846
  br label %19, !dbg !3846

; <label>:19:                                     ; preds = %11, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3846
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3847, !tbaa !2409
  %21 = icmp eq i32 %20, 14, !dbg !3849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3850
  br i1 %21, label %22, label %23, !dbg !3850

; <label>:22:                                     ; preds = %19
  tail call void @replicationAbortSyncTransfer() #8, !dbg !3851
  br label %32, !dbg !3852

; <label>:23:                                     ; preds = %19
  %24 = icmp eq i32 %20, 2, !dbg !3853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3854
  br i1 %24, label %28, label %25, !dbg !3854

; <label>:25:                                     ; preds = %23
  %26 = add i32 %20, -3, !dbg !3855
  %27 = icmp ugt i32 %26, 10, !dbg !3855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3858
  br i1 %27, label %33, label %28, !dbg !3858

; <label>:28:                                     ; preds = %25, %23
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3859, !tbaa !2422
  %30 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3862, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %30, i32 %29, i32 3) #8, !dbg !3863
  %31 = tail call i32 @close(i32 %29) #8, !dbg !3864
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3865, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3866
  br label %32

; <label>:32:                                     ; preds = %28, %22
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3867, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %33, !dbg !3868

; <label>:33:                                     ; preds = %25, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3869
  tail call void @disconnectSlaves() #8, !dbg !3870
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3871, !tbaa !2409
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !3872, !tbaa !775
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3873, !tbaa !1396
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !3874, !tbaa !3875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3876
  br label %35, !dbg !3876

; <label>:35:                                     ; preds = %0, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3876
  ret void, !dbg !3876
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationHandleMasterDisconnection() local_unnamed_addr #5 !dbg !3877 {
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3878, !tbaa !2085
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3879, !tbaa !2409
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3880, !tbaa !1396
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3881, !tbaa !2834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3882
  ret void, !dbg !3882
}

; Function Attrs: noredzone nounwind
define dso_local void @replicaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !3883 {
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3895, !tbaa !3897
  %4 = icmp eq i32 %3, 0, !dbg !3898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3899
  br i1 %4, label %6, label %5, !dbg !3899

; <label>:5:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !3900
  br label %69, !dbg !3902

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3903
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3903, !tbaa !1323
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3904
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3904, !tbaa !784
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3905
  %12 = load i8*, i8** %11, align 8, !dbg !3905, !tbaa !640
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0)) #11, !dbg !3906
  %14 = icmp eq i32 %13, 0, !dbg !3906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3907
  br i1 %14, label %15, label %28, !dbg !3907

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3908
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3908, !tbaa !784
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !3909
  %19 = load i8*, i8** %18, align 8, !dbg !3909, !tbaa !640
  %20 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0)) #11, !dbg !3910
  %21 = icmp eq i32 %20, 0, !dbg !3910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3911
  br i1 %21, label %22, label %28, !dbg !3911

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3912, !tbaa !762
  %24 = icmp eq i8* %23, null, !dbg !3913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3914
  br i1 %24, label %67, label %25, !dbg !3914

; <label>:25:                                     ; preds = %22
  tail call void @replicationUnsetMaster() #10, !dbg !3915
  %26 = tail call i8* @sdsempty() #8, !dbg !3916
  %27 = tail call i8* @catClientInfoString(i8* %26, %struct.client* nonnull %0) #8, !dbg !3917
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.141, i64 0, i64 0), i8* %27) #8, !dbg !3919
  tail call void @sdsfree(i8* %27) #8, !dbg !3920
  br label %66, !dbg !3921

; <label>:28:                                     ; preds = %15, %6
  %29 = bitcast i64* %2 to i8*, !dbg !3922
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3922
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3923
  %31 = load i32, i32* %30, align 8, !dbg !3923, !tbaa !1112
  %32 = and i32 %31, 1, !dbg !3925
  %33 = icmp eq i32 %32, 0, !dbg !3925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3926
  br i1 %33, label %35, label %34, !dbg !3926

; <label>:34:                                     ; preds = %28
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.142, i64 0, i64 0)) #8, !dbg !3927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3929
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3930
  br label %69

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3931
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3931, !tbaa !784
  %38 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %37, i64* nonnull %2, i8* null) #8, !dbg !3934
  %39 = icmp eq i32 %38, 0, !dbg !3935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3936
  br i1 %39, label %41, label %40, !dbg !3936

; <label>:40:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3930
  br label %69

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3938, !tbaa !762
  %43 = icmp eq i8* %42, null, !dbg !3940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3941
  %44 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3942, !tbaa !1323
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 1
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !3942, !tbaa !784
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %46, i64 0, i32 2
  %48 = load i8*, i8** %47, align 8, !dbg !3942, !tbaa !640
  br i1 %43, label %59, label %49, !dbg !3941

; <label>:49:                                     ; preds = %41
  %50 = call i32 @strcasecmp(i8* nonnull %42, i8* %48) #11, !dbg !3943
  %51 = icmp eq i32 %50, 0, !dbg !3943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3944
  br i1 %51, label %52, label %59, !dbg !3944

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3945, !tbaa !3669
  %54 = sext i32 %53 to i64, !dbg !3946
  %55 = load i64, i64* %2, align 8, !dbg !3947, !tbaa !678
  %56 = icmp eq i64 %55, %54, !dbg !3948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  br i1 %56, label %57, label %59, !dbg !3949

; <label>:57:                                     ; preds = %52
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.143, i64 0, i64 0)) #8, !dbg !3950
  %58 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.144, i64 0, i64 0)) #8, !dbg !3952
  call void @addReplySds(%struct.client* nonnull %0, i8* %58) #8, !dbg !3953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3930
  br label %69

; <label>:59:                                     ; preds = %41, %49, %52
  %60 = load i64, i64* %2, align 8, !dbg !3955, !tbaa !678
  %61 = trunc i64 %60 to i32, !dbg !3955
  call void @replicationSetMaster(i8* %48, i32 %61) #10, !dbg !3956
  %62 = call i8* @sdsempty() #8, !dbg !3957
  %63 = call i8* @catClientInfoString(i8* %62, %struct.client* nonnull %0) #8, !dbg !3958
  %64 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3960, !tbaa !762
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3961, !tbaa !3669
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.145, i64 0, i64 0), i8* %64, i32 %65, i8* %63) #8, !dbg !3962
  call void @sdsfree(i8* %63) #8, !dbg !3963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3930
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3930
  br label %66

; <label>:66:                                     ; preds = %25, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %67, !dbg !3964

; <label>:67:                                     ; preds = %66, %22
  %68 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3964, !tbaa !2051
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %68) #8, !dbg !3965
  br label %69, !dbg !3966

; <label>:69:                                     ; preds = %57, %40, %34, %67, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3966
  ret void, !dbg !3966
}

; Function Attrs: noredzone
declare dso_local i8* @catClientInfoString(i8*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @roleCommand(%struct.client*) local_unnamed_addr #0 !dbg !3967 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca [46 x i8], align 16
  %4 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3983, !tbaa !762
  %5 = icmp eq i8* %4, null, !dbg !3984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3985
  br i1 %5, label %6, label %50, !dbg !3985

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.listIter* %2 to i8*, !dbg !3986
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3986
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #8, !dbg !3988
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 6) #8, !dbg !3989
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3990, !tbaa !524
  tail call void @addReplyLongLong(%struct.client* %0, i64 %8) #8, !dbg !3991
  %9 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #8, !dbg !3992
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3994, !tbaa !558
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #8, !dbg !3996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3998
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  br i1 %12, label %47, label %13, !dbg !3997

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  br label %15, !dbg !3997

; <label>:15:                                     ; preds = %13, %43
  %16 = phi %struct.listNode* [ %11, %13 ], [ %45, %43 ]
  %17 = phi i32 [ 0, %13 ], [ %44, %43 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 2, !dbg !4000
  %19 = bitcast i8** %18 to %struct.client**, !dbg !4000
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !4000, !tbaa !803
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %14) #7, !dbg !4002
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 36, i64 0, !dbg !4004
  %22 = load i8, i8* %21, align 1, !dbg !4006, !tbaa !470
  %23 = icmp eq i8 %22, 0, !dbg !4008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4009
  br i1 %23, label %24, label %29, !dbg !4009

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 1, !dbg !4010
  %26 = load i32, i32* %25, align 8, !dbg !4010, !tbaa !481
  %27 = call i32 @anetPeerToString(i32 %26, i8* nonnull %14, i64 46, i32* null) #8, !dbg !4013
  %28 = icmp eq i32 %27, -1, !dbg !4014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4016
  br i1 %28, label %43, label %29, !dbg !4015, !llvm.loop !4017

; <label>:29:                                     ; preds = %24, %15
  %30 = phi i8* [ %21, %15 ], [ %14, %24 ], !dbg !4019
  %31 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 23, !dbg !4020
  %32 = load i32, i32* %31, align 8, !dbg !4020, !tbaa !808
  %33 = icmp eq i32 %32, 9, !dbg !4022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4023
  br i1 %33, label %34, label %41, !dbg !4023, !llvm.loop !4017

; <label>:34:                                     ; preds = %29
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #8, !dbg !4024
  call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %30) #8, !dbg !4025
  %35 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 35, !dbg !4026
  %36 = load i32, i32* %35, align 4, !dbg !4026, !tbaa !498
  %37 = sext i32 %36 to i64, !dbg !4027
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %37) #8, !dbg !4028
  %38 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 31, !dbg !4029
  %39 = load i64, i64* %38, align 8, !dbg !4029, !tbaa !1994
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %39) #8, !dbg !4030
  %40 = add nsw i32 %17, 1, !dbg !4031
  br label %41, !dbg !4018

; <label>:41:                                     ; preds = %29, %34
  %42 = phi i32 [ %40, %34 ], [ %17, %29 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4032
  br label %43, !dbg !4018

; <label>:43:                                     ; preds = %41, %24
  %44 = phi i32 [ %17, %24 ], [ %42, %41 ], !dbg !4019
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %14) #7, !dbg !4018
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3998
  %46 = icmp eq %struct.listNode* %45, null, !dbg !3997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  br i1 %46, label %47, label %15, !dbg !3997

; <label>:47:                                     ; preds = %43, %6
  %48 = phi i32 [ 0, %6 ], [ %44, %43 ], !dbg !3987
  %49 = sext i32 %48 to i64, !dbg !4033
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %9, i64 %49) #8, !dbg !4034
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !4035
  br label %74, !dbg !4036

; <label>:50:                                     ; preds = %1
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 5) #8, !dbg !4038
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0), i64 5) #8, !dbg !4039
  %51 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4040, !tbaa !762
  tail call void @addReplyBulkCString(%struct.client* %0, i8* %51) #8, !dbg !4041
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !4042, !tbaa !3669
  %53 = sext i32 %52 to i64, !dbg !4043
  tail call void @addReplyLongLong(%struct.client* %0, i64 %53) #8, !dbg !4044
  %54 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4045, !tbaa !2409
  %55 = add i32 %54, -3, !dbg !4048
  %56 = icmp ugt i32 %55, 10, !dbg !4048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4051
  br i1 %56, label %57, label %65, !dbg !4050

; <label>:57:                                     ; preds = %50
  switch i32 %54, label %62 [
    i32 0, label %63
    i32 1, label %58
    i32 2, label %59
    i32 14, label %60
    i32 15, label %61
  ], !dbg !4053

; <label>:58:                                     ; preds = %57
  br label %63, !dbg !4055

; <label>:59:                                     ; preds = %57
  br label %63, !dbg !4057

; <label>:60:                                     ; preds = %57
  br label %63, !dbg !4058

; <label>:61:                                     ; preds = %57
  br label %63, !dbg !4059

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !4060

; <label>:63:                                     ; preds = %57, %62, %61, %60, %59, %58
  %64 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0), %58 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i64 0, i64 0), %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i64 0, i64 0), %61 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i64 0, i64 0), %62 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), %57 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4061
  br label %65, !dbg !4062

; <label>:65:                                     ; preds = %63, %50
  %66 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0), %50 ], [ %64, %63 ], !dbg !4061
  tail call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %66) #8, !dbg !4062
  %67 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4063, !tbaa !2085
  %68 = icmp eq %struct.client* %67, null, !dbg !4064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  br i1 %68, label %72, label %69, !dbg !4064

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.client, %struct.client* %67, i64 0, i32 30, !dbg !4065
  %71 = load i64, i64* %70, align 8, !dbg !4065, !tbaa !2036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  br label %72, !dbg !4064

; <label>:72:                                     ; preds = %65, %69
  %73 = phi i64 [ %71, %69 ], [ -1, %65 ], !dbg !4064
  tail call void @addReplyLongLong(%struct.client* %0, i64 %73) #8, !dbg !4066
  br label %74

; <label>:74:                                     ; preds = %72, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4067
  ret void, !dbg !4067
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
define dso_local void @replicationCacheMaster(%struct.client*) local_unnamed_addr #0 !dbg !4068 {
  %2 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4072, !tbaa !2085
  %3 = icmp ne %struct.client* %2, null, !dbg !4072
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !4072
  %5 = icmp eq %struct.client* %4, null, !dbg !4072
  %6 = and i1 %3, %5, !dbg !4072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4072
  br i1 %6, label %8, label %7, !dbg !4072

; <label>:7:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2192) #8, !dbg !4072
  tail call void @_exit(i32 1) #9, !dbg !4072
  unreachable

; <label>:8:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i64 0, i64 0)) #8, !dbg !4073
  tail call void @unlinkClient(%struct.client* %0) #8, !dbg !4074
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4075, !tbaa !2085
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i64 0, i32 4, !dbg !4076
  %11 = load i8*, i8** %10, align 8, !dbg !4076, !tbaa !4077
  tail call void @sdsclear(i8* %11) #8, !dbg !4078
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4079, !tbaa !2085
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 6, !dbg !4080
  %14 = load i8*, i8** %13, align 8, !dbg !4080, !tbaa !4081
  tail call void @sdsclear(i8* %14) #8, !dbg !4082
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4083, !tbaa !2085
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 30, !dbg !4084
  %17 = load i64, i64* %16, align 8, !dbg !4084, !tbaa !2036
  %18 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 29, !dbg !4085
  store i64 %17, i64* %18, align 8, !dbg !4086, !tbaa !2461
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4087
  %20 = load i32, i32* %19, align 8, !dbg !4087, !tbaa !1112
  %21 = and i32 %20, 8, !dbg !4089
  %22 = icmp eq i32 %21, 0, !dbg !4089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4090
  br i1 %22, label %24, label %23, !dbg !4090

; <label>:23:                                     ; preds = %8
  tail call void @discardTransaction(%struct.client* nonnull %0) #8, !dbg !4091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  br label %24, !dbg !4091

; <label>:24:                                     ; preds = %8, %23
  %25 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !4092
  %26 = load %struct.list*, %struct.list** %25, align 8, !dbg !4092, !tbaa !4093
  tail call void @listEmpty(%struct.list* %26) #8, !dbg !4094
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !4095
  %28 = bitcast i64* %27 to <2 x i64>*, !dbg !4096
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !dbg !4096, !tbaa !470
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !4097
  store i32 0, i32* %29, align 8, !dbg !4098, !tbaa !4099
  tail call void @resetClient(%struct.client* nonnull %0) #8, !dbg !4100
  %30 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !4101, !tbaa !2085
  store i64 %30, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !4102, !tbaa !3072
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !4103
  %32 = load i8*, i8** %31, align 8, !dbg !4103, !tbaa !4105
  %33 = icmp eq i8* %32, null, !dbg !4106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4107
  br i1 %33, label %35, label %34, !dbg !4107

; <label>:34:                                     ; preds = %24
  tail call void @sdsfree(i8* nonnull %32) #8, !dbg !4108
  store i8* null, i8** %31, align 8, !dbg !4110, !tbaa !4105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4111
  br label %35, !dbg !4111

; <label>:35:                                     ; preds = %24, %34
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4112, !tbaa !2085
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4114, !tbaa !2409
  %36 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4115, !tbaa !1396
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !4116, !tbaa !2834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4118
  ret void, !dbg !4118
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
define dso_local void @replicationScriptCacheInit() local_unnamed_addr #0 !dbg !4119 {
  store i32 10000, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !4120, !tbaa !4121
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @replScriptCacheDictType, i8* null) #8, !dbg !4122
  store %struct.dict* %1, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4123, !tbaa !1607
  %2 = tail call %struct.list* @listCreate() #8, !dbg !4124
  store %struct.list* %2, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4125, !tbaa !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4126
  ret void, !dbg !4126
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
define dso_local void @replicationScriptCacheAdd(i8*) local_unnamed_addr #0 !dbg !4127 {
  %2 = tail call i8* @sdsdup(i8* %0) #8, !dbg !4139
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4141, !tbaa !1610
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !4141
  %5 = load i64, i64* %4, align 8, !dbg !4141, !tbaa !559
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !4142, !tbaa !4121
  %7 = zext i32 %6 to i64, !dbg !4143
  %8 = icmp eq i64 %5, %7, !dbg !4144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4145
  br i1 %8, label %9, label %20, !dbg !4145

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 1, !dbg !4146
  %11 = load %struct.listNode*, %struct.listNode** %10, align 8, !dbg !4146, !tbaa !4147
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !4149
  %13 = load i8*, i8** %12, align 8, !dbg !4149, !tbaa !803
  %14 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4151, !tbaa !1607
  %15 = tail call i32 @dictDelete(%struct.dict* %14, i8* %13) #8, !dbg !4152
  %16 = icmp eq i32 %15, 0, !dbg !4154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4154
  br i1 %16, label %18, label %17, !dbg !4154

; <label>:17:                                     ; preds = %9
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2391) #8, !dbg !4154
  tail call void @_exit(i32 1) #9, !dbg !4154
  unreachable

; <label>:18:                                     ; preds = %9
  %19 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4155, !tbaa !1610
  tail call void @listDelNode(%struct.list* %19, %struct.listNode* %11) #8, !dbg !4156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4157
  br label %20, !dbg !4157

; <label>:20:                                     ; preds = %18, %1
  %21 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4158, !tbaa !1607
  %22 = tail call i32 @dictAdd(%struct.dict* %21, i8* %2, i8* null) #8, !dbg !4159
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4160, !tbaa !1610
  %24 = tail call %struct.list* @listAddNodeHead(%struct.list* %23, i8* %2) #8, !dbg !4161
  %25 = icmp eq i32 %22, 0, !dbg !4162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4162
  br i1 %25, label %27, label %26, !dbg !4162

; <label>:26:                                     ; preds = %20
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2398) #8, !dbg !4162
  tail call void @_exit(i32 1) #9, !dbg !4162
  unreachable

; <label>:27:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4163
  ret void, !dbg !4163
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
define dso_local i32 @replicationScriptCacheExists(i8*) local_unnamed_addr #0 !dbg !4164 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4170, !tbaa !1607
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %0) #8, !dbg !4171
  %4 = icmp ne %struct.dictEntry* %3, null, !dbg !4172
  %5 = zext i1 %4 to i32, !dbg !4172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4173
  ret i32 %5, !dbg !4173
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationRequestAckFromSlaves() local_unnamed_addr #5 !dbg !4174 {
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4175, !tbaa !4176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4177
  ret void, !dbg !4177
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationCountAcksByOffset(i64) local_unnamed_addr #0 !dbg !4178 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4189
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4189
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4191, !tbaa !558
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #8, !dbg !4193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4194
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4195
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4194
  br i1 %6, label %26, label %7, !dbg !4194

; <label>:7:                                      ; preds = %1, %22
  %8 = phi %struct.listNode* [ %24, %22 ], [ %5, %1 ]
  %9 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !4197
  %11 = bitcast i8** %10 to %struct.client**, !dbg !4197
  %12 = load %struct.client*, %struct.client** %11, align 8, !dbg !4197, !tbaa !803
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 23, !dbg !4199
  %14 = load i32, i32* %13, align 8, !dbg !4199, !tbaa !808
  %15 = icmp eq i32 %14, 9, !dbg !4201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4202
  br i1 %15, label %16, label %22, !dbg !4202, !llvm.loop !4203

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 31, !dbg !4205
  %18 = load i64, i64* %17, align 8, !dbg !4205, !tbaa !1994
  %19 = icmp slt i64 %18, %0, !dbg !4207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4208
  br i1 %19, label %22, label %20, !dbg !4208

; <label>:20:                                     ; preds = %16
  %21 = add nsw i32 %9, 1, !dbg !4209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4210
  br label %22, !dbg !4210

; <label>:22:                                     ; preds = %20, %16, %7
  %23 = phi i32 [ %9, %7 ], [ %21, %20 ], [ %9, %16 ], !dbg !4211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4212
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4195
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4194
  br i1 %25, label %26, label %7, !dbg !4194

; <label>:26:                                     ; preds = %22, %1
  %27 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !4190
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4214
  ret i32 %27, !dbg !4214
}

; Function Attrs: noredzone nounwind
define dso_local void @waitCommand(%struct.client*) local_unnamed_addr #0 !dbg !4215 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !4223
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4223
  %6 = bitcast i64* %4 to i8*, !dbg !4224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4224
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 41, !dbg !4225
  %8 = load i64, i64* %7, align 8, !dbg !4225, !tbaa !4226
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4228, !tbaa !762
  %10 = icmp eq i8* %9, null, !dbg !4230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4231
  br i1 %10, label %12, label %11, !dbg !4231

; <label>:11:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.163, i64 0, i64 0)) #8, !dbg !4232
  br label %70, !dbg !4234

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4235
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4235, !tbaa !1323
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !4237
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4237, !tbaa !784
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %4, i8* null) #8, !dbg !4239
  %18 = icmp eq i32 %17, 0, !dbg !4240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4241
  br i1 %18, label %19, label %70, !dbg !4241

; <label>:19:                                     ; preds = %12
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4242, !tbaa !1323
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4244
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4244, !tbaa !784
  %23 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, i64* nonnull %3, i32 1) #8, !dbg !4246
  %24 = icmp eq i32 %23, 0, !dbg !4247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4248
  br i1 %24, label %25, label %70, !dbg !4248

; <label>:25:                                     ; preds = %19
  %26 = load i64, i64* %7, align 8, !dbg !4249, !tbaa !4226
  %27 = bitcast %struct.listIter* %2 to i8*, !dbg !4252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4252
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4254, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %2) #8, !dbg !4256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4257
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4258
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4257
  br i1 %30, label %50, label %31, !dbg !4257

; <label>:31:                                     ; preds = %25, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %25 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4260
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4260
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4260, !tbaa !803
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4262
  %38 = load i32, i32* %37, align 8, !dbg !4262, !tbaa !808
  %39 = icmp eq i32 %38, 9, !dbg !4263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4264
  br i1 %39, label %40, label %46, !dbg !4264, !llvm.loop !4203

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4265
  %42 = load i64, i64* %41, align 8, !dbg !4265, !tbaa !1994
  %43 = icmp slt i64 %42, %26, !dbg !4266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4267
  br i1 %43, label %46, label %44, !dbg !4267

; <label>:44:                                     ; preds = %40
  %45 = add nsw i32 %33, 1, !dbg !4268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4269
  br label %46, !dbg !4269

; <label>:46:                                     ; preds = %40, %44, %31
  %47 = phi i32 [ %33, %31 ], [ %45, %44 ], [ %33, %40 ], !dbg !4270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4271
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4258
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4257
  br i1 %49, label %50, label %31, !dbg !4257

; <label>:50:                                     ; preds = %46, %25
  %51 = phi i32 [ 0, %25 ], [ %47, %46 ], !dbg !4253
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4273
  %52 = sext i32 %51 to i64, !dbg !4274
  %53 = load i64, i64* %4, align 8, !dbg !4276, !tbaa !678
  %54 = icmp sgt i64 %53, %52, !dbg !4278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4279
  br i1 %54, label %55, label %60, !dbg !4279

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4280
  %57 = load i32, i32* %56, align 8, !dbg !4280, !tbaa !1112
  %58 = and i32 %57, 8, !dbg !4281
  %59 = icmp eq i32 %58, 0, !dbg !4281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4282
  br i1 %59, label %61, label %60, !dbg !4282

; <label>:60:                                     ; preds = %55, %50
  call void @addReplyLongLong(%struct.client* %0, i64 %52) #8, !dbg !4283
  br label %70, !dbg !4285

; <label>:61:                                     ; preds = %55
  %62 = load i64, i64* %3, align 8, !dbg !4286, !tbaa !522
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 0, !dbg !4287
  store i64 %62, i64* %63, align 8, !dbg !4288, !tbaa !4289
  %64 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 10, !dbg !4290
  store i64 %8, i64* %64, align 8, !dbg !4291, !tbaa !4292
  %65 = trunc i64 %53 to i32, !dbg !4293
  %66 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 9, !dbg !4294
  store i32 %65, i32* %66, align 4, !dbg !4295, !tbaa !4296
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4297, !tbaa !4298
  %68 = bitcast %struct.client* %0 to i8*, !dbg !4299
  %69 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %68) #8, !dbg !4300
  call void @blockClient(%struct.client* nonnull %0, i32 2) #8, !dbg !4301
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4302, !tbaa !4176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4304
  br label %70, !dbg !4305

; <label>:70:                                     ; preds = %19, %12, %61, %60, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4306
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4305
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4305
  ret void, !dbg !4305
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockClient(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @unblockClientWaitingReplicas(%struct.client*) local_unnamed_addr #0 !dbg !4307 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4312, !tbaa !4298
  %3 = bitcast %struct.client* %0 to i8*, !dbg !4313
  %4 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %3) #8, !dbg !4314
  %5 = icmp eq %struct.listNode* %4, null, !dbg !4316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4316
  br i1 %5, label %6, label %7, !dbg !4316

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2502) #8, !dbg !4316
  tail call void @_exit(i32 1) #9, !dbg !4316
  unreachable

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4317, !tbaa !4298
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %4) #8, !dbg !4318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4319
  ret void, !dbg !4319
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processClientsWaitingReplicas() local_unnamed_addr #0 !dbg !4320 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4333
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4333
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4334, !tbaa !4298
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #8, !dbg !4336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4337
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4338
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4337
  br i1 %6, label %63, label %7, !dbg !4337

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*
  br label %9, !dbg !4337

; <label>:9:                                      ; preds = %7, %58
  %10 = phi %struct.listNode* [ %5, %7 ], [ %61, %58 ]
  %11 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %12 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !4340
  %14 = bitcast i8** %13 to %struct.client**, !dbg !4340
  %15 = load %struct.client*, %struct.client** %14, align 8, !dbg !4340, !tbaa !803
  %16 = icmp eq i64 %11, 0, !dbg !4342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4343
  %17 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 10
  %18 = load i64, i64* %17, align 8, !dbg !4344, !tbaa !4292
  br i1 %16, label %27, label %19, !dbg !4343

; <label>:19:                                     ; preds = %9
  %20 = icmp sgt i64 %11, %18, !dbg !4345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4346
  br i1 %20, label %21, label %27, !dbg !4346

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4347
  %23 = load i32, i32* %22, align 4, !dbg !4347, !tbaa !4296
  %24 = icmp sgt i32 %12, %23, !dbg !4348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4349
  br i1 %24, label %25, label %27, !dbg !4349

; <label>:25:                                     ; preds = %21
  call void @unblockClient(%struct.client* nonnull %15) #8, !dbg !4350
  %26 = sext i32 %12 to i64, !dbg !4352
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %26) #8, !dbg !4353
  br label %58, !dbg !4354

; <label>:27:                                     ; preds = %9, %21, %19
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4357
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4359, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %1) #8, !dbg !4361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4362
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4363
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4362
  br i1 %30, label %50, label %31, !dbg !4362

; <label>:31:                                     ; preds = %27, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %27 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %27 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4365
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4365
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4365, !tbaa !803
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4367
  %38 = load i32, i32* %37, align 8, !dbg !4367, !tbaa !808
  %39 = icmp eq i32 %38, 9, !dbg !4368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4369
  br i1 %39, label %40, label %46, !dbg !4369, !llvm.loop !4203

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4370
  %42 = load i64, i64* %41, align 8, !dbg !4370, !tbaa !1994
  %43 = icmp slt i64 %42, %18, !dbg !4371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4372
  br i1 %43, label %46, label %44, !dbg !4372

; <label>:44:                                     ; preds = %40
  %45 = add nsw i32 %33, 1, !dbg !4373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4374
  br label %46, !dbg !4374

; <label>:46:                                     ; preds = %40, %44, %31
  %47 = phi i32 [ %33, %31 ], [ %45, %44 ], [ %33, %40 ], !dbg !4375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4376
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4363
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4362
  br i1 %49, label %50, label %31, !dbg !4362

; <label>:50:                                     ; preds = %46, %27
  %51 = phi i32 [ 0, %27 ], [ %47, %46 ], !dbg !4358
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4378
  %52 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4380
  %53 = load i32, i32* %52, align 4, !dbg !4380, !tbaa !4296
  %54 = icmp slt i32 %51, %53, !dbg !4382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4383
  br i1 %54, label %58, label %55, !dbg !4383

; <label>:55:                                     ; preds = %50
  %56 = load i64, i64* %17, align 8, !dbg !4384, !tbaa !4292
  call void @unblockClient(%struct.client* nonnull %15) #8, !dbg !4386
  %57 = sext i32 %51 to i64, !dbg !4387
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %57) #8, !dbg !4388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4389
  br label %58, !dbg !4389

; <label>:58:                                     ; preds = %55, %50, %25
  %59 = phi i32 [ %12, %25 ], [ %51, %55 ], [ %12, %50 ], !dbg !4390
  %60 = phi i64 [ %11, %25 ], [ %56, %55 ], [ %11, %50 ], !dbg !4390
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4337
  %61 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4338
  %62 = icmp eq %struct.listNode* %61, null, !dbg !4337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4337
  br i1 %62, label %63, label %9, !dbg !4337, !llvm.loop !4391

; <label>:63:                                     ; preds = %58, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4393
  ret void, !dbg !4393
}

; Function Attrs: noredzone
declare dso_local void @unblockClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @replicationGetSlaveOffset() local_unnamed_addr #0 !dbg !4394 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4398, !tbaa !762
  %2 = icmp eq i8* %1, null, !dbg !4400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4401
  br i1 %2, label %14, label %3, !dbg !4401

; <label>:3:                                      ; preds = %0
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4402, !tbaa !2085
  %5 = icmp eq %struct.client* %4, null, !dbg !4405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4406
  br i1 %5, label %6, label %9, !dbg !4406

; <label>:6:                                      ; preds = %3
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !4407, !tbaa !3072
  %8 = icmp eq %struct.client* %7, null, !dbg !4409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4410
  br i1 %8, label %14, label %9, !dbg !4410

; <label>:9:                                      ; preds = %6, %3
  %10 = phi %struct.client* [ %4, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 30, !dbg !4411
  %12 = load i64, i64* %11, align 8, !dbg !4411, !tbaa !2036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4411
  %13 = icmp slt i64 %12, 0, !dbg !4413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4415
  br i1 %13, label %14, label %15, !dbg !4415

; <label>:14:                                     ; preds = %9, %0, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4416
  br label %15, !dbg !4417

; <label>:15:                                     ; preds = %14, %9
  %16 = phi i64 [ %12, %9 ], [ 0, %14 ], !dbg !4418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  ret i64 %16, !dbg !4417
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCron() local_unnamed_addr #0 !dbg !417 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca [1 x %struct.redisObject*], align 8
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.listIter, align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4420, !tbaa !762
  %6 = icmp eq i8* %5, null, !dbg !4422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4423
  br i1 %6, label %35, label %7, !dbg !4423

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4424, !tbaa !2409
  %9 = icmp eq i32 %8, 2, !dbg !4425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4426
  br i1 %9, label %13, label %10, !dbg !4426

; <label>:10:                                     ; preds = %7
  %11 = add i32 %8, -3, !dbg !4427
  %12 = icmp ugt i32 %11, 10, !dbg !4427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4430
  br i1 %12, label %35, label %13, !dbg !4430

; <label>:13:                                     ; preds = %10, %7
  %14 = tail call i64 @time(i64* null) #8, !dbg !4431
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4432, !tbaa !2540
  %16 = sub nsw i64 %14, %15, !dbg !4433
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4434, !tbaa !4435
  %18 = sext i32 %17 to i64, !dbg !4436
  %19 = icmp sgt i64 %16, %18, !dbg !4437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4438
  br i1 %19, label %20, label %35, !dbg !4438

; <label>:20:                                     ; preds = %13
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.165, i64 0, i64 0)) #8, !dbg !4439
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4441, !tbaa !2409
  %22 = icmp eq i32 %21, 14, !dbg !4443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4444
  br i1 %22, label %23, label %24, !dbg !4444

; <label>:23:                                     ; preds = %20
  tail call void @replicationAbortSyncTransfer() #8, !dbg !4445
  br label %33, !dbg !4446

; <label>:24:                                     ; preds = %20
  %25 = icmp eq i32 %21, 2, !dbg !4447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4448
  br i1 %25, label %29, label %26, !dbg !4448

; <label>:26:                                     ; preds = %24
  %27 = add i32 %21, -3, !dbg !4449
  %28 = icmp ugt i32 %27, 10, !dbg !4449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4452
  br i1 %28, label %34, label %29, !dbg !4452

; <label>:29:                                     ; preds = %26, %24
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4453, !tbaa !2422
  %31 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4456, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %31, i32 %30, i32 3) #8, !dbg !4457
  %32 = tail call i32 @close(i32 %30) #8, !dbg !4458
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4459, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4460
  br label %33

; <label>:33:                                     ; preds = %29, %23
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4461, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %34, !dbg !4462

; <label>:34:                                     ; preds = %26, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4464
  br label %35, !dbg !4464

; <label>:35:                                     ; preds = %10, %0, %34, %13
  %36 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4465, !tbaa !762
  %37 = icmp ne i8* %36, null, !dbg !4467
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4468
  %39 = icmp eq i32 %38, 14, !dbg !4469
  %40 = and i1 %37, %39, !dbg !4470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4470
  br i1 %40, label %41, label %66, !dbg !4470

; <label>:41:                                     ; preds = %35
  %42 = tail call i64 @time(i64* null) #8, !dbg !4471
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4472, !tbaa !2540
  %44 = sub nsw i64 %42, %43, !dbg !4473
  %45 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4474, !tbaa !4435
  %46 = sext i32 %45 to i64, !dbg !4475
  %47 = icmp sgt i64 %44, %46, !dbg !4476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4477
  br i1 %47, label %50, label %48, !dbg !4477

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4478
  br label %66, !dbg !4477

; <label>:50:                                     ; preds = %41
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !4480
  %51 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4482, !tbaa !2409
  %52 = icmp eq i32 %51, 14, !dbg !4484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4485
  br i1 %52, label %53, label %54, !dbg !4485

; <label>:53:                                     ; preds = %50
  tail call void @replicationAbortSyncTransfer() #8, !dbg !4486
  br label %63, !dbg !4487

; <label>:54:                                     ; preds = %50
  %55 = icmp eq i32 %51, 2, !dbg !4488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4489
  br i1 %55, label %59, label %56, !dbg !4489

; <label>:56:                                     ; preds = %54
  %57 = add i32 %51, -3, !dbg !4490
  %58 = icmp ugt i32 %57, 10, !dbg !4490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4493
  br i1 %58, label %64, label %59, !dbg !4493

; <label>:59:                                     ; preds = %56, %54
  %60 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4494, !tbaa !2422
  %61 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4497, !tbaa !2067
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %61, i32 %60, i32 3) #8, !dbg !4498
  %62 = tail call i32 @close(i32 %60) #8, !dbg !4499
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4500, !tbaa !2422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4501
  br label %63

; <label>:63:                                     ; preds = %59, %53
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4502, !tbaa !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %64, !dbg !4503

; <label>:64:                                     ; preds = %56, %63
  %65 = phi i32 [ 1, %63 ], [ %51, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4505
  br label %66, !dbg !4505

; <label>:66:                                     ; preds = %48, %64, %35
  %67 = phi i32 [ %49, %48 ], [ %65, %64 ], [ %38, %35 ], !dbg !4478
  %68 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4506, !tbaa !762
  %69 = icmp ne i8* %68, null, !dbg !4507
  %70 = icmp eq i32 %67, 15, !dbg !4508
  %71 = and i1 %69, %70, !dbg !4509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4509
  br i1 %71, label %72, label %85, !dbg !4509

; <label>:72:                                     ; preds = %66
  %73 = tail call i64 @time(i64* null) #8, !dbg !4510
  %74 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4511, !tbaa !2085
  %75 = getelementptr inbounds %struct.client, %struct.client* %74, i64 0, i32 19, !dbg !4512
  %76 = load i64, i64* %75, align 8, !dbg !4512, !tbaa !3299
  %77 = sub nsw i64 %73, %76, !dbg !4513
  %78 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4514, !tbaa !4435
  %79 = sext i32 %78 to i64, !dbg !4515
  %80 = icmp sgt i64 %77, %79, !dbg !4516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4517
  br i1 %80, label %81, label %83, !dbg !4517

; <label>:81:                                     ; preds = %72
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.167, i64 0, i64 0)) #8, !dbg !4518
  %82 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4520, !tbaa !2085
  tail call void @freeClient(%struct.client* %82) #8, !dbg !4521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4522
  br label %83, !dbg !4522

; <label>:83:                                     ; preds = %72, %81
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4523, !tbaa !2409
  br label %85, !dbg !4523

; <label>:85:                                     ; preds = %83, %66
  %86 = phi i32 [ %84, %83 ], [ %67, %66 ], !dbg !4523
  %87 = icmp eq i32 %86, 1, !dbg !4525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4526
  br i1 %87, label %88, label %94, !dbg !4526

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4527, !tbaa !762
  %90 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !4529, !tbaa !3669
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.168, i64 0, i64 0), i8* %89, i32 %90) #8, !dbg !4530
  %91 = tail call i32 @connectWithMaster() #10, !dbg !4531
  %92 = icmp eq i32 %91, 0, !dbg !4533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4534
  br i1 %92, label %93, label %94, !dbg !4534

; <label>:93:                                     ; preds = %88
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i64 0, i64 0)) #8, !dbg !4535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4537
  br label %94, !dbg !4537

; <label>:94:                                     ; preds = %88, %93, %85
  %95 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4538, !tbaa !762
  %96 = icmp ne i8* %95, null, !dbg !4540
  %97 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4541
  %98 = icmp ne %struct.client* %97, null, !dbg !4542
  %99 = and i1 %96, %98, !dbg !4543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4543
  br i1 %99, label %100, label %111, !dbg !4543

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %struct.client, %struct.client* %97, i64 0, i32 21, !dbg !4544
  %102 = load i32, i32* %101, align 8, !dbg !4544, !tbaa !1112
  %103 = and i32 %102, 65536, !dbg !4545
  %104 = icmp eq i32 %103, 0, !dbg !4545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4546
  br i1 %104, label %105, label %111, !dbg !4546

; <label>:105:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4549
  %106 = or i32 %102, 8192, !dbg !4550
  store i32 %106, i32* %101, align 8, !dbg !4550, !tbaa !1112
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %97, i64 3) #8, !dbg !4551
  tail call void @addReplyBulkCString(%struct.client* nonnull %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4552
  tail call void @addReplyBulkCString(%struct.client* nonnull %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !4553
  %107 = getelementptr inbounds %struct.client, %struct.client* %97, i64 0, i32 30, !dbg !4554
  %108 = load i64, i64* %107, align 8, !dbg !4554, !tbaa !2036
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %97, i64 %108) #8, !dbg !4555
  %109 = load i32, i32* %101, align 8, !dbg !4556, !tbaa !1112
  %110 = and i32 %109, -8193, !dbg !4556
  store i32 %110, i32* %101, align 8, !dbg !4556, !tbaa !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4559
  br label %111, !dbg !4559

; <label>:111:                                    ; preds = %100, %105, %94
  %112 = bitcast %struct.listIter* %1 to i8*, !dbg !4560
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %112) #7, !dbg !4560
  %113 = bitcast [1 x %struct.redisObject*]* %2 to i8*, !dbg !4561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #7, !dbg !4561
  %114 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4563, !tbaa !522
  %115 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 182), align 4, !dbg !4564, !tbaa !4565
  %116 = sext i32 %115 to i64, !dbg !4566
  %117 = srem i64 %114, %116, !dbg !4567
  %118 = icmp eq i64 %117, 0, !dbg !4568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4569
  br i1 %118, label %119, label %142, !dbg !4569

; <label>:119:                                    ; preds = %111
  %120 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4570, !tbaa !558
  %121 = getelementptr inbounds %struct.list, %struct.list* %120, i64 0, i32 5, !dbg !4570
  %122 = load i64, i64* %121, align 8, !dbg !4570, !tbaa !559
  %123 = icmp eq i64 %122, 0, !dbg !4570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4571
  br i1 %123, label %142, label %124, !dbg !4571

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !4572, !tbaa !3897
  %126 = icmp eq i32 %125, 0, !dbg !4573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4574
  br i1 %126, label %135, label %127, !dbg !4574

; <label>:127:                                    ; preds = %124
  %128 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4575, !tbaa !4576
  %129 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %128, i64 0, i32 17, !dbg !4577
  %130 = load i64, i64* %129, align 8, !dbg !4577, !tbaa !4578
  %131 = icmp eq i64 %130, 0, !dbg !4580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4581
  br i1 %131, label %135, label %132, !dbg !4581

; <label>:132:                                    ; preds = %127
  %133 = tail call i32 @clientsArePaused() #8, !dbg !4582
  %134 = icmp eq i32 %133, 0, !dbg !4581
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4583
  br i1 %134, label %136, label %141, !dbg !4583

; <label>:135:                                    ; preds = %124, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4583
  br label %136, !dbg !4584

; <label>:136:                                    ; preds = %135, %132
  %137 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i64 4) #8, !dbg !4584
  %138 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %2, i64 0, i64 0, !dbg !4587
  store %struct.redisObject* %137, %struct.redisObject** %138, align 8, !dbg !4588, !tbaa !784
  %139 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4589, !tbaa !558
  %140 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !4590, !tbaa !775
  call void @replicationFeedSlaves(%struct.list* %139, i32 %140, %struct.redisObject** nonnull %138, i32 1) #10, !dbg !4591
  tail call void @decrRefCount(%struct.redisObject* %137) #8, !dbg !4592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4593
  br label %141, !dbg !4593

; <label>:141:                                    ; preds = %132, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4594
  br label %142, !dbg !4594

; <label>:142:                                    ; preds = %119, %141, %111
  %143 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4595, !tbaa !558
  call void @listRewind(%struct.list* %143, %struct.listIter* nonnull %1) #8, !dbg !4597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  %144 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4599
  %145 = icmp eq %struct.listNode* %144, null, !dbg !4598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  br i1 %145, label %167, label %146, !dbg !4598

; <label>:146:                                    ; preds = %142, %164
  %147 = phi %struct.listNode* [ %165, %164 ], [ %144, %142 ]
  %148 = getelementptr inbounds %struct.listNode, %struct.listNode* %147, i64 0, i32 2, !dbg !4601
  %149 = bitcast i8** %148 to %struct.client**, !dbg !4601
  %150 = load %struct.client*, %struct.client** %149, align 8, !dbg !4601, !tbaa !803
  %151 = getelementptr inbounds %struct.client, %struct.client* %150, i64 0, i32 23, !dbg !4603
  %152 = load i32, i32* %151, align 8, !dbg !4603, !tbaa !808
  %153 = icmp eq i32 %152, 6, !dbg !4604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4605
  br i1 %153, label %159, label %154, !dbg !4605

; <label>:154:                                    ; preds = %146
  %155 = icmp eq i32 %152, 7, !dbg !4606
  %156 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !4607
  %157 = icmp ne i32 %156, 2, !dbg !4608
  %158 = and i1 %155, %157, !dbg !4609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4610
  br i1 %158, label %160, label %164, !dbg !4610

; <label>:159:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4610
  br label %160

; <label>:160:                                    ; preds = %159, %154
  %161 = getelementptr inbounds %struct.client, %struct.client* %150, i64 0, i32 1, !dbg !4611
  %162 = load i32, i32* %161, align 8, !dbg !4611, !tbaa !481
  %163 = call i64 @write(i32 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !4615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4616
  br label %164, !dbg !4616

; <label>:164:                                    ; preds = %160, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  %165 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4599
  %166 = icmp eq %struct.listNode* %165, null, !dbg !4598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  br i1 %166, label %167, label %146, !dbg !4598, !llvm.loop !4617

; <label>:167:                                    ; preds = %164, %142
  %168 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4619, !tbaa !558
  %169 = getelementptr inbounds %struct.list, %struct.list* %168, i64 0, i32 5, !dbg !4619
  %170 = load i64, i64* %169, align 8, !dbg !4619, !tbaa !559
  %171 = icmp eq i64 %170, 0, !dbg !4619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4620
  br i1 %171, label %206, label %172, !dbg !4620

; <label>:172:                                    ; preds = %167
  %173 = bitcast %struct.listIter* %3 to i8*, !dbg !4621
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %173) #7, !dbg !4621
  call void @listRewind(%struct.list* %168, %struct.listIter* nonnull %3) #8, !dbg !4623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4624
  %174 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4625
  %175 = icmp eq %struct.listNode* %174, null, !dbg !4624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4624
  br i1 %175, label %202, label %176, !dbg !4624

; <label>:176:                                    ; preds = %172, %199
  %177 = phi %struct.listNode* [ %200, %199 ], [ %174, %172 ]
  %178 = getelementptr inbounds %struct.listNode, %struct.listNode* %177, i64 0, i32 2, !dbg !4627
  %179 = bitcast i8** %178 to %struct.client**, !dbg !4627
  %180 = load %struct.client*, %struct.client** %179, align 8, !dbg !4627, !tbaa !803
  %181 = getelementptr inbounds %struct.client, %struct.client* %180, i64 0, i32 23, !dbg !4629
  %182 = load i32, i32* %181, align 8, !dbg !4629, !tbaa !808
  %183 = icmp eq i32 %182, 9, !dbg !4631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4632
  br i1 %183, label %184, label %199, !dbg !4632, !llvm.loop !4633

; <label>:184:                                    ; preds = %176
  %185 = getelementptr inbounds %struct.client, %struct.client* %180, i64 0, i32 21, !dbg !4635
  %186 = load i32, i32* %185, align 8, !dbg !4635, !tbaa !1112
  %187 = and i32 %186, 65536, !dbg !4637
  %188 = icmp eq i32 %187, 0, !dbg !4637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4638
  br i1 %188, label %189, label %199, !dbg !4638, !llvm.loop !4633

; <label>:189:                                    ; preds = %184
  %190 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4639, !tbaa !1396
  %191 = getelementptr inbounds %struct.client, %struct.client* %180, i64 0, i32 32, !dbg !4641
  %192 = load i64, i64* %191, align 8, !dbg !4641, !tbaa !1399
  %193 = sub nsw i64 %190, %192, !dbg !4642
  %194 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4643, !tbaa !4435
  %195 = sext i32 %194 to i64, !dbg !4644
  %196 = icmp sgt i64 %193, %195, !dbg !4645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4646
  br i1 %196, label %197, label %199, !dbg !4646

; <label>:197:                                    ; preds = %189
  %198 = call i8* @replicationGetSlaveName(%struct.client* nonnull %180) #10, !dbg !4647
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.170, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !4649
  call void @freeClient(%struct.client* nonnull %180) #8, !dbg !4650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4651
  br label %199, !dbg !4651

; <label>:199:                                    ; preds = %189, %197, %184, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4652
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %200 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4625
  %201 = icmp eq %struct.listNode* %200, null, !dbg !4624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4624
  br i1 %201, label %202, label %176, !dbg !4624

; <label>:202:                                    ; preds = %199, %172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %173) #7, !dbg !4653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4654
  %203 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4655, !tbaa !558
  %204 = getelementptr inbounds %struct.list, %struct.list* %203, i64 0, i32 5
  %205 = load i64, i64* %204, align 8, !dbg !4655, !tbaa !559
  br label %206, !dbg !4654

; <label>:206:                                    ; preds = %167, %202
  %207 = phi i64 [ 0, %167 ], [ %205, %202 ]
  %208 = icmp eq i64 %207, 0, !dbg !4656
  %209 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4657
  %210 = icmp ne i64 %209, 0, !dbg !4658
  %211 = and i1 %208, %210, !dbg !4659
  %212 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4660
  %213 = icmp ne i8* %212, null, !dbg !4661
  %214 = and i1 %211, %213, !dbg !4659
  %215 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4662
  %216 = icmp eq i8* %215, null, !dbg !4663
  %217 = and i1 %214, %216, !dbg !4659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4659
  br i1 %217, label %218, label %239, !dbg !4659

; <label>:218:                                    ; preds = %206
  %219 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4664, !tbaa !1396
  %220 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !4665, !tbaa !3875
  %221 = sub nsw i64 %219, %220, !dbg !4666
  %222 = icmp sgt i64 %221, %209, !dbg !4668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4670
  br i1 %222, label %223, label %237, !dbg !4670

; <label>:223:                                    ; preds = %218
  call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !4671
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !4674, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4675
  %224 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !4676
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !4678, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !4679, !tbaa !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  %225 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4681, !tbaa !558
  %226 = getelementptr inbounds %struct.list, %struct.list* %225, i64 0, i32 5, !dbg !4681
  %227 = load i64, i64* %226, align 8, !dbg !4681, !tbaa !559
  %228 = icmp eq i64 %227, 0, !dbg !4681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4681
  br i1 %228, label %230, label %229, !dbg !4681

; <label>:229:                                    ; preds = %223
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !4681
  call void @_exit(i32 1) #9, !dbg !4681
  unreachable

; <label>:230:                                    ; preds = %223
  %231 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4683, !tbaa !511
  call void @zfree(i8* %231) #8, !dbg !4684
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4685, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4686
  %232 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4687, !tbaa !4688
  %233 = trunc i64 %232 to i32, !dbg !4689
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.171, i64 0, i64 0), i32 %233) #8, !dbg !4690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4691
  %234 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4692, !tbaa !558
  %235 = getelementptr inbounds %struct.list, %struct.list* %234, i64 0, i32 5
  %236 = load i64, i64* %235, align 8, !dbg !4692, !tbaa !559
  br label %237, !dbg !4691

; <label>:237:                                    ; preds = %230, %218
  %238 = phi i64 [ %236, %230 ], [ %207, %218 ], !dbg !4692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4694
  br label %239, !dbg !4694

; <label>:239:                                    ; preds = %237, %206
  %240 = phi i64 [ %238, %237 ], [ %207, %206 ], !dbg !4692
  %241 = icmp eq i64 %240, 0, !dbg !4695
  %242 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4696
  %243 = icmp eq i32 %242, 0, !dbg !4697
  %244 = and i1 %241, %243, !dbg !4698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4698
  br i1 %244, label %245, label %254, !dbg !4698

; <label>:245:                                    ; preds = %239
  %246 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4699, !tbaa !1610
  %247 = getelementptr inbounds %struct.list, %struct.list* %246, i64 0, i32 5, !dbg !4699
  %248 = load i64, i64* %247, align 8, !dbg !4699, !tbaa !559
  %249 = icmp eq i64 %248, 0, !dbg !4700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4701
  br i1 %249, label %254, label %250, !dbg !4701

; <label>:250:                                    ; preds = %245
  %251 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4702, !tbaa !1607
  call void @dictEmpty(%struct.dict* %251, void (i8*)* null) #8, !dbg !4705
  %252 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4706, !tbaa !1610
  call void @listRelease(%struct.list* %252) #8, !dbg !4707
  %253 = call %struct.list* @listCreate() #8, !dbg !4708
  store %struct.list* %253, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4709, !tbaa !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4711
  br label %254, !dbg !4711

; <label>:254:                                    ; preds = %245, %250, %239
  %255 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4712, !tbaa !1738
  %256 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4713
  %257 = and i32 %256, %255, !dbg !4714
  %258 = icmp eq i32 %257, -1, !dbg !4714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4714
  br i1 %258, label %259, label %307, !dbg !4714

; <label>:259:                                    ; preds = %254
  %260 = bitcast %struct.listIter* %4 to i8*, !dbg !4718
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #7, !dbg !4718
  %261 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4719, !tbaa !558
  call void @listRewind(%struct.list* %261, %struct.listIter* nonnull %4) #8, !dbg !4721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  %262 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4723
  %263 = icmp eq %struct.listNode* %262, null, !dbg !4722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  br i1 %263, label %264, label %265, !dbg !4722

; <label>:264:                                    ; preds = %259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4725
  br label %306, !dbg !4725

; <label>:265:                                    ; preds = %259, %289
  %266 = phi %struct.listNode* [ %293, %289 ], [ %262, %259 ]
  %267 = phi i64 [ %292, %289 ], [ 0, %259 ]
  %268 = phi i32 [ %291, %289 ], [ -1, %259 ]
  %269 = phi i32 [ %290, %289 ], [ 0, %259 ]
  %270 = getelementptr inbounds %struct.listNode, %struct.listNode* %266, i64 0, i32 2, !dbg !4727
  %271 = bitcast i8** %270 to %struct.client**, !dbg !4727
  %272 = load %struct.client*, %struct.client** %271, align 8, !dbg !4727, !tbaa !803
  %273 = getelementptr inbounds %struct.client, %struct.client* %272, i64 0, i32 23, !dbg !4729
  %274 = load i32, i32* %273, align 8, !dbg !4729, !tbaa !808
  %275 = icmp eq i32 %274, 6, !dbg !4731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4732
  br i1 %275, label %276, label %289, !dbg !4732

; <label>:276:                                    ; preds = %265
  %277 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4733, !tbaa !1396
  %278 = getelementptr inbounds %struct.client, %struct.client* %272, i64 0, i32 19, !dbg !4735
  %279 = load i64, i64* %278, align 8, !dbg !4735, !tbaa !3299
  %280 = sub nsw i64 %277, %279, !dbg !4736
  %281 = icmp sgt i64 %280, %267, !dbg !4738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4740
  br i1 %281, label %282, label %283, !dbg !4740

; <label>:282:                                    ; preds = %276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4741
  br label %283, !dbg !4741

; <label>:283:                                    ; preds = %282, %276
  %284 = phi i64 [ %280, %282 ], [ %267, %276 ], !dbg !4742
  %285 = add nsw i32 %269, 1, !dbg !4743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4744
  %286 = getelementptr inbounds %struct.client, %struct.client* %272, i64 0, i32 37, !dbg !4745
  %287 = load i32, i32* %286, align 8, !dbg !4745, !tbaa !1408
  %288 = and i32 %287, %268, !dbg !4746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4747
  br label %289, !dbg !4747

; <label>:289:                                    ; preds = %283, %265
  %290 = phi i32 [ %285, %283 ], [ %269, %265 ], !dbg !4742
  %291 = phi i32 [ %288, %283 ], [ %268, %265 ], !dbg !4742
  %292 = phi i64 [ %284, %283 ], [ %267, %265 ], !dbg !4742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  %293 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4723
  %294 = icmp eq %struct.listNode* %293, null, !dbg !4722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  br i1 %294, label %295, label %265, !dbg !4722, !llvm.loop !4748

; <label>:295:                                    ; preds = %289
  %296 = icmp eq i32 %290, 0, !dbg !4750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4725
  br i1 %296, label %306, label %297, !dbg !4725

; <label>:297:                                    ; preds = %295
  %298 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !4751, !tbaa !1512
  %299 = icmp eq i32 %298, 0, !dbg !4752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4753
  br i1 %299, label %304, label %300, !dbg !4753

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !4754, !tbaa !1811
  %302 = sext i32 %301 to i64, !dbg !4755
  %303 = icmp sgt i64 %292, %302, !dbg !4756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4757
  br i1 %303, label %304, label %306, !dbg !4757

; <label>:304:                                    ; preds = %297, %300
  %305 = call i32 @startBgsaveForReplication(i32 %291) #10, !dbg !4758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4760
  br label %306, !dbg !4760

; <label>:306:                                    ; preds = %264, %295, %304, %300
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #7, !dbg !4761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4762
  br label %307, !dbg !4762

; <label>:307:                                    ; preds = %306, %254
  call void @refreshGoodSlavesCount() #10, !dbg !4763
  %308 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4764, !tbaa !522
  %309 = add nsw i64 %308, 1, !dbg !4764
  store i64 %309, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4764, !tbaa !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #7, !dbg !4765
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %112) #7, !dbg !4765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4765
  ret void, !dbg !4765
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
!478 = !DILocation(line: 63, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !3, line: 61, column: 5)
!480 = !DILocation(line: 60, column: 29, scope: !475)
!481 = !{!482, !484, i64 8}
!482 = !{!"client", !483, i64 0, !484, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !483, i64 40, !485, i64 48, !483, i64 56, !484, i64 64, !485, i64 72, !485, i64 80, !485, i64 88, !484, i64 96, !484, i64 100, !483, i64 104, !485, i64 112, !486, i64 120, !483, i64 128, !483, i64 136, !483, i64 144, !483, i64 152, !484, i64 160, !484, i64 164, !484, i64 168, !484, i64 172, !484, i64 176, !483, i64 184, !483, i64 192, !485, i64 200, !486, i64 208, !486, i64 216, !486, i64 224, !486, i64 232, !486, i64 240, !471, i64 248, !484, i64 292, !471, i64 296, !484, i64 344, !487, i64 352, !484, i64 384, !488, i64 392, !486, i64 480, !485, i64 488, !485, i64 496, !485, i64 504, !485, i64 512, !485, i64 520, !484, i64 528, !471, i64 532}
!483 = !{!"long", !471, i64 0}
!484 = !{!"int", !471, i64 0}
!485 = !{!"any pointer", !471, i64 0}
!486 = !{!"long long", !471, i64 0}
!487 = !{!"multiState", !485, i64 0, !484, i64 8, !484, i64 12, !484, i64 16, !483, i64 24}
!488 = !{!"blockingState", !486, i64 0, !485, i64 8, !485, i64 16, !483, i64 24, !485, i64 32, !485, i64 40, !486, i64 48, !486, i64 56, !484, i64 64, !484, i64 68, !486, i64 72, !485, i64 80}
!489 = !DILocation(line: 60, column: 9, scope: !475)
!490 = !DILocation(line: 60, column: 52, scope: !475)
!491 = !DILocation(line: 59, column: 9, scope: !2)
!492 = !DILocation(line: 63, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !479, file: !3, line: 63, column: 13)
!494 = !DILocation(line: 63, column: 28, scope: !493)
!495 = !DILocation(line: 63, column: 37, scope: !493)
!496 = !DILocation(line: 65, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !479, file: !3, line: 65, column: 13)
!498 = !{!482, !484, i64 292}
!499 = !DILocation(line: 65, column: 13, scope: !497)
!500 = !DILocation(line: 65, column: 13, scope: !479)
!501 = !DILocation(line: 66, column: 13, scope: !497)
!502 = !DILocation(line: 68, column: 13, scope: !497)
!503 = !DILocation(line: 71, column: 37, scope: !504)
!504 = distinct !DILexicalBlock(scope: !475, file: !3, line: 69, column: 12)
!505 = !{!482, !483, i64 0}
!506 = !DILocation(line: 70, column: 9, scope: !504)
!507 = !DILocation(line: 74, column: 1, scope: !2)
!508 = !DILocation(line: 73, column: 5, scope: !2)
!509 = distinct !DISubprogram(name: "createReplicationBacklog", scope: !3, file: !3, line: 78, type: !306, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!510 = !DILocation(line: 79, column: 5, scope: !509)
!511 = !{!512, !485, i64 2376}
!512 = !{!"redisServer", !484, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !484, i64 32, !484, i64 36, !484, i64 40, !485, i64 48, !485, i64 56, !485, i64 64, !485, i64 72, !484, i64 80, !484, i64 84, !484, i64 88, !484, i64 92, !485, i64 96, !485, i64 104, !484, i64 112, !484, i64 116, !471, i64 120, !484, i64 164, !483, i64 168, !484, i64 176, !485, i64 184, !485, i64 192, !485, i64 200, !471, i64 208, !484, i64 216, !484, i64 220, !471, i64 224, !484, i64 352, !485, i64 360, !484, i64 368, !471, i64 372, !484, i64 436, !484, i64 440, !471, i64 444, !484, i64 508, !485, i64 512, !485, i64 520, !485, i64 528, !485, i64 536, !485, i64 544, !485, i64 552, !485, i64 560, !484, i64 568, !486, i64 576, !471, i64 584, !485, i64 840, !483, i64 848, !484, i64 856, !484, i64 860, !483, i64 864, !483, i64 872, !483, i64 880, !483, i64 888, !485, i64 896, !485, i64 904, !485, i64 912, !485, i64 920, !485, i64 928, !485, i64 936, !485, i64 944, !485, i64 952, !485, i64 960, !485, i64 968, !485, i64 976, !485, i64 984, !485, i64 992, !483, i64 1000, !486, i64 1008, !486, i64 1016, !486, i64 1024, !513, i64 1032, !486, i64 1040, !486, i64 1048, !486, i64 1056, !486, i64 1064, !486, i64 1072, !486, i64 1080, !486, i64 1088, !486, i64 1096, !486, i64 1104, !483, i64 1112, !486, i64 1120, !513, i64 1128, !486, i64 1136, !486, i64 1144, !486, i64 1152, !486, i64 1160, !485, i64 1168, !486, i64 1176, !486, i64 1184, !483, i64 1192, !514, i64 1200, !486, i64 1240, !486, i64 1248, !483, i64 1256, !483, i64 1264, !471, i64 1272, !484, i64 1728, !484, i64 1732, !484, i64 1736, !484, i64 1740, !484, i64 1744, !483, i64 1752, !484, i64 1760, !484, i64 1764, !484, i64 1768, !484, i64 1772, !483, i64 1776, !483, i64 1784, !484, i64 1792, !484, i64 1796, !484, i64 1800, !484, i64 1804, !471, i64 1808, !484, i64 1880, !484, i64 1884, !485, i64 1888, !484, i64 1896, !484, i64 1900, !483, i64 1904, !483, i64 1912, !483, i64 1920, !483, i64 1928, !484, i64 1936, !484, i64 1940, !485, i64 1944, !485, i64 1952, !484, i64 1960, !484, i64 1964, !483, i64 1968, !483, i64 1976, !483, i64 1984, !483, i64 1992, !484, i64 2000, !483, i64 2008, !484, i64 2016, !484, i64 2020, !484, i64 2024, !484, i64 2028, !484, i64 2032, !484, i64 2036, !484, i64 2040, !484, i64 2044, !484, i64 2048, !484, i64 2052, !484, i64 2056, !484, i64 2060, !484, i64 2064, !485, i64 2072, !486, i64 2080, !486, i64 2088, !484, i64 2096, !485, i64 2104, !484, i64 2112, !485, i64 2120, !484, i64 2128, !484, i64 2132, !483, i64 2136, !483, i64 2144, !483, i64 2152, !483, i64 2160, !484, i64 2168, !484, i64 2172, !484, i64 2176, !484, i64 2180, !484, i64 2184, !484, i64 2188, !471, i64 2192, !515, i64 2200, !516, i64 2224, !485, i64 2240, !484, i64 2248, !485, i64 2256, !484, i64 2264, !471, i64 2268, !471, i64 2309, !486, i64 2352, !486, i64 2360, !484, i64 2368, !484, i64 2372, !485, i64 2376, !486, i64 2384, !486, i64 2392, !486, i64 2400, !486, i64 2408, !483, i64 2416, !483, i64 2424, !484, i64 2432, !484, i64 2436, !484, i64 2440, !484, i64 2444, !484, i64 2448, !485, i64 2456, !485, i64 2464, !484, i64 2472, !484, i64 2476, !485, i64 2480, !485, i64 2488, !484, i64 2496, !484, i64 2500, !483, i64 2504, !483, i64 2512, !483, i64 2520, !484, i64 2528, !484, i64 2532, !485, i64 2536, !483, i64 2544, !484, i64 2552, !484, i64 2556, !484, i64 2560, !483, i64 2568, !484, i64 2576, !484, i64 2580, !484, i64 2584, !485, i64 2592, !471, i64 2600, !486, i64 2648, !484, i64 2656, !485, i64 2664, !485, i64 2672, !484, i64 2680, !485, i64 2688, !484, i64 2696, !484, i64 2700, !486, i64 2704, !484, i64 2712, !484, i64 2716, !484, i64 2720, !484, i64 2724, !486, i64 2728, !484, i64 2736, !471, i64 2740, !485, i64 2768, !485, i64 2776, !484, i64 2784, !484, i64 2788, !484, i64 2792, !484, i64 2796, !483, i64 2800, !483, i64 2808, !483, i64 2816, !483, i64 2824, !483, i64 2832, !483, i64 2840, !483, i64 2848, !483, i64 2856, !484, i64 2864, !484, i64 2868, !483, i64 2872, !483, i64 2880, !484, i64 2888, !486, i64 2896, !485, i64 2904, !485, i64 2912, !484, i64 2920, !484, i64 2924, !486, i64 2928, !485, i64 2936, !485, i64 2944, !484, i64 2952, !484, i64 2956, !484, i64 2960, !484, i64 2964, !485, i64 2968, !484, i64 2976, !484, i64 2980, !484, i64 2984, !485, i64 2992, !485, i64 3000, !485, i64 3008, !485, i64 3016, !486, i64 3024, !486, i64 3032, !486, i64 3040, !484, i64 3048, !484, i64 3052, !484, i64 3056, !484, i64 3060, !484, i64 3064, !484, i64 3068, !484, i64 3072, !484, i64 3076, !484, i64 3080, !484, i64 3084, !484, i64 3088, !486, i64 3096, !485, i64 3104, !485, i64 3112, !485, i64 3120, !484, i64 3128, !484, i64 3132, !484, i64 3136, !483, i64 3144, !485, i64 3152, !485, i64 3160, !485, i64 3168}
!513 = !{!"double", !471, i64 0}
!514 = !{!"malloc_stats", !483, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !483, i64 32}
!515 = !{!"", !484, i64 0, !483, i64 8, !486, i64 16}
!516 = !{!"redisOpArray", !485, i64 0, !484, i64 8}
!517 = !DILocation(line: 80, column: 42, scope: !509)
!518 = !{!512, !486, i64 2384}
!519 = !DILocation(line: 80, column: 27, scope: !509)
!520 = !DILocation(line: 80, column: 25, scope: !509)
!521 = !DILocation(line: 81, column: 33, scope: !509)
!522 = !{!486, !486, i64 0}
!523 = !DILocation(line: 87, column: 38, scope: !509)
!524 = !{!512, !486, i64 2352}
!525 = !DILocation(line: 87, column: 56, scope: !509)
!526 = !DILocation(line: 87, column: 29, scope: !509)
!527 = !{!512, !486, i64 2408}
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
!558 = !{!512, !485, i64 536}
!559 = !{!560, !483, i64 40}
!560 = !{!"list", !485, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !483, i64 40}
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
!582 = !{!512, !486, i64 2392}
!583 = !DILocation(line: 145, column: 46, scope: !581)
!584 = !DILocation(line: 135, column: 33, scope: !574)
!585 = !DILocation(line: 135, column: 60, scope: !574)
!586 = !{!512, !486, i64 2400}
!587 = !DILocation(line: 135, column: 51, scope: !574)
!588 = !DILocation(line: 135, column: 16, scope: !574)
!589 = !DILocation(line: 136, column: 21, scope: !590)
!590 = distinct !DILexicalBlock(scope: !574, file: !3, line: 136, column: 13)
!591 = !DILocation(line: 136, column: 13, scope: !574)
!592 = !DILocation(line: 136, column: 28, scope: !590)
!593 = !DILocation(line: 0, scope: !574)
!594 = !DILocation(line: 137, column: 23, scope: !574)
!595 = !DILocation(line: 137, column: 35, scope: !574)
!596 = !DILocation(line: 137, column: 9, scope: !574)
!597 = !DILocation(line: 138, column: 33, scope: !574)
!598 = !DILocation(line: 139, column: 47, scope: !599)
!599 = distinct !DILexicalBlock(scope: !574, file: !3, line: 139, column: 13)
!600 = !DILocation(line: 139, column: 37, scope: !599)
!601 = !DILocation(line: 139, column: 13, scope: !574)
!602 = !DILocation(line: 0, scope: !599)
!603 = !DILocation(line: 141, column: 13, scope: !574)
!604 = !DILocation(line: 142, column: 11, scope: !574)
!605 = !DILocation(line: 143, column: 37, scope: !574)
!606 = distinct !{!606, !579, !607}
!607 = !DILocation(line: 144, column: 5, scope: !565)
!608 = !DILocation(line: 145, column: 37, scope: !581)
!609 = !DILocation(line: 145, column: 9, scope: !565)
!610 = !DILocation(line: 146, column: 37, scope: !581)
!611 = !DILocation(line: 146, column: 9, scope: !581)
!612 = !DILocation(line: 149, column: 38, scope: !565)
!613 = !DILocation(line: 148, column: 38, scope: !565)
!614 = !DILocation(line: 148, column: 57, scope: !565)
!615 = !DILocation(line: 149, column: 59, scope: !565)
!616 = !DILocation(line: 148, column: 29, scope: !565)
!617 = !DILocation(line: 150, column: 1, scope: !565)
!618 = distinct !DISubprogram(name: "feedReplicationBacklogWithObject", scope: !3, file: !3, line: 154, type: !619, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !128}
!621 = !{!622, !623, !627, !628}
!622 = !DILocalVariable(name: "o", arg: 1, scope: !618, file: !3, line: 154, type: !128)
!623 = !DILocalVariable(name: "llstr", scope: !618, file: !3, line: 155, type: !624)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 21)
!627 = !DILocalVariable(name: "p", scope: !618, file: !3, line: 156, type: !47)
!628 = !DILocalVariable(name: "len", scope: !618, file: !3, line: 157, type: !142)
!629 = !DILocation(line: 154, column: 45, scope: !618)
!630 = !DILocation(line: 155, column: 5, scope: !618)
!631 = !DILocation(line: 155, column: 10, scope: !618)
!632 = !DILocation(line: 159, column: 12, scope: !633)
!633 = distinct !DILexicalBlock(scope: !618, file: !3, line: 159, column: 9)
!634 = !DILocation(line: 159, column: 21, scope: !633)
!635 = !DILocation(line: 159, column: 9, scope: !618)
!636 = !DILocation(line: 0, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !3, line: 162, column: 12)
!638 = !DILocation(line: 160, column: 54, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !3, line: 159, column: 42)
!640 = !{!641, !485, i64 8}
!641 = !{!"redisObject", !484, i64 0, !484, i64 0, !484, i64 1, !484, i64 4, !485, i64 8}
!642 = !DILocation(line: 160, column: 15, scope: !639)
!643 = !DILocation(line: 157, column: 12, scope: !618)
!644 = !DILocation(line: 156, column: 11, scope: !618)
!645 = !DILocation(line: 162, column: 5, scope: !639)
!646 = !DILocation(line: 163, column: 25, scope: !637)
!647 = !DILocalVariable(name: "s", arg: 1, scope: !648, file: !140, line: 87, type: !653)
!648 = distinct !DISubprogram(name: "sdslen", scope: !140, file: !140, line: 87, type: !649, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !654)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !652, line: 58, baseType: !18)
!652 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!654 = !{!647, !655}
!655 = !DILocalVariable(name: "flags", scope: !648, file: !140, line: 88, type: !269)
!656 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !657)
!657 = distinct !DILocation(line: 163, column: 15, scope: !637)
!658 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !657)
!659 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !657)
!660 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !657)
!661 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !657)
!662 = distinct !DILexicalBlock(scope: !648, file: !140, line: 89, column: 33)
!663 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !657)
!664 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !657)
!665 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !657)
!666 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !657)
!667 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !657)
!668 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !657)
!669 = !{!670, !670, i64 0}
!670 = !{!"short", !471, i64 0}
!671 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !657)
!672 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !657)
!673 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !657)
!674 = !{!484, !484, i64 0}
!675 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !657)
!676 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !657)
!677 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !657)
!678 = !{!483, !483, i64 0}
!679 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !657)
!680 = !DILocation(line: 0, scope: !662, inlinedAt: !657)
!681 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !657)
!682 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !683)
!683 = distinct !DILocation(line: 166, column: 5, scope: !618)
!684 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !683)
!685 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !683)
!686 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !683)
!687 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !683)
!688 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !683)
!689 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !683)
!690 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !683)
!691 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !683)
!692 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !683)
!693 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !683)
!694 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !683)
!695 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !683)
!696 = !DILocation(line: 136, column: 28, scope: !590, inlinedAt: !683)
!697 = !DILocation(line: 0, scope: !574, inlinedAt: !683)
!698 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !683)
!699 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !683)
!700 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !683)
!701 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !683)
!702 = !DILocation(line: 139, column: 47, scope: !599, inlinedAt: !683)
!703 = !DILocation(line: 139, column: 37, scope: !599, inlinedAt: !683)
!704 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !683)
!705 = !DILocation(line: 0, scope: !599, inlinedAt: !683)
!706 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !683)
!707 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !683)
!708 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !683)
!709 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !683)
!710 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !683)
!711 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !683)
!712 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !683)
!713 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !683)
!714 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !683)
!715 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !683)
!716 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !683)
!717 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !683)
!718 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !683)
!719 = !DILocation(line: 167, column: 1, scope: !618)
!720 = distinct !DISubprogram(name: "replicationFeedSlaves", scope: !3, file: !3, line: 174, type: !721, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !99, !20, !150, !20}
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !736, !739, !741, !747, !751}
!724 = !DILocalVariable(name: "slaves", arg: 1, scope: !720, file: !3, line: 174, type: !99)
!725 = !DILocalVariable(name: "dictid", arg: 2, scope: !720, file: !3, line: 174, type: !20)
!726 = !DILocalVariable(name: "argv", arg: 3, scope: !720, file: !3, line: 174, type: !150)
!727 = !DILocalVariable(name: "argc", arg: 4, scope: !720, file: !3, line: 174, type: !20)
!728 = !DILocalVariable(name: "ln", scope: !720, file: !3, line: 175, type: !105)
!729 = !DILocalVariable(name: "li", scope: !720, file: !3, line: 176, type: !420)
!730 = !DILocalVariable(name: "j", scope: !720, file: !3, line: 177, type: !20)
!731 = !DILocalVariable(name: "len", scope: !720, file: !3, line: 177, type: !20)
!732 = !DILocalVariable(name: "llstr", scope: !720, file: !3, line: 178, type: !624)
!733 = !DILocalVariable(name: "selectcmd", scope: !734, file: !3, line: 196, type: !128)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 195, column: 38)
!735 = distinct !DILexicalBlock(scope: !720, file: !3, line: 195, column: 9)
!736 = !DILocalVariable(name: "dictid_len", scope: !737, file: !3, line: 202, type: !20)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 201, column: 16)
!738 = distinct !DILexicalBlock(scope: !734, file: !3, line: 199, column: 13)
!739 = !DILocalVariable(name: "slave", scope: !740, file: !3, line: 217, type: !8)
!740 = distinct !DILexicalBlock(scope: !734, file: !3, line: 216, column: 37)
!741 = !DILocalVariable(name: "aux", scope: !742, file: !3, line: 229, type: !744)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 228, column: 30)
!743 = distinct !DILexicalBlock(scope: !720, file: !3, line: 228, column: 9)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 24)
!747 = !DILocalVariable(name: "objlen", scope: !748, file: !3, line: 239, type: !79)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 238, column: 36)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 238, column: 9)
!750 = distinct !DILexicalBlock(scope: !742, file: !3, line: 238, column: 9)
!751 = !DILocalVariable(name: "slave", scope: !752, file: !3, line: 257, type: !8)
!752 = distinct !DILexicalBlock(scope: !720, file: !3, line: 256, column: 33)
!753 = !DILocation(line: 174, column: 34, scope: !720)
!754 = !DILocation(line: 174, column: 46, scope: !720)
!755 = !DILocation(line: 174, column: 61, scope: !720)
!756 = !DILocation(line: 174, column: 71, scope: !720)
!757 = !DILocation(line: 176, column: 5, scope: !720)
!758 = !DILocation(line: 178, column: 5, scope: !720)
!759 = !DILocation(line: 178, column: 10, scope: !720)
!760 = !DILocation(line: 185, column: 16, scope: !761)
!761 = distinct !DILexicalBlock(scope: !720, file: !3, line: 185, column: 9)
!762 = !{!512, !485, i64 2464}
!763 = !DILocation(line: 185, column: 27, scope: !761)
!764 = !DILocation(line: 185, column: 9, scope: !720)
!765 = !DILocation(line: 189, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !720, file: !3, line: 189, column: 9)
!767 = !DILocation(line: 189, column: 29, scope: !766)
!768 = !DILocation(line: 189, column: 37, scope: !766)
!769 = !DILocation(line: 189, column: 40, scope: !766)
!770 = !DILocation(line: 189, column: 59, scope: !766)
!771 = !DILocation(line: 189, column: 9, scope: !720)
!772 = !DILocation(line: 0, scope: !720)
!773 = !DILocation(line: 192, column: 5, scope: !720)
!774 = !DILocation(line: 195, column: 16, scope: !735)
!775 = !{!512, !484, i64 2368}
!776 = !DILocation(line: 195, column: 27, scope: !735)
!777 = !DILocation(line: 195, column: 9, scope: !720)
!778 = !DILocation(line: 225, column: 23, scope: !720)
!779 = !DILocation(line: 228, column: 9, scope: !720)
!780 = !DILocation(line: 199, column: 25, scope: !738)
!781 = !DILocation(line: 0, scope: !737)
!782 = !DILocation(line: 200, column: 25, scope: !783)
!783 = distinct !DILexicalBlock(scope: !738, file: !3, line: 199, column: 63)
!784 = !{!485, !485, i64 0}
!785 = !DILocation(line: 196, column: 15, scope: !734)
!786 = !DILocation(line: 201, column: 9, scope: !783)
!787 = !DILocation(line: 212, column: 13, scope: !734)
!788 = !DILocation(line: 204, column: 26, scope: !737)
!789 = !DILocation(line: 202, column: 17, scope: !737)
!790 = !DILocation(line: 206, column: 30, scope: !737)
!791 = !DILocation(line: 206, column: 17, scope: !737)
!792 = !DILocation(line: 205, column: 25, scope: !737)
!793 = !DILocation(line: 212, column: 20, scope: !794)
!794 = distinct !DILexicalBlock(scope: !734, file: !3, line: 212, column: 13)
!795 = !DILocation(line: 212, column: 13, scope: !794)
!796 = !DILocation(line: 212, column: 34, scope: !794)
!797 = !DILocation(line: 176, column: 14, scope: !720)
!798 = !DILocation(line: 215, column: 9, scope: !734)
!799 = !DILocation(line: 216, column: 9, scope: !734)
!800 = !DILocation(line: 216, column: 21, scope: !734)
!801 = !DILocation(line: 175, column: 15, scope: !720)
!802 = !DILocation(line: 217, column: 33, scope: !740)
!803 = !{!804, !485, i64 16}
!804 = !{!"listNode", !485, i64 0, !485, i64 8, !485, i64 16}
!805 = !DILocation(line: 217, column: 21, scope: !740)
!806 = !DILocation(line: 218, column: 24, scope: !807)
!807 = distinct !DILexicalBlock(scope: !740, file: !3, line: 218, column: 17)
!808 = !{!482, !484, i64 168}
!809 = !DILocation(line: 218, column: 34, scope: !807)
!810 = !DILocation(line: 218, column: 17, scope: !740)
!811 = distinct !{!811, !799, !812}
!812 = !DILocation(line: 220, column: 9, scope: !734)
!813 = !DILocation(line: 219, column: 13, scope: !740)
!814 = !DILocation(line: 0, scope: !807)
!815 = !DILocation(line: 222, column: 24, scope: !816)
!816 = distinct !DILexicalBlock(scope: !734, file: !3, line: 222, column: 13)
!817 = !DILocation(line: 223, column: 13, scope: !816)
!818 = !DILocation(line: 224, column: 5, scope: !734)
!819 = !DILocation(line: 228, column: 16, scope: !743)
!820 = !DILocation(line: 228, column: 9, scope: !743)
!821 = !DILocation(line: 229, column: 9, scope: !742)
!822 = !DILocation(line: 229, column: 14, scope: !742)
!823 = !DILocation(line: 232, column: 16, scope: !742)
!824 = !DILocation(line: 233, column: 28, scope: !742)
!825 = !DILocation(line: 233, column: 45, scope: !742)
!826 = !DILocation(line: 233, column: 15, scope: !742)
!827 = !DILocation(line: 177, column: 12, scope: !720)
!828 = !DILocation(line: 234, column: 16, scope: !742)
!829 = !DILocation(line: 234, column: 9, scope: !742)
!830 = !DILocation(line: 234, column: 20, scope: !742)
!831 = !DILocation(line: 235, column: 16, scope: !742)
!832 = !DILocation(line: 235, column: 9, scope: !742)
!833 = !DILocation(line: 235, column: 20, scope: !742)
!834 = !DILocation(line: 236, column: 39, scope: !742)
!835 = !DILocation(line: 236, column: 36, scope: !742)
!836 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !837)
!837 = distinct !DILocation(line: 236, column: 9, scope: !742)
!838 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !837)
!839 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !837)
!840 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !837)
!841 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !837)
!842 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !837)
!843 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !837)
!844 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !837)
!845 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !837)
!846 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !837)
!847 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !837)
!848 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !837)
!849 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !837)
!850 = !DILocation(line: 136, column: 28, scope: !590, inlinedAt: !837)
!851 = !DILocation(line: 0, scope: !574, inlinedAt: !837)
!852 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !837)
!853 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !837)
!854 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !837)
!855 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !837)
!856 = !DILocation(line: 139, column: 47, scope: !599, inlinedAt: !837)
!857 = !DILocation(line: 139, column: 37, scope: !599, inlinedAt: !837)
!858 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !837)
!859 = !DILocation(line: 0, scope: !599, inlinedAt: !837)
!860 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !837)
!861 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !837)
!862 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !837)
!863 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !837)
!864 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !837)
!865 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !837)
!866 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !837)
!867 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !837)
!868 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !837)
!869 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !837)
!870 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !837)
!871 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !837)
!872 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !837)
!873 = !DILocation(line: 177, column: 9, scope: !720)
!874 = !DILocation(line: 238, column: 14, scope: !750)
!875 = !DILocation(line: 238, column: 23, scope: !749)
!876 = !DILocation(line: 238, column: 9, scope: !750)
!877 = !DILocation(line: 239, column: 43, scope: !748)
!878 = !DILocation(line: 239, column: 27, scope: !748)
!879 = !DILocation(line: 239, column: 18, scope: !748)
!880 = !DILocation(line: 244, column: 20, scope: !748)
!881 = !DILocation(line: 245, column: 19, scope: !748)
!882 = !DILocation(line: 246, column: 20, scope: !748)
!883 = !DILocation(line: 246, column: 13, scope: !748)
!884 = !DILocation(line: 246, column: 24, scope: !748)
!885 = !DILocation(line: 247, column: 20, scope: !748)
!886 = !DILocation(line: 247, column: 13, scope: !748)
!887 = !DILocation(line: 247, column: 24, scope: !748)
!888 = !DILocation(line: 248, column: 43, scope: !748)
!889 = !DILocation(line: 248, column: 40, scope: !748)
!890 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !891)
!891 = distinct !DILocation(line: 248, column: 13, scope: !748)
!892 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !891)
!893 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !891)
!894 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !891)
!895 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !891)
!896 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !891)
!897 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !891)
!898 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !891)
!899 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !891)
!900 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !891)
!901 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !891)
!902 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !891)
!903 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !891)
!904 = !DILocation(line: 136, column: 28, scope: !590, inlinedAt: !891)
!905 = !DILocation(line: 0, scope: !574, inlinedAt: !891)
!906 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !891)
!907 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !891)
!908 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !891)
!909 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !891)
!910 = !DILocation(line: 139, column: 47, scope: !599, inlinedAt: !891)
!911 = !DILocation(line: 139, column: 37, scope: !599, inlinedAt: !891)
!912 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !891)
!913 = !DILocation(line: 0, scope: !599, inlinedAt: !891)
!914 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !891)
!915 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !891)
!916 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !891)
!917 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !891)
!918 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !891)
!919 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !891)
!920 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !891)
!921 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !891)
!922 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !891)
!923 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !891)
!924 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !891)
!925 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !891)
!926 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !891)
!927 = !DILocation(line: 249, column: 46, scope: !748)
!928 = !DILocation(line: 249, column: 13, scope: !748)
!929 = !DILocation(line: 250, column: 39, scope: !748)
!930 = !DILocation(line: 250, column: 43, scope: !748)
!931 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !932)
!932 = distinct !DILocation(line: 250, column: 13, scope: !748)
!933 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !932)
!934 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !932)
!935 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !932)
!936 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !932)
!937 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !932)
!938 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !932)
!939 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !932)
!940 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !932)
!941 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !932)
!942 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !932)
!943 = !DILocation(line: 136, column: 28, scope: !590, inlinedAt: !932)
!944 = !DILocation(line: 0, scope: !574, inlinedAt: !932)
!945 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !932)
!946 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !932)
!947 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !932)
!948 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !932)
!949 = !DILocation(line: 139, column: 47, scope: !599, inlinedAt: !932)
!950 = !DILocation(line: 139, column: 37, scope: !599, inlinedAt: !932)
!951 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !932)
!952 = !DILocation(line: 0, scope: !599, inlinedAt: !932)
!953 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !932)
!954 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !932)
!955 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !932)
!956 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !932)
!957 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !932)
!958 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !932)
!959 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !932)
!960 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !932)
!961 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !932)
!962 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !932)
!963 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !932)
!964 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !932)
!965 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !932)
!966 = !DILocation(line: 238, column: 32, scope: !749)
!967 = !DILocation(line: 238, column: 9, scope: !749)
!968 = distinct !{!968, !876, !969}
!969 = !DILocation(line: 251, column: 9, scope: !750)
!970 = !DILocation(line: 252, column: 5, scope: !743)
!971 = !DILocation(line: 252, column: 5, scope: !742)
!972 = !DILocation(line: 255, column: 5, scope: !720)
!973 = !DILocation(line: 256, column: 5, scope: !720)
!974 = !DILocation(line: 256, column: 17, scope: !720)
!975 = !DILocation(line: 257, column: 29, scope: !752)
!976 = !DILocation(line: 257, column: 17, scope: !752)
!977 = !DILocation(line: 260, column: 20, scope: !978)
!978 = distinct !DILexicalBlock(scope: !752, file: !3, line: 260, column: 13)
!979 = !DILocation(line: 260, column: 30, scope: !978)
!980 = !DILocation(line: 260, column: 13, scope: !752)
!981 = distinct !{!981, !973, !982}
!982 = !DILocation(line: 273, column: 5, scope: !720)
!983 = !DILocation(line: 267, column: 9, scope: !752)
!984 = !DILocation(line: 271, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !752, file: !3, line: 271, column: 9)
!986 = !DILocation(line: 271, column: 9, scope: !985)
!987 = !DILocation(line: 272, column: 32, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 271, column: 9)
!989 = !DILocation(line: 272, column: 13, scope: !988)
!990 = !DILocation(line: 271, column: 32, scope: !988)
!991 = !DILocation(line: 271, column: 9, scope: !988)
!992 = !DILocation(line: 271, column: 23, scope: !988)
!993 = distinct !{!993, !986, !994}
!994 = !DILocation(line: 272, column: 39, scope: !985)
!995 = !DILocation(line: 0, scope: !978)
!996 = !DILocation(line: 0, scope: !761)
!997 = !DILocation(line: 274, column: 1, scope: !720)
!998 = distinct !DISubprogram(name: "replicationFeedSlavesFromMasterStream", scope: !3, file: !3, line: 279, type: !999, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !99, !6, !142}
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007}
!1002 = !DILocalVariable(name: "slaves", arg: 1, scope: !998, file: !3, line: 279, type: !99)
!1003 = !DILocalVariable(name: "buf", arg: 2, scope: !998, file: !3, line: 279, type: !6)
!1004 = !DILocalVariable(name: "buflen", arg: 3, scope: !998, file: !3, line: 279, type: !142)
!1005 = !DILocalVariable(name: "ln", scope: !998, file: !3, line: 280, type: !105)
!1006 = !DILocalVariable(name: "li", scope: !998, file: !3, line: 281, type: !420)
!1007 = !DILocalVariable(name: "slave", scope: !1008, file: !3, line: 296, type: !8)
!1008 = distinct !DILexicalBlock(scope: !998, file: !3, line: 295, column: 33)
!1009 = !DILocation(line: 279, column: 50, scope: !998)
!1010 = !DILocation(line: 279, column: 64, scope: !998)
!1011 = !DILocation(line: 279, column: 76, scope: !998)
!1012 = !DILocation(line: 281, column: 5, scope: !998)
!1013 = !DILocation(line: 293, column: 16, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !998, file: !3, line: 293, column: 9)
!1015 = !DILocation(line: 293, column: 9, scope: !1014)
!1016 = !DILocation(line: 293, column: 9, scope: !998)
!1017 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 293, column: 30, scope: !1014)
!1019 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !1018)
!1020 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !1018)
!1021 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !1018)
!1022 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !1018)
!1023 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !1018)
!1024 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !1018)
!1025 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !1018)
!1026 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !1018)
!1027 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !1018)
!1028 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !1018)
!1029 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !1018)
!1030 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !1018)
!1031 = !DILocation(line: 136, column: 28, scope: !590, inlinedAt: !1018)
!1032 = !DILocation(line: 0, scope: !574, inlinedAt: !1018)
!1033 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !1018)
!1034 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !1018)
!1035 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !1018)
!1036 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !1018)
!1037 = !DILocation(line: 139, column: 47, scope: !599, inlinedAt: !1018)
!1038 = !DILocation(line: 139, column: 37, scope: !599, inlinedAt: !1018)
!1039 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !1018)
!1040 = !DILocation(line: 0, scope: !599, inlinedAt: !1018)
!1041 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !1018)
!1042 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !1018)
!1043 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !1018)
!1044 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !1018)
!1045 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !1018)
!1046 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !1018)
!1047 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !1018)
!1048 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !1018)
!1049 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !1018)
!1050 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !1018)
!1051 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !1018)
!1052 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !1018)
!1053 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !1018)
!1054 = !DILocation(line: 293, column: 30, scope: !1014)
!1055 = !DILocation(line: 281, column: 14, scope: !998)
!1056 = !DILocation(line: 294, column: 5, scope: !998)
!1057 = !DILocation(line: 295, column: 5, scope: !998)
!1058 = !DILocation(line: 295, column: 17, scope: !998)
!1059 = !DILocation(line: 280, column: 15, scope: !998)
!1060 = !DILocation(line: 296, column: 29, scope: !1008)
!1061 = !DILocation(line: 296, column: 17, scope: !1008)
!1062 = !DILocation(line: 299, column: 20, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 299, column: 13)
!1064 = !DILocation(line: 299, column: 30, scope: !1063)
!1065 = !DILocation(line: 299, column: 13, scope: !1008)
!1066 = distinct !{!1066, !1057, !1067}
!1067 = !DILocation(line: 301, column: 5, scope: !998)
!1068 = !DILocation(line: 300, column: 9, scope: !1008)
!1069 = !DILocation(line: 0, scope: !1063)
!1070 = !DILocation(line: 302, column: 1, scope: !998)
!1071 = distinct !DISubprogram(name: "replicationFeedMonitors", scope: !3, file: !3, line: 304, type: !1072, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !8, !99, !20, !150, !20}
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1091}
!1075 = !DILocalVariable(name: "c", arg: 1, scope: !1071, file: !3, line: 304, type: !8)
!1076 = !DILocalVariable(name: "monitors", arg: 2, scope: !1071, file: !3, line: 304, type: !99)
!1077 = !DILocalVariable(name: "dictid", arg: 3, scope: !1071, file: !3, line: 304, type: !20)
!1078 = !DILocalVariable(name: "argv", arg: 4, scope: !1071, file: !3, line: 304, type: !150)
!1079 = !DILocalVariable(name: "argc", arg: 5, scope: !1071, file: !3, line: 304, type: !20)
!1080 = !DILocalVariable(name: "ln", scope: !1071, file: !3, line: 305, type: !105)
!1081 = !DILocalVariable(name: "li", scope: !1071, file: !3, line: 306, type: !420)
!1082 = !DILocalVariable(name: "j", scope: !1071, file: !3, line: 307, type: !20)
!1083 = !DILocalVariable(name: "cmdrepr", scope: !1071, file: !3, line: 308, type: !139)
!1084 = !DILocalVariable(name: "cmdobj", scope: !1071, file: !3, line: 309, type: !128)
!1085 = !DILocalVariable(name: "tv", scope: !1071, file: !3, line: 310, type: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !185, line: 44, size: 128, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1086, file: !185, line: 45, baseType: !184, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1086, file: !185, line: 46, baseType: !1090, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !185, line: 39, baseType: !79)
!1091 = !DILocalVariable(name: "monitor", scope: !1092, file: !3, line: 337, type: !8)
!1092 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 336, column: 33)
!1093 = !DILocation(line: 304, column: 38, scope: !1071)
!1094 = !DILocation(line: 304, column: 47, scope: !1071)
!1095 = !DILocation(line: 304, column: 61, scope: !1071)
!1096 = !DILocation(line: 304, column: 76, scope: !1071)
!1097 = !DILocation(line: 304, column: 86, scope: !1071)
!1098 = !DILocation(line: 306, column: 5, scope: !1071)
!1099 = !DILocation(line: 308, column: 19, scope: !1071)
!1100 = !DILocation(line: 308, column: 9, scope: !1071)
!1101 = !DILocation(line: 310, column: 5, scope: !1071)
!1102 = !DILocation(line: 310, column: 20, scope: !1071)
!1103 = !DILocation(line: 312, column: 5, scope: !1071)
!1104 = !DILocation(line: 313, column: 58, scope: !1071)
!1105 = !{!1106, !483, i64 0}
!1106 = !{!"timeval", !483, i64 0, !483, i64 8}
!1107 = !DILocation(line: 313, column: 74, scope: !1071)
!1108 = !{!1106, !483, i64 8}
!1109 = !DILocation(line: 313, column: 15, scope: !1071)
!1110 = !DILocation(line: 314, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 314, column: 9)
!1112 = !{!482, !484, i64 160}
!1113 = !DILocation(line: 314, column: 18, scope: !1111)
!1114 = !DILocation(line: 314, column: 9, scope: !1071)
!1115 = !DILocation(line: 315, column: 19, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 314, column: 32)
!1117 = !DILocation(line: 316, column: 5, scope: !1116)
!1118 = !DILocation(line: 316, column: 25, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 316, column: 16)
!1120 = !DILocation(line: 316, column: 16, scope: !1111)
!1121 = !DILocation(line: 317, column: 70, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 316, column: 47)
!1123 = !{!512, !485, i64 360}
!1124 = !DILocation(line: 317, column: 19, scope: !1122)
!1125 = !DILocation(line: 318, column: 5, scope: !1122)
!1126 = !DILocation(line: 319, column: 58, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 318, column: 12)
!1128 = !DILocation(line: 319, column: 19, scope: !1127)
!1129 = !DILocation(line: 0, scope: !1127)
!1130 = !DILocation(line: 307, column: 9, scope: !1071)
!1131 = !DILocation(line: 322, column: 10, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 322, column: 5)
!1133 = !DILocation(line: 322, column: 19, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 322, column: 5)
!1135 = !DILocation(line: 322, column: 5, scope: !1132)
!1136 = !DILocation(line: 323, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 323, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 322, column: 32)
!1139 = !DILocation(line: 323, column: 22, scope: !1137)
!1140 = !DILocation(line: 323, column: 31, scope: !1137)
!1141 = !DILocation(line: 0, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 325, column: 16)
!1143 = !DILocation(line: 323, column: 13, scope: !1138)
!1144 = !DILocation(line: 324, column: 56, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 323, column: 52)
!1146 = !DILocation(line: 324, column: 23, scope: !1145)
!1147 = !DILocation(line: 325, column: 9, scope: !1145)
!1148 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 327, column: 25, scope: !1142)
!1150 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !1149)
!1151 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !1149)
!1152 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !1149)
!1153 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !1149)
!1154 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !1149)
!1155 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !1149)
!1156 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !1149)
!1157 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !1149)
!1158 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !1149)
!1159 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !1149)
!1160 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !1149)
!1161 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !1149)
!1162 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !1149)
!1163 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !1149)
!1164 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !1149)
!1165 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !1149)
!1166 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !1149)
!1167 = !DILocation(line: 0, scope: !662, inlinedAt: !1149)
!1168 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !1149)
!1169 = !DILocation(line: 326, column: 23, scope: !1142)
!1170 = !DILocation(line: 329, column: 15, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 329, column: 13)
!1172 = !DILocation(line: 329, column: 13, scope: !1138)
!1173 = !DILocation(line: 330, column: 23, scope: !1171)
!1174 = !DILocation(line: 330, column: 13, scope: !1171)
!1175 = !DILocation(line: 0, scope: !1145)
!1176 = !DILocation(line: 322, column: 28, scope: !1134)
!1177 = !DILocation(line: 322, column: 5, scope: !1134)
!1178 = distinct !{!1178, !1135, !1179}
!1179 = !DILocation(line: 331, column: 5, scope: !1132)
!1180 = !DILocation(line: 0, scope: !1171)
!1181 = !DILocation(line: 332, column: 15, scope: !1071)
!1182 = !DILocation(line: 333, column: 14, scope: !1071)
!1183 = !DILocation(line: 309, column: 11, scope: !1071)
!1184 = !DILocation(line: 306, column: 14, scope: !1071)
!1185 = !DILocation(line: 335, column: 5, scope: !1071)
!1186 = !DILocation(line: 336, column: 5, scope: !1071)
!1187 = !DILocation(line: 336, column: 17, scope: !1071)
!1188 = !DILocation(line: 305, column: 15, scope: !1071)
!1189 = !DILocation(line: 337, column: 31, scope: !1092)
!1190 = !DILocation(line: 337, column: 17, scope: !1092)
!1191 = !DILocation(line: 338, column: 9, scope: !1092)
!1192 = distinct !{!1192, !1186, !1193}
!1193 = !DILocation(line: 339, column: 5, scope: !1071)
!1194 = !DILocation(line: 340, column: 5, scope: !1071)
!1195 = !DILocation(line: 341, column: 1, scope: !1071)
!1196 = distinct !DISubprogram(name: "addReplyReplicationBacklog", scope: !3, file: !3, line: 345, type: !1197, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!97, !8, !97}
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205}
!1200 = !DILocalVariable(name: "c", arg: 1, scope: !1196, file: !3, line: 345, type: !8)
!1201 = !DILocalVariable(name: "offset", arg: 2, scope: !1196, file: !3, line: 345, type: !97)
!1202 = !DILocalVariable(name: "j", scope: !1196, file: !3, line: 346, type: !97)
!1203 = !DILocalVariable(name: "skip", scope: !1196, file: !3, line: 346, type: !97)
!1204 = !DILocalVariable(name: "len", scope: !1196, file: !3, line: 346, type: !97)
!1205 = !DILocalVariable(name: "thislen", scope: !1206, file: !3, line: 383, type: !97)
!1206 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 382, column: 16)
!1207 = !DILocation(line: 345, column: 46, scope: !1196)
!1208 = !DILocation(line: 345, column: 59, scope: !1196)
!1209 = !DILocation(line: 348, column: 5, scope: !1196)
!1210 = !DILocation(line: 350, column: 16, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 350, column: 9)
!1212 = !DILocation(line: 350, column: 37, scope: !1211)
!1213 = !DILocation(line: 350, column: 9, scope: !1196)
!1214 = !DILocation(line: 351, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 350, column: 43)
!1216 = !DILocation(line: 352, column: 9, scope: !1215)
!1217 = !DILocation(line: 356, column: 21, scope: !1196)
!1218 = !DILocation(line: 355, column: 5, scope: !1196)
!1219 = !DILocation(line: 358, column: 21, scope: !1196)
!1220 = !DILocation(line: 357, column: 5, scope: !1196)
!1221 = !DILocation(line: 360, column: 21, scope: !1196)
!1222 = !DILocation(line: 359, column: 5, scope: !1196)
!1223 = !DILocation(line: 362, column: 21, scope: !1196)
!1224 = !DILocation(line: 361, column: 5, scope: !1196)
!1225 = !DILocation(line: 365, column: 28, scope: !1196)
!1226 = !DILocation(line: 365, column: 19, scope: !1196)
!1227 = !DILocation(line: 346, column: 18, scope: !1196)
!1228 = !DILocation(line: 366, column: 5, scope: !1196)
!1229 = !DILocation(line: 370, column: 17, scope: !1196)
!1230 = !DILocation(line: 371, column: 17, scope: !1196)
!1231 = !DILocation(line: 371, column: 42, scope: !1196)
!1232 = !DILocation(line: 371, column: 34, scope: !1196)
!1233 = !DILocation(line: 370, column: 34, scope: !1196)
!1234 = !DILocation(line: 371, column: 65, scope: !1196)
!1235 = !DILocation(line: 346, column: 15, scope: !1196)
!1236 = !DILocation(line: 373, column: 5, scope: !1196)
!1237 = !DILocation(line: 376, column: 29, scope: !1196)
!1238 = !DILocation(line: 380, column: 18, scope: !1196)
!1239 = !DILocation(line: 380, column: 39, scope: !1196)
!1240 = !DILocation(line: 346, column: 24, scope: !1196)
!1241 = !DILocation(line: 381, column: 5, scope: !1196)
!1242 = !DILocation(line: 382, column: 5, scope: !1196)
!1243 = !DILocation(line: 376, column: 12, scope: !1196)
!1244 = !DILocation(line: 376, column: 20, scope: !1196)
!1245 = !DILocation(line: 384, column: 22, scope: !1206)
!1246 = !DILocation(line: 384, column: 40, scope: !1206)
!1247 = !DILocation(line: 384, column: 45, scope: !1206)
!1248 = !DILocation(line: 384, column: 13, scope: !1206)
!1249 = !DILocation(line: 383, column: 19, scope: !1206)
!1250 = !DILocation(line: 387, column: 9, scope: !1206)
!1251 = !DILocation(line: 388, column: 40, scope: !1206)
!1252 = !DILocation(line: 388, column: 53, scope: !1206)
!1253 = !DILocation(line: 388, column: 23, scope: !1206)
!1254 = !DILocation(line: 388, column: 9, scope: !1206)
!1255 = !DILocation(line: 389, column: 13, scope: !1206)
!1256 = distinct !{!1256, !1242, !1257}
!1257 = !DILocation(line: 391, column: 5, scope: !1196)
!1258 = distinct !{!1258, !1242, !1257, !1259}
!1259 = !{!"llvm.loop.unroll.disable"}
!1260 = !DILocation(line: 392, column: 19, scope: !1196)
!1261 = !DILocation(line: 392, column: 40, scope: !1196)
!1262 = !DILocation(line: 392, column: 5, scope: !1196)
!1263 = !DILocation(line: 0, scope: !1196)
!1264 = !DILocation(line: 0, scope: !1215)
!1265 = !DILocation(line: 393, column: 1, scope: !1196)
!1266 = distinct !DISubprogram(name: "getPsyncInitialOffset", scope: !3, file: !3, line: 399, type: !1267, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!97}
!1269 = !DILocation(line: 400, column: 19, scope: !1266)
!1270 = !DILocation(line: 400, column: 5, scope: !1266)
!1271 = distinct !DISubprogram(name: "replicationSetupSlaveForFullResync", scope: !3, file: !3, line: 419, type: !1272, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!20, !8, !97}
!1274 = !{!1275, !1276, !1277, !1281}
!1275 = !DILocalVariable(name: "slave", arg: 1, scope: !1271, file: !3, line: 419, type: !8)
!1276 = !DILocalVariable(name: "offset", arg: 2, scope: !1271, file: !3, line: 419, type: !97)
!1277 = !DILocalVariable(name: "buf", scope: !1271, file: !3, line: 420, type: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 128)
!1281 = !DILocalVariable(name: "buflen", scope: !1271, file: !3, line: 421, type: !20)
!1282 = !DILocation(line: 419, column: 48, scope: !1271)
!1283 = !DILocation(line: 419, column: 65, scope: !1271)
!1284 = !DILocation(line: 420, column: 5, scope: !1271)
!1285 = !DILocation(line: 420, column: 10, scope: !1271)
!1286 = !DILocation(line: 423, column: 12, scope: !1271)
!1287 = !DILocation(line: 423, column: 33, scope: !1271)
!1288 = !{!482, !486, i64 240}
!1289 = !DILocation(line: 424, column: 12, scope: !1271)
!1290 = !DILocation(line: 424, column: 22, scope: !1271)
!1291 = !DILocation(line: 428, column: 23, scope: !1271)
!1292 = !DILocation(line: 432, column: 18, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 432, column: 9)
!1294 = !DILocation(line: 432, column: 24, scope: !1293)
!1295 = !DILocation(line: 432, column: 9, scope: !1271)
!1296 = !DILocation(line: 433, column: 18, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 432, column: 45)
!1298 = !DILocation(line: 421, column: 9, scope: !1271)
!1299 = !DILocation(line: 435, column: 26, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 435, column: 13)
!1301 = !DILocation(line: 435, column: 33, scope: !1300)
!1302 = !DILocation(line: 435, column: 13, scope: !1300)
!1303 = !DILocation(line: 435, column: 41, scope: !1300)
!1304 = !DILocation(line: 435, column: 13, scope: !1297)
!1305 = !DILocation(line: 436, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 435, column: 52)
!1307 = !DILocation(line: 437, column: 13, scope: !1306)
!1308 = !DILocation(line: 0, scope: !1306)
!1309 = !DILocation(line: 441, column: 1, scope: !1271)
!1310 = distinct !DISubprogram(name: "masterTryPartialResynchronization", scope: !3, file: !3, line: 448, type: !1311, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!20, !8}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319}
!1314 = !DILocalVariable(name: "c", arg: 1, scope: !1310, file: !3, line: 448, type: !8)
!1315 = !DILocalVariable(name: "psync_offset", scope: !1310, file: !3, line: 449, type: !97)
!1316 = !DILocalVariable(name: "psync_len", scope: !1310, file: !3, line: 449, type: !97)
!1317 = !DILocalVariable(name: "master_replid", scope: !1310, file: !3, line: 450, type: !6)
!1318 = !DILocalVariable(name: "buf", scope: !1310, file: !3, line: 451, type: !1278)
!1319 = !DILocalVariable(name: "buflen", scope: !1310, file: !3, line: 452, type: !20)
!1320 = !DILocation(line: 448, column: 47, scope: !1310)
!1321 = !DILocation(line: 449, column: 5, scope: !1310)
!1322 = !DILocation(line: 450, column: 30, scope: !1310)
!1323 = !{!482, !485, i64 72}
!1324 = !DILocation(line: 450, column: 27, scope: !1310)
!1325 = !DILocation(line: 450, column: 39, scope: !1310)
!1326 = !DILocation(line: 450, column: 11, scope: !1310)
!1327 = !DILocation(line: 451, column: 5, scope: !1310)
!1328 = !DILocation(line: 451, column: 10, scope: !1310)
!1329 = !DILocation(line: 457, column: 40, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 457, column: 9)
!1331 = !DILocation(line: 449, column: 15, scope: !1310)
!1332 = !DILocation(line: 457, column: 9, scope: !1330)
!1333 = !DILocation(line: 457, column: 71, scope: !1330)
!1334 = !DILocation(line: 457, column: 9, scope: !1310)
!1335 = !DILocation(line: 466, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 466, column: 9)
!1337 = !DILocation(line: 466, column: 50, scope: !1336)
!1338 = !DILocation(line: 467, column: 10, scope: !1336)
!1339 = !DILocation(line: 467, column: 52, scope: !1336)
!1340 = !DILocation(line: 468, column: 10, scope: !1336)
!1341 = !DILocation(line: 468, column: 32, scope: !1336)
!1342 = !{!512, !486, i64 2360}
!1343 = !DILocation(line: 468, column: 23, scope: !1336)
!1344 = !DILocation(line: 466, column: 9, scope: !1310)
!1345 = !DILocation(line: 471, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 471, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 469, column: 5)
!1348 = !DILocation(line: 471, column: 30, scope: !1346)
!1349 = !DILocation(line: 471, column: 13, scope: !1347)
!1350 = !DILocation(line: 472, column: 17, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 472, column: 17)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 471, column: 38)
!1353 = !DILocation(line: 472, column: 58, scope: !1351)
!1354 = !DILocation(line: 473, column: 17, scope: !1351)
!1355 = !DILocation(line: 472, column: 17, scope: !1352)
!1356 = !DILocation(line: 475, column: 17, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 474, column: 13)
!1358 = !DILocation(line: 479, column: 13, scope: !1357)
!1359 = !DILocation(line: 482, column: 35, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 479, column: 20)
!1361 = !DILocation(line: 482, column: 56, scope: !1360)
!1362 = !DILocation(line: 480, column: 17, scope: !1360)
!1363 = !DILocation(line: 486, column: 17, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 484, column: 16)
!1365 = !DILocation(line: 485, column: 13, scope: !1364)
!1366 = !DILocation(line: 492, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 492, column: 9)
!1368 = !DILocation(line: 492, column: 10, scope: !1367)
!1369 = !DILocation(line: 492, column: 30, scope: !1367)
!1370 = !DILocation(line: 493, column: 9, scope: !1367)
!1371 = !DILocation(line: 493, column: 31, scope: !1367)
!1372 = !DILocation(line: 493, column: 22, scope: !1367)
!1373 = !DILocation(line: 493, column: 48, scope: !1367)
!1374 = !DILocation(line: 494, column: 58, scope: !1367)
!1375 = !DILocation(line: 494, column: 49, scope: !1367)
!1376 = !DILocation(line: 494, column: 22, scope: !1367)
!1377 = !DILocation(line: 492, column: 9, scope: !1310)
!1378 = !DILocation(line: 497, column: 106, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 495, column: 5)
!1380 = !DILocation(line: 497, column: 134, scope: !1379)
!1381 = !DILocation(line: 496, column: 9, scope: !1379)
!1382 = !DILocation(line: 498, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 498, column: 13)
!1384 = !DILocation(line: 498, column: 35, scope: !1383)
!1385 = !DILocation(line: 498, column: 26, scope: !1383)
!1386 = !DILocation(line: 498, column: 13, scope: !1379)
!1387 = !DILocation(line: 500, column: 122, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 498, column: 55)
!1389 = !DILocation(line: 499, column: 13, scope: !1388)
!1390 = !DILocation(line: 501, column: 9, scope: !1388)
!1391 = !DILocation(line: 509, column: 8, scope: !1310)
!1392 = !DILocation(line: 509, column: 14, scope: !1310)
!1393 = !DILocation(line: 510, column: 8, scope: !1310)
!1394 = !DILocation(line: 510, column: 18, scope: !1310)
!1395 = !DILocation(line: 511, column: 31, scope: !1310)
!1396 = !{!512, !483, i64 2872}
!1397 = !DILocation(line: 511, column: 8, scope: !1310)
!1398 = !DILocation(line: 511, column: 22, scope: !1310)
!1399 = !{!482, !486, i64 232}
!1400 = !DILocation(line: 512, column: 8, scope: !1310)
!1401 = !DILocation(line: 512, column: 31, scope: !1310)
!1402 = !{!482, !484, i64 172}
!1403 = !DILocation(line: 513, column: 28, scope: !1310)
!1404 = !DILocation(line: 513, column: 35, scope: !1310)
!1405 = !DILocation(line: 513, column: 5, scope: !1310)
!1406 = !DILocation(line: 517, column: 12, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 517, column: 9)
!1408 = !{!482, !484, i64 344}
!1409 = !DILocation(line: 517, column: 23, scope: !1407)
!1410 = !DILocation(line: 517, column: 9, scope: !1310)
!1411 = !DILocation(line: 518, column: 18, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 517, column: 44)
!1413 = !DILocation(line: 452, column: 9, scope: !1310)
!1414 = !DILocation(line: 519, column: 5, scope: !1412)
!1415 = !DILocation(line: 520, column: 18, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 519, column: 12)
!1417 = !DILocation(line: 0, scope: !1416)
!1418 = !DILocation(line: 522, column: 18, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 522, column: 9)
!1420 = !DILocation(line: 522, column: 25, scope: !1419)
!1421 = !DILocation(line: 522, column: 9, scope: !1419)
!1422 = !DILocation(line: 522, column: 33, scope: !1419)
!1423 = !DILocation(line: 522, column: 9, scope: !1310)
!1424 = !DILocation(line: 523, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 522, column: 44)
!1426 = !DILocation(line: 524, column: 9, scope: !1425)
!1427 = !DILocation(line: 526, column: 46, scope: !1310)
!1428 = !DILocation(line: 526, column: 17, scope: !1310)
!1429 = !DILocation(line: 449, column: 29, scope: !1310)
!1430 = !DILocation(line: 529, column: 13, scope: !1310)
!1431 = !DILocation(line: 530, column: 24, scope: !1310)
!1432 = !DILocation(line: 527, column: 5, scope: !1310)
!1433 = !DILocation(line: 535, column: 5, scope: !1310)
!1434 = !DILocation(line: 536, column: 5, scope: !1310)
!1435 = !DILocation(line: 0, scope: !1310)
!1436 = !DILocation(line: 0, scope: !1425)
!1437 = !DILocation(line: 544, column: 1, scope: !1310)
!1438 = distinct !DISubprogram(name: "refreshGoodSlavesCount", scope: !3, file: !3, line: 2304, type: !306, isLocal: false, isDefinition: true, scopeLine: 2304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1445}
!1440 = !DILocalVariable(name: "li", scope: !1438, file: !3, line: 2305, type: !420)
!1441 = !DILocalVariable(name: "ln", scope: !1438, file: !3, line: 2306, type: !105)
!1442 = !DILocalVariable(name: "good", scope: !1438, file: !3, line: 2307, type: !20)
!1443 = !DILocalVariable(name: "slave", scope: !1444, file: !3, line: 2314, type: !8)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 2313, column: 33)
!1445 = !DILocalVariable(name: "lag", scope: !1444, file: !3, line: 2315, type: !184)
!1446 = !DILocation(line: 2305, column: 5, scope: !1438)
!1447 = !DILocation(line: 2307, column: 9, scope: !1438)
!1448 = !DILocation(line: 2309, column: 17, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 2309, column: 9)
!1450 = !{!512, !484, i64 2432}
!1451 = !DILocation(line: 2309, column: 10, scope: !1449)
!1452 = !DILocation(line: 2310, column: 17, scope: !1449)
!1453 = !DILocation(line: 2310, column: 10, scope: !1449)
!1454 = !DILocation(line: 2309, column: 42, scope: !1449)
!1455 = !DILocation(line: 2312, column: 23, scope: !1438)
!1456 = !DILocation(line: 2305, column: 14, scope: !1438)
!1457 = !DILocation(line: 2312, column: 5, scope: !1438)
!1458 = !DILocation(line: 2313, column: 5, scope: !1438)
!1459 = !DILocation(line: 2313, column: 17, scope: !1438)
!1460 = !DILocation(line: 2306, column: 15, scope: !1438)
!1461 = !DILocation(line: 2314, column: 29, scope: !1444)
!1462 = !DILocation(line: 2314, column: 17, scope: !1444)
!1463 = !DILocation(line: 2315, column: 29, scope: !1444)
!1464 = !DILocation(line: 2315, column: 47, scope: !1444)
!1465 = !DILocation(line: 2317, column: 20, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 2317, column: 13)
!1467 = !DILocation(line: 2317, column: 30, scope: !1466)
!1468 = !DILocation(line: 2317, column: 52, scope: !1466)
!1469 = !DILocation(line: 2315, column: 38, scope: !1444)
!1470 = !DILocation(line: 2315, column: 16, scope: !1444)
!1471 = !DILocation(line: 2318, column: 27, scope: !1466)
!1472 = !{!512, !484, i64 2436}
!1473 = !DILocation(line: 2318, column: 20, scope: !1466)
!1474 = !DILocation(line: 2318, column: 17, scope: !1466)
!1475 = !DILocation(line: 2317, column: 13, scope: !1444)
!1476 = !DILocation(line: 2318, column: 56, scope: !1466)
!1477 = !DILocation(line: 2318, column: 52, scope: !1466)
!1478 = !DILocation(line: 0, scope: !1438)
!1479 = distinct !{!1479, !1458, !1480}
!1480 = !DILocation(line: 2319, column: 5, scope: !1438)
!1481 = !DILocation(line: 0, scope: !1466)
!1482 = !DILocation(line: 2320, column: 35, scope: !1438)
!1483 = !{!512, !484, i64 2440}
!1484 = !DILocation(line: 2321, column: 1, scope: !1438)
!1485 = !DILocation(line: 0, scope: !1449)
!1486 = distinct !DISubprogram(name: "startBgsaveForReplication", scope: !3, file: !3, line: 564, type: !1487, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!20, !20}
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1498, !1502}
!1490 = !DILocalVariable(name: "mincapa", arg: 1, scope: !1486, file: !3, line: 564, type: !20)
!1491 = !DILocalVariable(name: "retval", scope: !1486, file: !3, line: 565, type: !20)
!1492 = !DILocalVariable(name: "socket_target", scope: !1486, file: !3, line: 566, type: !20)
!1493 = !DILocalVariable(name: "li", scope: !1486, file: !3, line: 567, type: !420)
!1494 = !DILocalVariable(name: "ln", scope: !1486, file: !3, line: 568, type: !105)
!1495 = !DILocalVariable(name: "rsi", scope: !1486, file: !3, line: 573, type: !401)
!1496 = !DILocalVariable(name: "rsiptr", scope: !1486, file: !3, line: 573, type: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1498 = !DILocalVariable(name: "slave", scope: !1499, file: !3, line: 594, type: !8)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 593, column: 37)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 590, column: 26)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 590, column: 9)
!1502 = !DILocalVariable(name: "slave", scope: !1503, file: !3, line: 613, type: !8)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 612, column: 37)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 610, column: 25)
!1505 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 610, column: 9)
!1506 = !DILocation(line: 420, column: 10, scope: !1271, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 616, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 615, column: 68)
!1509 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 615, column: 17)
!1510 = !DILocation(line: 564, column: 35, scope: !1486)
!1511 = !DILocation(line: 566, column: 32, scope: !1486)
!1512 = !{!512, !484, i64 2444}
!1513 = !DILocation(line: 566, column: 25, scope: !1486)
!1514 = !DILocation(line: 566, column: 51, scope: !1486)
!1515 = !DILocation(line: 567, column: 5, scope: !1486)
!1516 = !DILocation(line: 571, column: 9, scope: !1486)
!1517 = !DILocation(line: 566, column: 63, scope: !1486)
!1518 = !DILocation(line: 570, column: 5, scope: !1486)
!1519 = !DILocation(line: 573, column: 5, scope: !1486)
!1520 = !DILocation(line: 573, column: 17, scope: !1486)
!1521 = !DILocation(line: 574, column: 14, scope: !1486)
!1522 = !DILocation(line: 573, column: 23, scope: !1486)
!1523 = !DILocation(line: 577, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 577, column: 9)
!1525 = !DILocation(line: 577, column: 9, scope: !1486)
!1526 = !DILocation(line: 578, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 577, column: 17)
!1528 = !DILocation(line: 579, column: 22, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 578, column: 13)
!1530 = !DILocation(line: 565, column: 9, scope: !1486)
!1531 = !DILocation(line: 579, column: 13, scope: !1529)
!1532 = !DILocation(line: 581, column: 47, scope: !1529)
!1533 = !{!512, !485, i64 2120}
!1534 = !DILocation(line: 581, column: 22, scope: !1529)
!1535 = !DILocation(line: 583, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 582, column: 12)
!1537 = !DILocation(line: 590, column: 9, scope: !1486)
!1538 = !DILocation(line: 0, scope: !1536)
!1539 = !DILocation(line: 590, column: 16, scope: !1501)
!1540 = !DILocation(line: 591, column: 9, scope: !1500)
!1541 = !DILocation(line: 592, column: 27, scope: !1500)
!1542 = !DILocation(line: 567, column: 14, scope: !1486)
!1543 = !DILocation(line: 592, column: 9, scope: !1500)
!1544 = !DILocation(line: 593, column: 9, scope: !1500)
!1545 = !DILocation(line: 593, column: 21, scope: !1500)
!1546 = !DILocation(line: 568, column: 15, scope: !1486)
!1547 = !DILocation(line: 594, column: 33, scope: !1499)
!1548 = !DILocation(line: 594, column: 21, scope: !1499)
!1549 = !DILocation(line: 596, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 596, column: 17)
!1551 = !DILocation(line: 596, column: 34, scope: !1550)
!1552 = !DILocation(line: 596, column: 17, scope: !1499)
!1553 = !DILocation(line: 597, column: 34, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 596, column: 68)
!1555 = !DILocation(line: 598, column: 24, scope: !1554)
!1556 = !DILocation(line: 598, column: 30, scope: !1554)
!1557 = !DILocation(line: 599, column: 36, scope: !1554)
!1558 = !DILocation(line: 599, column: 17, scope: !1554)
!1559 = !DILocation(line: 600, column: 17, scope: !1554)
!1560 = !DILocation(line: 602, column: 30, scope: !1554)
!1561 = !DILocation(line: 603, column: 13, scope: !1554)
!1562 = distinct !{!1562, !1544, !1563}
!1563 = !DILocation(line: 604, column: 9, scope: !1500)
!1564 = !DILocation(line: 610, column: 9, scope: !1486)
!1565 = !DILocation(line: 611, column: 27, scope: !1504)
!1566 = !DILocation(line: 611, column: 9, scope: !1504)
!1567 = !DILocation(line: 612, column: 9, scope: !1504)
!1568 = !DILocation(line: 612, column: 21, scope: !1504)
!1569 = !DILocation(line: 613, column: 33, scope: !1503)
!1570 = !DILocation(line: 613, column: 21, scope: !1503)
!1571 = !DILocation(line: 615, column: 24, scope: !1509)
!1572 = !DILocation(line: 615, column: 34, scope: !1509)
!1573 = !DILocation(line: 615, column: 17, scope: !1503)
!1574 = !DILocation(line: 400, column: 19, scope: !1266, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 617, column: 29, scope: !1508)
!1576 = !DILocation(line: 400, column: 5, scope: !1266, inlinedAt: !1575)
!1577 = !DILocation(line: 419, column: 48, scope: !1271, inlinedAt: !1507)
!1578 = !DILocation(line: 419, column: 65, scope: !1271, inlinedAt: !1507)
!1579 = !DILocation(line: 420, column: 5, scope: !1271, inlinedAt: !1507)
!1580 = !DILocation(line: 423, column: 12, scope: !1271, inlinedAt: !1507)
!1581 = !DILocation(line: 423, column: 33, scope: !1271, inlinedAt: !1507)
!1582 = !DILocation(line: 424, column: 22, scope: !1271, inlinedAt: !1507)
!1583 = !DILocation(line: 428, column: 23, scope: !1271, inlinedAt: !1507)
!1584 = !DILocation(line: 432, column: 18, scope: !1293, inlinedAt: !1507)
!1585 = !DILocation(line: 432, column: 24, scope: !1293, inlinedAt: !1507)
!1586 = !DILocation(line: 432, column: 9, scope: !1271, inlinedAt: !1507)
!1587 = !DILocation(line: 433, column: 18, scope: !1297, inlinedAt: !1507)
!1588 = !DILocation(line: 421, column: 9, scope: !1271, inlinedAt: !1507)
!1589 = !DILocation(line: 435, column: 26, scope: !1300, inlinedAt: !1507)
!1590 = !DILocation(line: 435, column: 33, scope: !1300, inlinedAt: !1507)
!1591 = !DILocation(line: 435, column: 13, scope: !1300, inlinedAt: !1507)
!1592 = !DILocation(line: 435, column: 41, scope: !1300, inlinedAt: !1507)
!1593 = !DILocation(line: 435, column: 13, scope: !1297, inlinedAt: !1507)
!1594 = !DILocation(line: 436, column: 13, scope: !1306, inlinedAt: !1507)
!1595 = !DILocation(line: 437, column: 13, scope: !1306, inlinedAt: !1507)
!1596 = !DILocation(line: 0, scope: !1508)
!1597 = !DILocation(line: 441, column: 1, scope: !1271, inlinedAt: !1507)
!1598 = !DILocation(line: 618, column: 13, scope: !1508)
!1599 = distinct !{!1599, !1567, !1600}
!1600 = !DILocation(line: 619, column: 9, scope: !1504)
!1601 = !DILocation(line: 624, column: 16, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 624, column: 9)
!1603 = !DILocation(line: 624, column: 9, scope: !1486)
!1604 = !DILocation(line: 2373, column: 22, scope: !1605, inlinedAt: !1606)
!1605 = distinct !DISubprogram(name: "replicationScriptCacheFlush", scope: !3, file: !3, line: 2372, type: !306, isLocal: false, isDefinition: true, scopeLine: 2372, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1606 = distinct !DILocation(line: 624, column: 25, scope: !1602)
!1607 = !{!512, !485, i64 2664}
!1608 = !DILocation(line: 2373, column: 5, scope: !1605, inlinedAt: !1606)
!1609 = !DILocation(line: 2374, column: 24, scope: !1605, inlinedAt: !1606)
!1610 = !{!512, !485, i64 2672}
!1611 = !DILocation(line: 2374, column: 5, scope: !1605, inlinedAt: !1606)
!1612 = !DILocation(line: 2375, column: 36, scope: !1605, inlinedAt: !1606)
!1613 = !DILocation(line: 2375, column: 34, scope: !1605, inlinedAt: !1606)
!1614 = !DILocation(line: 2376, column: 1, scope: !1605, inlinedAt: !1606)
!1615 = !DILocation(line: 624, column: 25, scope: !1602)
!1616 = !DILocation(line: 0, scope: !1500)
!1617 = !DILocation(line: 626, column: 1, scope: !1486)
!1618 = !DILocation(line: 2373, column: 22, scope: !1605)
!1619 = !DILocation(line: 2373, column: 5, scope: !1605)
!1620 = !DILocation(line: 2374, column: 24, scope: !1605)
!1621 = !DILocation(line: 2374, column: 5, scope: !1605)
!1622 = !DILocation(line: 2375, column: 36, scope: !1605)
!1623 = !DILocation(line: 2375, column: 34, scope: !1605)
!1624 = !DILocation(line: 2376, column: 1, scope: !1605)
!1625 = distinct !DISubprogram(name: "syncCommand", scope: !3, file: !3, line: 629, type: !159, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1633, !1636, !1637}
!1627 = !DILocalVariable(name: "c", arg: 1, scope: !1625, file: !3, line: 629, type: !8)
!1628 = !DILocalVariable(name: "master_replid", scope: !1629, file: !3, line: 666, type: !6)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 665, column: 16)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 662, column: 13)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 661, column: 47)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 661, column: 9)
!1633 = !DILocalVariable(name: "slave", scope: !1634, file: !3, line: 710, type: !8)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 706, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 704, column: 9)
!1636 = !DILocalVariable(name: "ln", scope: !1634, file: !3, line: 711, type: !105)
!1637 = !DILocalVariable(name: "li", scope: !1634, file: !3, line: 712, type: !420)
!1638 = !DILocation(line: 420, column: 10, scope: !1271, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 725, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 721, column: 79)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 721, column: 13)
!1642 = !DILocation(line: 629, column: 26, scope: !1625)
!1643 = !DILocation(line: 631, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 631, column: 9)
!1645 = !DILocation(line: 631, column: 18, scope: !1644)
!1646 = !DILocation(line: 631, column: 9, scope: !1625)
!1647 = !DILocation(line: 635, column: 16, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 635, column: 9)
!1649 = !DILocation(line: 635, column: 9, scope: !1648)
!1650 = !DILocation(line: 635, column: 37, scope: !1648)
!1651 = !DILocation(line: 635, column: 48, scope: !1648)
!1652 = !DILocation(line: 635, column: 27, scope: !1648)
!1653 = !DILocation(line: 636, column: 23, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 635, column: 73)
!1655 = !DILocation(line: 636, column: 9, scope: !1654)
!1656 = !DILocation(line: 637, column: 9, scope: !1654)
!1657 = !DILocation(line: 644, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 644, column: 9)
!1659 = !DILocation(line: 644, column: 9, scope: !1625)
!1660 = !DILocation(line: 645, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 644, column: 37)
!1662 = !DILocation(line: 646, column: 9, scope: !1661)
!1663 = !DILocation(line: 650, column: 9, scope: !1625)
!1664 = !DILocation(line: 649, column: 5, scope: !1625)
!1665 = !DILocation(line: 661, column: 24, scope: !1632)
!1666 = !DILocation(line: 661, column: 21, scope: !1632)
!1667 = !DILocation(line: 661, column: 33, scope: !1632)
!1668 = !DILocation(line: 661, column: 10, scope: !1632)
!1669 = !DILocation(line: 661, column: 9, scope: !1625)
!1670 = !DILocation(line: 662, column: 13, scope: !1630)
!1671 = !DILocation(line: 662, column: 50, scope: !1630)
!1672 = !DILocation(line: 662, column: 13, scope: !1631)
!1673 = !DILocation(line: 663, column: 40, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 662, column: 59)
!1675 = !{!512, !486, i64 1152}
!1676 = !DILocation(line: 664, column: 13, scope: !1674)
!1677 = !DILocation(line: 666, column: 38, scope: !1629)
!1678 = !DILocation(line: 666, column: 35, scope: !1629)
!1679 = !DILocation(line: 666, column: 47, scope: !1629)
!1680 = !DILocation(line: 666, column: 19, scope: !1629)
!1681 = !DILocation(line: 672, column: 17, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 672, column: 17)
!1683 = !DILocation(line: 672, column: 34, scope: !1682)
!1684 = !DILocation(line: 672, column: 17, scope: !1629)
!1685 = !DILocation(line: 672, column: 70, scope: !1682)
!1686 = !{!512, !486, i64 1160}
!1687 = !DILocation(line: 672, column: 42, scope: !1682)
!1688 = !DILocation(line: 678, column: 18, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 674, column: 12)
!1690 = !DILocation(line: 682, column: 26, scope: !1625)
!1691 = !{!512, !486, i64 1144}
!1692 = !DILocation(line: 686, column: 8, scope: !1625)
!1693 = !DILocation(line: 686, column: 18, scope: !1625)
!1694 = !DILocation(line: 687, column: 16, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 687, column: 9)
!1696 = !{!512, !484, i64 2576}
!1697 = !DILocation(line: 687, column: 9, scope: !1695)
!1698 = !DILocation(line: 687, column: 9, scope: !1625)
!1699 = !DILocation(line: 688, column: 40, scope: !1695)
!1700 = !DILocation(line: 688, column: 9, scope: !1695)
!1701 = !DILocation(line: 689, column: 8, scope: !1625)
!1702 = !DILocation(line: 689, column: 17, scope: !1625)
!1703 = !{!482, !484, i64 176}
!1704 = !DILocation(line: 690, column: 14, scope: !1625)
!1705 = !DILocation(line: 691, column: 28, scope: !1625)
!1706 = !DILocation(line: 691, column: 35, scope: !1625)
!1707 = !DILocation(line: 691, column: 5, scope: !1625)
!1708 = !DILocation(line: 694, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 694, column: 9)
!1710 = !DILocation(line: 694, column: 35, scope: !1709)
!1711 = !DILocation(line: 694, column: 50, scope: !1709)
!1712 = !DILocation(line: 694, column: 63, scope: !1709)
!1713 = !DILocation(line: 694, column: 40, scope: !1709)
!1714 = !DILocation(line: 1034, column: 5, scope: !1715, inlinedAt: !1716)
!1715 = distinct !DISubprogram(name: "changeReplicationId", scope: !3, file: !3, line: 1033, type: !306, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1716 = distinct !DILocation(line: 698, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 694, column: 72)
!1718 = !DILocation(line: 1035, column: 39, scope: !1715, inlinedAt: !1716)
!1719 = !DILocation(line: 1036, column: 1, scope: !1715, inlinedAt: !1716)
!1720 = !DILocation(line: 1042, column: 5, scope: !1721, inlinedAt: !1722)
!1721 = distinct !DISubprogram(name: "clearReplicationId2", scope: !3, file: !3, line: 1041, type: !306, isLocal: false, isDefinition: true, scopeLine: 1041, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1722 = distinct !DILocation(line: 699, column: 9, scope: !1717)
!1723 = !DILocation(line: 1043, column: 40, scope: !1721, inlinedAt: !1722)
!1724 = !DILocation(line: 1044, column: 33, scope: !1721, inlinedAt: !1722)
!1725 = !DILocation(line: 1045, column: 1, scope: !1721, inlinedAt: !1722)
!1726 = !DILocation(line: 79, column: 5, scope: !509, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 700, column: 9, scope: !1717)
!1728 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !1727)
!1729 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !1727)
!1730 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !1727)
!1731 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !1727)
!1732 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !1727)
!1733 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !1727)
!1734 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !1727)
!1735 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !1727)
!1736 = !DILocation(line: 701, column: 5, scope: !1717)
!1737 = !DILocation(line: 704, column: 16, scope: !1635)
!1738 = !{!512, !484, i64 2096}
!1739 = !DILocation(line: 704, column: 30, scope: !1635)
!1740 = !DILocation(line: 705, column: 16, scope: !1635)
!1741 = !DILocation(line: 705, column: 31, scope: !1635)
!1742 = !DILocation(line: 704, column: 36, scope: !1635)
!1743 = !DILocation(line: 712, column: 9, scope: !1634)
!1744 = !DILocation(line: 714, column: 27, scope: !1634)
!1745 = !DILocation(line: 712, column: 18, scope: !1634)
!1746 = !DILocation(line: 714, column: 9, scope: !1634)
!1747 = !DILocation(line: 715, column: 9, scope: !1634)
!1748 = !DILocation(line: 715, column: 21, scope: !1634)
!1749 = !DILocation(line: 711, column: 19, scope: !1634)
!1750 = !DILocation(line: 716, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 715, column: 37)
!1752 = !DILocation(line: 710, column: 17, scope: !1634)
!1753 = !DILocation(line: 717, column: 24, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 717, column: 17)
!1755 = !DILocation(line: 717, column: 34, scope: !1754)
!1756 = !DILocation(line: 717, column: 17, scope: !1751)
!1757 = distinct !{!1757, !1747, !1758}
!1758 = !DILocation(line: 718, column: 9, scope: !1634)
!1759 = !DILocation(line: 721, column: 16, scope: !1641)
!1760 = !DILocation(line: 721, column: 24, scope: !1641)
!1761 = !DILocation(line: 721, column: 44, scope: !1641)
!1762 = !DILocation(line: 721, column: 35, scope: !1641)
!1763 = !DILocation(line: 721, column: 56, scope: !1641)
!1764 = !DILocation(line: 721, column: 13, scope: !1634)
!1765 = !DILocation(line: 724, column: 13, scope: !1640)
!1766 = !DILocation(line: 725, column: 57, scope: !1640)
!1767 = !DILocation(line: 419, column: 48, scope: !1271, inlinedAt: !1639)
!1768 = !DILocation(line: 419, column: 65, scope: !1271, inlinedAt: !1639)
!1769 = !DILocation(line: 420, column: 5, scope: !1271, inlinedAt: !1639)
!1770 = !DILocation(line: 423, column: 12, scope: !1271, inlinedAt: !1639)
!1771 = !DILocation(line: 423, column: 33, scope: !1271, inlinedAt: !1639)
!1772 = !DILocation(line: 424, column: 22, scope: !1271, inlinedAt: !1639)
!1773 = !DILocation(line: 428, column: 23, scope: !1271, inlinedAt: !1639)
!1774 = !DILocation(line: 432, column: 18, scope: !1293, inlinedAt: !1639)
!1775 = !DILocation(line: 432, column: 24, scope: !1293, inlinedAt: !1639)
!1776 = !DILocation(line: 432, column: 9, scope: !1271, inlinedAt: !1639)
!1777 = !DILocation(line: 433, column: 18, scope: !1297, inlinedAt: !1639)
!1778 = !DILocation(line: 421, column: 9, scope: !1271, inlinedAt: !1639)
!1779 = !DILocation(line: 435, column: 26, scope: !1300, inlinedAt: !1639)
!1780 = !DILocation(line: 435, column: 33, scope: !1300, inlinedAt: !1639)
!1781 = !DILocation(line: 435, column: 13, scope: !1300, inlinedAt: !1639)
!1782 = !DILocation(line: 435, column: 41, scope: !1300, inlinedAt: !1639)
!1783 = !DILocation(line: 435, column: 13, scope: !1297, inlinedAt: !1639)
!1784 = !DILocation(line: 436, column: 13, scope: !1306, inlinedAt: !1639)
!1785 = !DILocation(line: 437, column: 13, scope: !1306, inlinedAt: !1639)
!1786 = !DILocation(line: 0, scope: !1640)
!1787 = !DILocation(line: 441, column: 1, scope: !1271, inlinedAt: !1639)
!1788 = !DILocation(line: 726, column: 13, scope: !1640)
!1789 = !DILocation(line: 727, column: 9, scope: !1640)
!1790 = !DILocation(line: 730, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 727, column: 16)
!1792 = !DILocation(line: 734, column: 5, scope: !1635)
!1793 = !DILocation(line: 734, column: 5, scope: !1634)
!1794 = !DILocation(line: 735, column: 38, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 734, column: 16)
!1796 = !DILocation(line: 734, column: 43, scope: !1795)
!1797 = !DILocation(line: 740, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 736, column: 5)
!1799 = !DILocation(line: 743, column: 5, scope: !1798)
!1800 = !DILocation(line: 744, column: 20, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 744, column: 13)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 743, column: 12)
!1803 = !DILocation(line: 744, column: 13, scope: !1801)
!1804 = !DILocation(line: 744, column: 39, scope: !1801)
!1805 = !DILocation(line: 744, column: 46, scope: !1801)
!1806 = !DILocation(line: 744, column: 57, scope: !1801)
!1807 = !DILocation(line: 744, column: 13, scope: !1802)
!1808 = !DILocation(line: 748, column: 24, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 748, column: 17)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 744, column: 76)
!1811 = !{!512, !484, i64 2448}
!1812 = !DILocation(line: 748, column: 17, scope: !1809)
!1813 = !DILocation(line: 748, column: 17, scope: !1810)
!1814 = !DILocation(line: 749, column: 17, scope: !1809)
!1815 = !DILocation(line: 754, column: 24, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 754, column: 17)
!1817 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 750, column: 16)
!1818 = !{!512, !484, i64 1940}
!1819 = !DILocation(line: 754, column: 38, scope: !1816)
!1820 = !DILocation(line: 754, column: 17, scope: !1817)
!1821 = !DILocation(line: 755, column: 46, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 754, column: 45)
!1823 = !DILocation(line: 755, column: 17, scope: !1822)
!1824 = !DILocation(line: 756, column: 13, scope: !1822)
!1825 = !DILocation(line: 757, column: 17, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 756, column: 20)
!1827 = !DILocation(line: 764, column: 1, scope: !1625)
!1828 = !DILocation(line: 1034, column: 5, scope: !1715)
!1829 = !DILocation(line: 1035, column: 39, scope: !1715)
!1830 = !DILocation(line: 1036, column: 1, scope: !1715)
!1831 = !DILocation(line: 1042, column: 5, scope: !1721)
!1832 = !DILocation(line: 1043, column: 40, scope: !1721)
!1833 = !DILocation(line: 1044, column: 33, scope: !1721)
!1834 = !DILocation(line: 1045, column: 1, scope: !1721)
!1835 = distinct !DISubprogram(name: "replconfCommand", scope: !3, file: !3, line: 778, type: !159, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1836)
!1836 = !{!1837, !1838, !1839, !1845, !1848}
!1837 = !DILocalVariable(name: "c", arg: 1, scope: !1835, file: !3, line: 778, type: !8)
!1838 = !DILocalVariable(name: "j", scope: !1835, file: !3, line: 779, type: !20)
!1839 = !DILocalVariable(name: "port", scope: !1840, file: !3, line: 791, type: !79)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 790, column: 60)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 790, column: 13)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 789, column: 36)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 789, column: 5)
!1844 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 789, column: 5)
!1845 = !DILocalVariable(name: "ip", scope: !1846, file: !3, line: 798, type: !139)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 797, column: 63)
!1847 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 797, column: 20)
!1848 = !DILocalVariable(name: "offset", scope: !1849, file: !3, line: 816, type: !97)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 812, column: 56)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 812, column: 20)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 806, column: 20)
!1852 = !DILocation(line: 778, column: 30, scope: !1835)
!1853 = !DILocation(line: 781, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 781, column: 9)
!1855 = !{!482, !484, i64 64}
!1856 = !DILocation(line: 781, column: 23, scope: !1854)
!1857 = !DILocation(line: 781, column: 9, scope: !1835)
!1858 = !DILocation(line: 784, column: 27, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 781, column: 29)
!1860 = !{!1861, !485, i64 128}
!1861 = !{!"sharedObjectsStruct", !485, i64 0, !485, i64 8, !485, i64 16, !485, i64 24, !485, i64 32, !485, i64 40, !485, i64 48, !485, i64 56, !485, i64 64, !485, i64 72, !485, i64 80, !485, i64 88, !485, i64 96, !485, i64 104, !485, i64 112, !485, i64 120, !485, i64 128, !485, i64 136, !485, i64 144, !485, i64 152, !485, i64 160, !485, i64 168, !485, i64 176, !485, i64 184, !485, i64 192, !485, i64 200, !485, i64 208, !485, i64 216, !485, i64 224, !485, i64 232, !485, i64 240, !485, i64 248, !485, i64 256, !485, i64 264, !485, i64 272, !485, i64 280, !485, i64 288, !485, i64 296, !485, i64 304, !485, i64 312, !485, i64 320, !485, i64 328, !485, i64 336, !485, i64 344, !485, i64 352, !485, i64 360, !471, i64 368, !471, i64 448, !471, i64 80448, !471, i64 80704, !485, i64 80960, !485, i64 80968}
!1862 = !DILocation(line: 784, column: 9, scope: !1859)
!1863 = !DILocation(line: 785, column: 9, scope: !1859)
!1864 = !DILocation(line: 779, column: 9, scope: !1835)
!1865 = !DILocation(line: 789, column: 10, scope: !1844)
!1866 = !DILocation(line: 789, column: 19, scope: !1843)
!1867 = !DILocation(line: 789, column: 5, scope: !1844)
!1868 = !DILocation(line: 790, column: 28, scope: !1841)
!1869 = !DILocation(line: 790, column: 25, scope: !1841)
!1870 = !DILocation(line: 790, column: 37, scope: !1841)
!1871 = !DILocation(line: 790, column: 14, scope: !1841)
!1872 = !DILocation(line: 790, column: 13, scope: !1842)
!1873 = !DILocation(line: 791, column: 13, scope: !1840)
!1874 = !DILocation(line: 793, column: 54, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 793, column: 17)
!1876 = !DILocation(line: 793, column: 45, scope: !1875)
!1877 = !DILocation(line: 791, column: 18, scope: !1840)
!1878 = !DILocation(line: 793, column: 18, scope: !1875)
!1879 = !DILocation(line: 794, column: 33, scope: !1875)
!1880 = !DILocation(line: 793, column: 17, scope: !1840)
!1881 = !DILocation(line: 795, column: 17, scope: !1875)
!1882 = !DILocation(line: 797, column: 9, scope: !1841)
!1883 = !DILocation(line: 796, column: 39, scope: !1840)
!1884 = !DILocation(line: 796, column: 37, scope: !1840)
!1885 = !DILocation(line: 797, column: 21, scope: !1847)
!1886 = !DILocation(line: 797, column: 20, scope: !1841)
!1887 = !DILocation(line: 798, column: 31, scope: !1846)
!1888 = !DILocation(line: 798, column: 22, scope: !1846)
!1889 = !DILocation(line: 798, column: 36, scope: !1846)
!1890 = !DILocation(line: 798, column: 17, scope: !1846)
!1891 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 799, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 799, column: 17)
!1894 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !1892)
!1895 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !1892)
!1896 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !1892)
!1897 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !1892)
!1898 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !1892)
!1899 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !1892)
!1900 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !1892)
!1901 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !1892)
!1902 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !1892)
!1903 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !1892)
!1904 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !1892)
!1905 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !1892)
!1906 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !1892)
!1907 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !1892)
!1908 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !1892)
!1909 = !DILocation(line: 0, scope: !1893)
!1910 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !1892)
!1911 = !DILocation(line: 799, column: 17, scope: !1846)
!1912 = !DILocation(line: 0, scope: !662, inlinedAt: !1892)
!1913 = !DILocation(line: 799, column: 28, scope: !1893)
!1914 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 800, column: 39, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 799, column: 51)
!1917 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !1915)
!1918 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !1915)
!1919 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !1915)
!1920 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !1915)
!1921 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !1915)
!1922 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !1915)
!1923 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !1915)
!1924 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !1915)
!1925 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !1915)
!1926 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !1915)
!1927 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !1915)
!1928 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !1915)
!1929 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !1915)
!1930 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !1915)
!1931 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !1915)
!1932 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !1915)
!1933 = !DILocation(line: 0, scope: !662, inlinedAt: !1915)
!1934 = !DILocation(line: 0, scope: !1916)
!1935 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !1915)
!1936 = !DILocation(line: 800, column: 49, scope: !1916)
!1937 = !DILocation(line: 800, column: 17, scope: !1916)
!1938 = !DILocation(line: 806, column: 9, scope: !1847)
!1939 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 803, column: 64, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 801, column: 20)
!1942 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !1940)
!1943 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !1940)
!1944 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !1940)
!1945 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !1940)
!1946 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !1940)
!1947 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !1940)
!1948 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !1940)
!1949 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !1940)
!1950 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !1940)
!1951 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !1940)
!1952 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !1940)
!1953 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !1940)
!1954 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !1940)
!1955 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !1940)
!1956 = !DILocation(line: 0, scope: !662, inlinedAt: !1940)
!1957 = !DILocation(line: 0, scope: !1941)
!1958 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !1940)
!1959 = !DILocation(line: 802, column: 17, scope: !1941)
!1960 = !DILocation(line: 804, column: 17, scope: !1941)
!1961 = !DILocation(line: 806, column: 21, scope: !1851)
!1962 = !DILocation(line: 806, column: 20, scope: !1847)
!1963 = !DILocation(line: 808, column: 38, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 808, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 806, column: 57)
!1966 = !DILocation(line: 808, column: 29, scope: !1964)
!1967 = !DILocation(line: 808, column: 43, scope: !1964)
!1968 = !DILocation(line: 808, column: 18, scope: !1964)
!1969 = !DILocation(line: 808, column: 17, scope: !1965)
!1970 = !DILocation(line: 809, column: 31, scope: !1964)
!1971 = !DILocation(line: 809, column: 17, scope: !1964)
!1972 = !DILocation(line: 810, column: 23, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 810, column: 22)
!1974 = !DILocation(line: 810, column: 22, scope: !1964)
!1975 = !DILocation(line: 811, column: 31, scope: !1973)
!1976 = !DILocation(line: 811, column: 17, scope: !1973)
!1977 = !DILocation(line: 812, column: 21, scope: !1850)
!1978 = !DILocation(line: 812, column: 20, scope: !1851)
!1979 = !DILocation(line: 816, column: 13, scope: !1849)
!1980 = !DILocation(line: 818, column: 22, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 818, column: 17)
!1982 = !DILocation(line: 818, column: 28, scope: !1981)
!1983 = !DILocation(line: 818, column: 17, scope: !1849)
!1984 = !DILocation(line: 819, column: 49, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 819, column: 17)
!1986 = !DILocation(line: 819, column: 40, scope: !1985)
!1987 = !DILocation(line: 816, column: 23, scope: !1849)
!1988 = !DILocation(line: 819, column: 18, scope: !1985)
!1989 = !DILocation(line: 819, column: 63, scope: !1985)
!1990 = !DILocation(line: 819, column: 17, scope: !1849)
!1991 = !DILocation(line: 821, column: 17, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 821, column: 17)
!1993 = !DILocation(line: 821, column: 29, scope: !1992)
!1994 = !{!482, !486, i64 224}
!1995 = !DILocation(line: 821, column: 24, scope: !1992)
!1996 = !DILocation(line: 821, column: 17, scope: !1849)
!1997 = !DILocation(line: 822, column: 33, scope: !1992)
!1998 = !DILocation(line: 822, column: 17, scope: !1992)
!1999 = !DILocation(line: 823, column: 39, scope: !1849)
!2000 = !DILocation(line: 823, column: 16, scope: !1849)
!2001 = !DILocation(line: 823, column: 30, scope: !1849)
!2002 = !DILocation(line: 829, column: 20, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 829, column: 17)
!2004 = !DILocation(line: 829, column: 17, scope: !2003)
!2005 = !DILocation(line: 829, column: 43, scope: !2003)
!2006 = !DILocation(line: 829, column: 49, scope: !2003)
!2007 = !DILocation(line: 829, column: 59, scope: !2003)
!2008 = !DILocation(line: 829, column: 17, scope: !1849)
!2009 = !DILocation(line: 830, column: 17, scope: !2003)
!2010 = !DILocation(line: 0, scope: !1981)
!2011 = !DILocation(line: 833, column: 9, scope: !1850)
!2012 = !DILocation(line: 833, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 833, column: 20)
!2014 = !DILocation(line: 833, column: 20, scope: !1850)
!2015 = !DILocation(line: 836, column: 24, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 836, column: 17)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 833, column: 59)
!2018 = !DILocation(line: 836, column: 17, scope: !2016)
!2019 = !DILocation(line: 836, column: 45, scope: !2016)
!2020 = !DILocation(line: 836, column: 38, scope: !2016)
!2021 = !DILocation(line: 836, column: 35, scope: !2016)
!2022 = !DILocalVariable(name: "c", scope: !2023, file: !3, line: 2159, type: !8)
!2023 = distinct !DISubprogram(name: "replicationSendAck", scope: !3, file: !3, line: 2158, type: !306, isLocal: false, isDefinition: true, scopeLine: 2158, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2024)
!2024 = !{!2022}
!2025 = !DILocation(line: 2159, column: 13, scope: !2023, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 836, column: 53, scope: !2016)
!2027 = !DILocation(line: 2161, column: 9, scope: !2023, inlinedAt: !2026)
!2028 = !DILocation(line: 2162, column: 12, scope: !2029, inlinedAt: !2026)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 2161, column: 20)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 2161, column: 9)
!2031 = !DILocation(line: 2162, column: 18, scope: !2029, inlinedAt: !2026)
!2032 = !DILocation(line: 2163, column: 9, scope: !2029, inlinedAt: !2026)
!2033 = !DILocation(line: 2164, column: 9, scope: !2029, inlinedAt: !2026)
!2034 = !DILocation(line: 2165, column: 9, scope: !2029, inlinedAt: !2026)
!2035 = !DILocation(line: 2166, column: 35, scope: !2029, inlinedAt: !2026)
!2036 = !{!482, !486, i64 216}
!2037 = !DILocation(line: 2166, column: 9, scope: !2029, inlinedAt: !2026)
!2038 = !DILocation(line: 2167, column: 18, scope: !2029, inlinedAt: !2026)
!2039 = !DILocation(line: 2168, column: 5, scope: !2029, inlinedAt: !2026)
!2040 = !DILocation(line: 2169, column: 1, scope: !2023, inlinedAt: !2026)
!2041 = !DILocation(line: 836, column: 53, scope: !2016)
!2042 = !DILocation(line: 839, column: 13, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 838, column: 16)
!2044 = !DILocation(line: 841, column: 13, scope: !2043)
!2045 = !DILocation(line: 789, column: 31, scope: !1843)
!2046 = !DILocation(line: 789, column: 5, scope: !1843)
!2047 = !DILocation(line: 789, column: 24, scope: !1843)
!2048 = distinct !{!2048, !1867, !2049}
!2049 = !DILocation(line: 843, column: 5, scope: !1844)
!2050 = !DILocation(line: 844, column: 23, scope: !1835)
!2051 = !{!1861, !485, i64 8}
!2052 = !DILocation(line: 844, column: 5, scope: !1835)
!2053 = !DILocation(line: 845, column: 1, scope: !1835)
!2054 = distinct !DISubprogram(name: "putSlaveOnline", scope: !3, file: !3, line: 861, type: !159, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2055)
!2055 = !{!2056}
!2056 = !DILocalVariable(name: "slave", arg: 1, scope: !2054, file: !3, line: 861, type: !8)
!2057 = !DILocation(line: 861, column: 29, scope: !2054)
!2058 = !DILocation(line: 862, column: 12, scope: !2054)
!2059 = !DILocation(line: 862, column: 22, scope: !2054)
!2060 = !DILocation(line: 863, column: 12, scope: !2054)
!2061 = !DILocation(line: 863, column: 35, scope: !2054)
!2062 = !DILocation(line: 864, column: 35, scope: !2054)
!2063 = !DILocation(line: 864, column: 12, scope: !2054)
!2064 = !DILocation(line: 864, column: 26, scope: !2054)
!2065 = !DILocation(line: 865, column: 34, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 865, column: 9)
!2067 = !{!512, !485, i64 72}
!2068 = !DILocation(line: 865, column: 45, scope: !2066)
!2069 = !DILocation(line: 866, column: 28, scope: !2066)
!2070 = !DILocation(line: 865, column: 9, scope: !2066)
!2071 = !DILocation(line: 866, column: 35, scope: !2066)
!2072 = !DILocation(line: 865, column: 9, scope: !2054)
!2073 = !DILocation(line: 867, column: 106, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 866, column: 46)
!2075 = !DILocation(line: 867, column: 97, scope: !2074)
!2076 = !DILocation(line: 867, column: 9, scope: !2074)
!2077 = !DILocation(line: 868, column: 9, scope: !2074)
!2078 = !DILocation(line: 869, column: 9, scope: !2074)
!2079 = !DILocation(line: 871, column: 5, scope: !2054)
!2080 = !DILocation(line: 873, column: 9, scope: !2054)
!2081 = !DILocation(line: 872, column: 5, scope: !2054)
!2082 = !DILocation(line: 874, column: 1, scope: !2054)
!2083 = !DILocation(line: 0, scope: !2074)
!2084 = !DILocation(line: 2159, column: 24, scope: !2023)
!2085 = !{!512, !485, i64 2480}
!2086 = !DILocation(line: 2159, column: 13, scope: !2023)
!2087 = !DILocation(line: 2161, column: 11, scope: !2030)
!2088 = !DILocation(line: 2161, column: 9, scope: !2023)
!2089 = !DILocation(line: 2162, column: 12, scope: !2029)
!2090 = !DILocation(line: 2162, column: 18, scope: !2029)
!2091 = !DILocation(line: 2163, column: 9, scope: !2029)
!2092 = !DILocation(line: 2164, column: 9, scope: !2029)
!2093 = !DILocation(line: 2165, column: 9, scope: !2029)
!2094 = !DILocation(line: 2166, column: 35, scope: !2029)
!2095 = !DILocation(line: 2166, column: 9, scope: !2029)
!2096 = !DILocation(line: 2167, column: 18, scope: !2029)
!2097 = !DILocation(line: 2168, column: 5, scope: !2029)
!2098 = !DILocation(line: 2169, column: 1, scope: !2023)
!2099 = distinct !DISubprogram(name: "sendBulkToSlave", scope: !3, file: !3, line: 876, type: !311, isLocal: false, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "el", arg: 1, scope: !2099, file: !3, line: 876, type: !313)
!2102 = !DILocalVariable(name: "fd", arg: 2, scope: !2099, file: !3, line: 876, type: !20)
!2103 = !DILocalVariable(name: "privdata", arg: 3, scope: !2099, file: !3, line: 876, type: !47)
!2104 = !DILocalVariable(name: "mask", arg: 4, scope: !2099, file: !3, line: 876, type: !20)
!2105 = !DILocalVariable(name: "slave", scope: !2099, file: !3, line: 877, type: !8)
!2106 = !DILocalVariable(name: "buf", scope: !2099, file: !3, line: 880, type: !257)
!2107 = !DILocalVariable(name: "nwritten", scope: !2099, file: !3, line: 881, type: !383)
!2108 = !DILocalVariable(name: "buflen", scope: !2099, file: !3, line: 881, type: !383)
!2109 = !DILocation(line: 876, column: 35, scope: !2099)
!2110 = !DILocation(line: 876, column: 43, scope: !2099)
!2111 = !DILocation(line: 876, column: 53, scope: !2099)
!2112 = !DILocation(line: 876, column: 67, scope: !2099)
!2113 = !DILocation(line: 877, column: 21, scope: !2099)
!2114 = !DILocation(line: 877, column: 13, scope: !2099)
!2115 = !DILocation(line: 880, column: 5, scope: !2099)
!2116 = !DILocation(line: 880, column: 10, scope: !2099)
!2117 = !DILocation(line: 886, column: 16, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 886, column: 9)
!2119 = !{!482, !485, i64 200}
!2120 = !DILocation(line: 886, column: 9, scope: !2118)
!2121 = !DILocation(line: 886, column: 9, scope: !2099)
!2122 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 887, column: 49, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 886, column: 30)
!2125 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !2123)
!2126 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !2123)
!2127 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !2123)
!2128 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !2123)
!2129 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !2123)
!2130 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !2123)
!2131 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !2123)
!2132 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !2123)
!2133 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !2123)
!2134 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !2123)
!2135 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !2123)
!2136 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !2123)
!2137 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !2123)
!2138 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !2123)
!2139 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !2123)
!2140 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !2123)
!2141 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !2123)
!2142 = !DILocation(line: 0, scope: !662, inlinedAt: !2123)
!2143 = !DILocation(line: 0, scope: !2124)
!2144 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !2123)
!2145 = !DILocation(line: 887, column: 20, scope: !2124)
!2146 = !DILocation(line: 881, column: 13, scope: !2099)
!2147 = !DILocation(line: 888, column: 22, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 888, column: 13)
!2149 = !DILocation(line: 888, column: 13, scope: !2124)
!2150 = !DILocation(line: 890, column: 26, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 888, column: 29)
!2152 = !DILocation(line: 890, column: 17, scope: !2151)
!2153 = !DILocation(line: 889, column: 13, scope: !2151)
!2154 = !DILocation(line: 891, column: 13, scope: !2151)
!2155 = !DILocation(line: 892, column: 13, scope: !2151)
!2156 = !DILocation(line: 894, column: 38, scope: !2124)
!2157 = !{!512, !486, i64 1248}
!2158 = !DILocation(line: 895, column: 25, scope: !2124)
!2159 = !DILocation(line: 895, column: 9, scope: !2124)
!2160 = !DILocation(line: 896, column: 27, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 896, column: 13)
!2162 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 896, column: 13, scope: !2161)
!2164 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !2163)
!2165 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !2163)
!2166 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !2163)
!2167 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !2163)
!2168 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !2163)
!2169 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !2163)
!2170 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !2163)
!2171 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !2163)
!2172 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !2163)
!2173 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !2163)
!2174 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !2163)
!2175 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !2163)
!2176 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !2163)
!2177 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !2163)
!2178 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !2163)
!2179 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !2163)
!2180 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !2163)
!2181 = !DILocation(line: 101, column: 5, scope: !648, inlinedAt: !2163)
!2182 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !2163)
!2183 = !DILocation(line: 896, column: 13, scope: !2124)
!2184 = !DILocation(line: 0, scope: !662, inlinedAt: !2163)
!2185 = !DILocation(line: 0, scope: !2161)
!2186 = !DILocation(line: 896, column: 41, scope: !2161)
!2187 = !DILocation(line: 897, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 896, column: 47)
!2189 = !DILocation(line: 898, column: 33, scope: !2188)
!2190 = !DILocation(line: 903, column: 5, scope: !2124)
!2191 = !DILocation(line: 906, column: 18, scope: !2099)
!2192 = !DILocation(line: 906, column: 34, scope: !2099)
!2193 = !{!482, !483, i64 184}
!2194 = !DILocation(line: 906, column: 5, scope: !2099)
!2195 = !DILocation(line: 907, column: 26, scope: !2099)
!2196 = !DILocation(line: 907, column: 14, scope: !2099)
!2197 = !DILocation(line: 881, column: 23, scope: !2099)
!2198 = !DILocation(line: 908, column: 16, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 908, column: 9)
!2200 = !DILocation(line: 908, column: 9, scope: !2099)
!2201 = !DILocation(line: 910, column: 21, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 908, column: 22)
!2203 = !DILocation(line: 910, column: 13, scope: !2202)
!2204 = !DILocation(line: 910, column: 56, scope: !2202)
!2205 = !DILocation(line: 910, column: 47, scope: !2202)
!2206 = !DILocation(line: 909, column: 9, scope: !2202)
!2207 = !DILocation(line: 911, column: 9, scope: !2202)
!2208 = !DILocation(line: 912, column: 9, scope: !2202)
!2209 = !DILocation(line: 914, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 914, column: 9)
!2211 = !DILocation(line: 914, column: 43, scope: !2210)
!2212 = !DILocation(line: 914, column: 9, scope: !2099)
!2213 = !DILocation(line: 915, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 915, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 914, column: 50)
!2216 = !DILocation(line: 915, column: 19, scope: !2214)
!2217 = !DILocation(line: 915, column: 13, scope: !2215)
!2218 = !DILocation(line: 917, column: 26, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 915, column: 30)
!2220 = !DILocation(line: 917, column: 17, scope: !2219)
!2221 = !DILocation(line: 916, column: 13, scope: !2219)
!2222 = !DILocation(line: 918, column: 13, scope: !2219)
!2223 = !DILocation(line: 919, column: 9, scope: !2219)
!2224 = !DILocation(line: 922, column: 22, scope: !2099)
!2225 = !DILocation(line: 923, column: 34, scope: !2099)
!2226 = !DILocation(line: 924, column: 36, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 924, column: 9)
!2228 = !{!482, !483, i64 192}
!2229 = !DILocation(line: 924, column: 26, scope: !2227)
!2230 = !DILocation(line: 924, column: 9, scope: !2099)
!2231 = !DILocation(line: 925, column: 22, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 924, column: 48)
!2233 = !DILocation(line: 925, column: 9, scope: !2232)
!2234 = !DILocation(line: 926, column: 25, scope: !2232)
!2235 = !DILocation(line: 927, column: 34, scope: !2232)
!2236 = !DILocation(line: 927, column: 44, scope: !2232)
!2237 = !DILocation(line: 927, column: 9, scope: !2232)
!2238 = !DILocation(line: 928, column: 9, scope: !2232)
!2239 = !DILocation(line: 929, column: 5, scope: !2232)
!2240 = !DILocation(line: 0, scope: !2151)
!2241 = !DILocation(line: 930, column: 1, scope: !2099)
!2242 = distinct !DISubprogram(name: "updateSlavesWaitingBgsave", scope: !3, file: !3, line: 946, type: !2243, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !20, !20}
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252, !2254}
!2246 = !DILocalVariable(name: "bgsaveerr", arg: 1, scope: !2242, file: !3, line: 946, type: !20)
!2247 = !DILocalVariable(name: "type", arg: 2, scope: !2242, file: !3, line: 946, type: !20)
!2248 = !DILocalVariable(name: "ln", scope: !2242, file: !3, line: 947, type: !105)
!2249 = !DILocalVariable(name: "startbgsave", scope: !2242, file: !3, line: 948, type: !20)
!2250 = !DILocalVariable(name: "mincapa", scope: !2242, file: !3, line: 949, type: !20)
!2251 = !DILocalVariable(name: "li", scope: !2242, file: !3, line: 950, type: !420)
!2252 = !DILocalVariable(name: "slave", scope: !2253, file: !3, line: 954, type: !8)
!2253 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 953, column: 33)
!2254 = !DILocalVariable(name: "buf", scope: !2255, file: !3, line: 961, type: !2258)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 960, column: 69)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 960, column: 20)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 956, column: 13)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2259, line: 27, size: 704, elements: !2260)
!2259 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2260 = !{!2261, !2265, !2268, !2271, !2274, !2277, !2280, !2281, !2282, !2287, !2288, !2289, !2292}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2258, file: !2259, line: 29, baseType: !2262, size: 16)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 177, baseType: !2263)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !145, line: 54, baseType: !2264)
!2264 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2258, file: !2259, line: 30, baseType: !2266, size: 16, offset: 16)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !195, line: 155, baseType: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !145, line: 73, baseType: !282)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2258, file: !2259, line: 31, baseType: !2269, size: 32, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !195, line: 205, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !145, line: 88, baseType: !291)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2258, file: !2259, line: 32, baseType: !2272, size: 16, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !195, line: 210, baseType: !2273)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !145, line: 210, baseType: !282)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2258, file: !2259, line: 33, baseType: !2275, size: 16, offset: 80)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 181, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !145, line: 58, baseType: !282)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2258, file: !2259, line: 34, baseType: !2278, size: 16, offset: 96)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 185, baseType: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !145, line: 61, baseType: !282)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2258, file: !2259, line: 35, baseType: !2262, size: 16, offset: 112)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2258, file: !2259, line: 36, baseType: !194, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2258, file: !2259, line: 37, baseType: !2283, size: 128, offset: 192)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !185, line: 52, size: 128, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2283, file: !185, line: 53, baseType: !184, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2283, file: !185, line: 54, baseType: !79, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2258, file: !2259, line: 38, baseType: !2283, size: 128, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2258, file: !2259, line: 39, baseType: !2283, size: 128, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2258, file: !2259, line: 40, baseType: !2290, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !195, line: 118, baseType: !2291)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !145, line: 32, baseType: !79)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2258, file: !2259, line: 41, baseType: !2293, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 113, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !145, line: 28, baseType: !79)
!2295 = !DILocation(line: 946, column: 36, scope: !2242)
!2296 = !DILocation(line: 946, column: 51, scope: !2242)
!2297 = !DILocation(line: 948, column: 9, scope: !2242)
!2298 = !DILocation(line: 949, column: 9, scope: !2242)
!2299 = !DILocation(line: 950, column: 5, scope: !2242)
!2300 = !DILocation(line: 952, column: 23, scope: !2242)
!2301 = !DILocation(line: 950, column: 14, scope: !2242)
!2302 = !DILocation(line: 952, column: 5, scope: !2242)
!2303 = !DILocation(line: 953, column: 5, scope: !2242)
!2304 = !DILocation(line: 953, column: 17, scope: !2242)
!2305 = !DILocation(line: 947, column: 15, scope: !2242)
!2306 = !DILocation(line: 954, column: 29, scope: !2253)
!2307 = !DILocation(line: 954, column: 25, scope: !2253)
!2308 = !DILocation(line: 954, column: 17, scope: !2253)
!2309 = !DILocation(line: 956, column: 20, scope: !2257)
!2310 = !DILocation(line: 956, column: 30, scope: !2257)
!2311 = !DILocation(line: 956, column: 13, scope: !2253)
!2312 = !DILocation(line: 958, column: 23, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 956, column: 64)
!2314 = !DILocation(line: 0, scope: !2313)
!2315 = !DILocation(line: 959, column: 50, scope: !2313)
!2316 = !DILocation(line: 960, column: 9, scope: !2313)
!2317 = !DILocation(line: 960, column: 37, scope: !2256)
!2318 = !DILocation(line: 960, column: 20, scope: !2257)
!2319 = !DILocation(line: 961, column: 13, scope: !2255)
!2320 = !DILocation(line: 968, column: 17, scope: !2255)
!2321 = !DILocation(line: 971, column: 25, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 968, column: 48)
!2323 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 968, column: 17)
!2324 = !DILocation(line: 969, column: 17, scope: !2322)
!2325 = !DILocation(line: 997, column: 34, scope: !2322)
!2326 = !DILocation(line: 998, column: 24, scope: !2322)
!2327 = !DILocation(line: 998, column: 47, scope: !2322)
!2328 = !DILocation(line: 999, column: 47, scope: !2322)
!2329 = !DILocation(line: 999, column: 24, scope: !2322)
!2330 = !DILocation(line: 999, column: 38, scope: !2322)
!2331 = !DILocation(line: 1000, column: 13, scope: !2322)
!2332 = !DILocation(line: 1001, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1000, column: 20)
!2334 = !DILocation(line: 1002, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1001, column: 40)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1001, column: 21)
!2337 = !DILocation(line: 1003, column: 21, scope: !2335)
!2338 = !DILocation(line: 1004, column: 21, scope: !2335)
!2339 = distinct !{!2339, !2303, !2340}
!2340 = !DILocation(line: 1025, column: 5, scope: !2242)
!2341 = !DILocation(line: 1006, column: 52, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1006, column: 21)
!2343 = !DILocation(line: 1006, column: 40, scope: !2342)
!2344 = !DILocation(line: 1006, column: 29, scope: !2342)
!2345 = !DILocation(line: 1006, column: 38, scope: !2342)
!2346 = !DILocation(line: 1006, column: 76, scope: !2342)
!2347 = !DILocation(line: 1006, column: 82, scope: !2342)
!2348 = !DILocation(line: 961, column: 31, scope: !2255)
!2349 = !DILocation(line: 1007, column: 21, scope: !2342)
!2350 = !DILocation(line: 1007, column: 55, scope: !2342)
!2351 = !DILocation(line: 1006, column: 21, scope: !2333)
!2352 = !DILocation(line: 1008, column: 21, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 1007, column: 62)
!2354 = !DILocation(line: 1009, column: 103, scope: !2353)
!2355 = !DILocation(line: 1009, column: 94, scope: !2353)
!2356 = !DILocation(line: 1009, column: 21, scope: !2353)
!2357 = !DILocation(line: 1010, column: 21, scope: !2353)
!2358 = !DILocation(line: 1012, column: 24, scope: !2333)
!2359 = !DILocation(line: 1012, column: 34, scope: !2333)
!2360 = !DILocation(line: 1013, column: 41, scope: !2333)
!2361 = !{!2362, !483, i64 16}
!2362 = !{!"stat", !670, i64 0, !670, i64 2, !484, i64 4, !670, i64 8, !670, i64 10, !670, i64 12, !670, i64 14, !483, i64 16, !2363, i64 24, !2363, i64 40, !2363, i64 56, !483, i64 72, !483, i64 80}
!2363 = !{!"timespec", !483, i64 0, !483, i64 8}
!2364 = !DILocation(line: 1013, column: 24, scope: !2333)
!2365 = !DILocation(line: 1013, column: 35, scope: !2333)
!2366 = !DILocation(line: 1014, column: 34, scope: !2333)
!2367 = !DILocation(line: 1015, column: 52, scope: !2333)
!2368 = !DILocation(line: 1016, column: 49, scope: !2333)
!2369 = !DILocation(line: 1015, column: 39, scope: !2333)
!2370 = !DILocation(line: 1015, column: 24, scope: !2333)
!2371 = !DILocation(line: 1015, column: 37, scope: !2333)
!2372 = !DILocation(line: 1018, column: 42, scope: !2333)
!2373 = !DILocation(line: 1018, column: 52, scope: !2333)
!2374 = !DILocation(line: 1018, column: 17, scope: !2333)
!2375 = !DILocation(line: 1019, column: 46, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1019, column: 21)
!2377 = !DILocation(line: 1019, column: 57, scope: !2376)
!2378 = !DILocation(line: 1019, column: 21, scope: !2376)
!2379 = !DILocation(line: 1019, column: 98, scope: !2376)
!2380 = !DILocation(line: 1019, column: 21, scope: !2333)
!2381 = !DILocation(line: 1020, column: 21, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1019, column: 109)
!2383 = !DILocation(line: 1021, column: 21, scope: !2382)
!2384 = !DILocation(line: 1024, column: 9, scope: !2256)
!2385 = !DILocation(line: 0, scope: !2335)
!2386 = !DILocation(line: 0, scope: !2242)
!2387 = !DILocation(line: 1026, column: 9, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 1026, column: 9)
!2389 = !DILocation(line: 1026, column: 9, scope: !2242)
!2390 = !DILocation(line: 1026, column: 22, scope: !2388)
!2391 = !DILocation(line: 0, scope: !2388)
!2392 = !DILocation(line: 1027, column: 1, scope: !2242)
!2393 = distinct !DISubprogram(name: "shiftReplicationId", scope: !3, file: !3, line: 1052, type: !306, isLocal: false, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2394 = !DILocation(line: 1053, column: 5, scope: !2393)
!2395 = !DILocation(line: 1061, column: 42, scope: !2393)
!2396 = !DILocation(line: 1061, column: 60, scope: !2393)
!2397 = !DILocation(line: 1061, column: 33, scope: !2393)
!2398 = !DILocation(line: 1034, column: 5, scope: !1715, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1062, column: 5, scope: !2393)
!2400 = !DILocation(line: 1035, column: 39, scope: !1715, inlinedAt: !2399)
!2401 = !DILocation(line: 1036, column: 1, scope: !1715, inlinedAt: !2399)
!2402 = !DILocation(line: 1063, column: 143, scope: !2393)
!2403 = !DILocation(line: 1063, column: 5, scope: !2393)
!2404 = !DILocation(line: 1064, column: 1, scope: !2393)
!2405 = distinct !DISubprogram(name: "slaveIsInHandshakeState", scope: !3, file: !3, line: 1070, type: !2406, isLocal: false, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!20}
!2408 = !DILocation(line: 1071, column: 19, scope: !2405)
!2409 = !{!512, !484, i64 2500}
!2410 = !DILocation(line: 1071, column: 57, scope: !2405)
!2411 = !DILocation(line: 1071, column: 5, scope: !2405)
!2412 = !DILocation(line: 1085, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !305, file: !3, line: 1085, column: 9)
!2414 = !DILocation(line: 1085, column: 23, scope: !2413)
!2415 = !DILocation(line: 1085, column: 20, scope: !2413)
!2416 = !DILocation(line: 1085, column: 9, scope: !305)
!2417 = !DILocation(line: 1086, column: 24, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1085, column: 37)
!2419 = !DILocation(line: 1086, column: 22, scope: !2418)
!2420 = !DILocation(line: 1087, column: 26, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 1087, column: 13)
!2422 = !{!512, !484, i64 2528}
!2423 = !DILocation(line: 1087, column: 13, scope: !2421)
!2424 = !DILocation(line: 1090, column: 5, scope: !2418)
!2425 = !DILocation(line: 1091, column: 1, scope: !305)
!2426 = distinct !DISubprogram(name: "replicationEmptyDbCallback", scope: !3, file: !3, line: 1095, type: !120, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "privdata", arg: 1, scope: !2426, file: !3, line: 1095, type: !47)
!2429 = !DILocation(line: 1095, column: 39, scope: !2426)
!2430 = !DILocation(line: 1085, column: 9, scope: !2413, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 1097, column: 5, scope: !2426)
!2432 = !DILocation(line: 1085, column: 23, scope: !2413, inlinedAt: !2431)
!2433 = !DILocation(line: 1085, column: 20, scope: !2413, inlinedAt: !2431)
!2434 = !DILocation(line: 1085, column: 9, scope: !305, inlinedAt: !2431)
!2435 = !DILocation(line: 1086, column: 24, scope: !2418, inlinedAt: !2431)
!2436 = !DILocation(line: 1086, column: 22, scope: !2418, inlinedAt: !2431)
!2437 = !DILocation(line: 1087, column: 26, scope: !2421, inlinedAt: !2431)
!2438 = !DILocation(line: 1087, column: 13, scope: !2421, inlinedAt: !2431)
!2439 = !DILocation(line: 1090, column: 5, scope: !2418, inlinedAt: !2431)
!2440 = !DILocation(line: 1091, column: 1, scope: !305, inlinedAt: !2431)
!2441 = !DILocation(line: 1098, column: 1, scope: !2426)
!2442 = distinct !DISubprogram(name: "replicationCreateMasterClient", scope: !3, file: !3, line: 1103, type: !2243, isLocal: false, isDefinition: true, scopeLine: 1103, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2443)
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "fd", arg: 1, scope: !2442, file: !3, line: 1103, type: !20)
!2445 = !DILocalVariable(name: "dbid", arg: 2, scope: !2442, file: !3, line: 1103, type: !20)
!2446 = !DILocation(line: 1103, column: 40, scope: !2442)
!2447 = !DILocation(line: 1103, column: 48, scope: !2442)
!2448 = !DILocation(line: 1104, column: 21, scope: !2442)
!2449 = !DILocation(line: 1104, column: 19, scope: !2442)
!2450 = !DILocation(line: 1105, column: 20, scope: !2442)
!2451 = !DILocation(line: 1105, column: 26, scope: !2442)
!2452 = !DILocation(line: 1106, column: 20, scope: !2442)
!2453 = !DILocation(line: 1106, column: 34, scope: !2442)
!2454 = !{!482, !484, i64 164}
!2455 = !DILocation(line: 1107, column: 37, scope: !2442)
!2456 = !{!512, !486, i64 2648}
!2457 = !DILocation(line: 1107, column: 20, scope: !2442)
!2458 = !DILocation(line: 1107, column: 28, scope: !2442)
!2459 = !DILocation(line: 1108, column: 20, scope: !2442)
!2460 = !DILocation(line: 1108, column: 33, scope: !2442)
!2461 = !{!482, !486, i64 208}
!2462 = !DILocation(line: 1109, column: 12, scope: !2442)
!2463 = !DILocation(line: 1109, column: 5, scope: !2442)
!2464 = !DILocation(line: 1113, column: 16, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1113, column: 9)
!2466 = !DILocation(line: 1113, column: 24, scope: !2465)
!2467 = !DILocation(line: 1113, column: 32, scope: !2465)
!2468 = !DILocation(line: 1113, column: 9, scope: !2442)
!2469 = !DILocation(line: 1114, column: 24, scope: !2465)
!2470 = !DILocation(line: 1114, column: 30, scope: !2465)
!2471 = !DILocation(line: 1114, column: 9, scope: !2465)
!2472 = !DILocation(line: 1115, column: 14, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1115, column: 9)
!2474 = !DILocation(line: 1115, column: 9, scope: !2442)
!2475 = !DILocation(line: 1115, column: 21, scope: !2473)
!2476 = !DILocation(line: 1116, column: 1, scope: !2442)
!2477 = distinct !DISubprogram(name: "restartAOFAfterSYNC", scope: !3, file: !3, line: 1122, type: !306, isLocal: false, isDefinition: true, scopeLine: 1122, isOptimized: true, unit: !260, retainedNodes: !2478)
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "tries", scope: !2477, file: !3, line: 1123, type: !133)
!2480 = !DILocalVariable(name: "max_tries", scope: !2477, file: !3, line: 1123, type: !133)
!2481 = !DILocation(line: 1123, column: 25, scope: !2477)
!2482 = !DILocation(line: 1123, column: 18, scope: !2477)
!2483 = !DILocation(line: 1124, column: 10, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1124, column: 5)
!2485 = !DILocation(line: 1124, column: 5, scope: !2484)
!2486 = !DILocation(line: 1125, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1125, column: 13)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1124, column: 49)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1124, column: 5)
!2490 = !DILocation(line: 1125, column: 31, scope: !2487)
!2491 = !DILocation(line: 1125, column: 13, scope: !2488)
!2492 = !DILocation(line: 1126, column: 9, scope: !2488)
!2493 = !DILocation(line: 1129, column: 9, scope: !2488)
!2494 = !DILocation(line: 1124, column: 5, scope: !2489)
!2495 = !DILocation(line: 1131, column: 9, scope: !2477)
!2496 = !DILocation(line: 1132, column: 9, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1131, column: 29)
!2498 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1131, column: 9)
!2499 = !DILocation(line: 1135, column: 9, scope: !2497)
!2500 = !DILocation(line: 1137, column: 1, scope: !2477)
!2501 = !DILocation(line: 1141, column: 39, scope: !310)
!2502 = !DILocation(line: 1141, column: 47, scope: !310)
!2503 = !DILocation(line: 1141, column: 57, scope: !310)
!2504 = !DILocation(line: 1141, column: 71, scope: !310)
!2505 = !DILocation(line: 1142, column: 5, scope: !310)
!2506 = !DILocation(line: 1142, column: 10, scope: !310)
!2507 = !DILocation(line: 1157, column: 16, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1157, column: 9)
!2509 = !{!512, !483, i64 2504}
!2510 = !DILocation(line: 1157, column: 35, scope: !2508)
!2511 = !DILocation(line: 1157, column: 9, scope: !310)
!2512 = !DILocation(line: 1158, column: 45, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1158, column: 13)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1157, column: 42)
!2515 = !{!512, !484, i64 2496}
!2516 = !DILocation(line: 1158, column: 64, scope: !2513)
!2517 = !DILocation(line: 1158, column: 38, scope: !2513)
!2518 = !DILocation(line: 1158, column: 13, scope: !2513)
!2519 = !DILocation(line: 1158, column: 71, scope: !2513)
!2520 = !DILocation(line: 1158, column: 13, scope: !2514)
!2521 = !DILocation(line: 1161, column: 26, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1158, column: 78)
!2523 = !DILocation(line: 1161, column: 17, scope: !2522)
!2524 = !DILocation(line: 1159, column: 13, scope: !2522)
!2525 = !DILocation(line: 1162, column: 13, scope: !2522)
!2526 = !DILocation(line: 1165, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1165, column: 13)
!2528 = !DILocation(line: 1165, column: 20, scope: !2527)
!2529 = !DILocation(line: 1165, column: 13, scope: !2514)
!2530 = !DILocation(line: 1168, column: 20, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1165, column: 28)
!2532 = !DILocation(line: 1166, column: 13, scope: !2531)
!2533 = !DILocation(line: 1169, column: 13, scope: !2531)
!2534 = !DILocation(line: 1170, column: 27, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1170, column: 20)
!2536 = !DILocation(line: 1170, column: 20, scope: !2527)
!2537 = !DILocation(line: 1174, column: 50, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1170, column: 36)
!2539 = !DILocation(line: 1174, column: 41, scope: !2538)
!2540 = !{!512, !483, i64 2544}
!2541 = !DILocation(line: 1175, column: 13, scope: !2538)
!2542 = !DILocation(line: 1176, column: 27, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1176, column: 20)
!2544 = !DILocation(line: 1176, column: 20, scope: !2535)
!2545 = !DILocation(line: 1177, column: 13, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1176, column: 35)
!2547 = !DILocation(line: 1178, column: 13, scope: !2546)
!2548 = !DILocation(line: 1191, column: 24, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1191, column: 13)
!2550 = !DILocation(line: 1191, column: 13, scope: !2549)
!2551 = !DILocation(line: 1191, column: 37, scope: !2549)
!2552 = !DILocation(line: 1191, column: 42, scope: !2549)
!2553 = !DILocation(line: 1191, column: 55, scope: !2549)
!2554 = !DILocation(line: 1191, column: 45, scope: !2549)
!2555 = !DILocation(line: 1191, column: 59, scope: !2549)
!2556 = !DILocation(line: 1191, column: 13, scope: !2514)
!2557 = !DILocation(line: 1193, column: 13, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1191, column: 82)
!2559 = !DILocation(line: 1194, column: 13, scope: !2558)
!2560 = !DILocation(line: 1197, column: 39, scope: !2558)
!2561 = !DILocation(line: 1198, column: 13, scope: !2558)
!2562 = !DILocation(line: 1200, column: 9, scope: !2558)
!2563 = !DILocation(line: 1202, column: 41, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1200, column: 16)
!2565 = !DILocation(line: 1202, column: 39, scope: !2564)
!2566 = !DILocation(line: 1203, column: 13, scope: !2564)
!2567 = !DILocation(line: 1207, column: 9, scope: !2514)
!2568 = !DILocation(line: 1211, column: 9, scope: !310)
!2569 = !DILocation(line: 1214, column: 51, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1213, column: 12)
!2571 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1211, column: 9)
!2572 = !{!512, !483, i64 2512}
!2573 = !DILocation(line: 1214, column: 42, scope: !2570)
!2574 = !DILocation(line: 1144, column: 11, scope: !310)
!2575 = !DILocation(line: 1215, column: 25, scope: !2570)
!2576 = !DILocation(line: 1215, column: 19, scope: !2570)
!2577 = !DILocation(line: 1143, column: 20, scope: !310)
!2578 = !DILocation(line: 0, scope: !2570)
!2579 = !DILocation(line: 1218, column: 13, scope: !310)
!2580 = !DILocation(line: 1143, column: 13, scope: !310)
!2581 = !DILocation(line: 1219, column: 15, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1219, column: 9)
!2583 = !DILocation(line: 1219, column: 9, scope: !310)
!2584 = !DILocation(line: 1221, column: 20, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1219, column: 21)
!2586 = !DILocation(line: 1221, column: 13, scope: !2585)
!2587 = !DILocation(line: 1221, column: 38, scope: !2585)
!2588 = !DILocation(line: 1221, column: 29, scope: !2585)
!2589 = !DILocation(line: 1220, column: 9, scope: !2585)
!2590 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !2593)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1967, column: 9)
!2592 = distinct !DISubprogram(name: "cancelReplicationHandshake", scope: !3, file: !3, line: 1966, type: !2406, isLocal: false, isDefinition: true, scopeLine: 1966, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2593 = distinct !DILocation(line: 1222, column: 9, scope: !2585)
!2594 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !2593)
!2595 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !2593)
!2596 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !2593)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1967, column: 51)
!2598 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !2593)
!2599 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !2593)
!2600 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1970, column: 16)
!2601 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !2593)
!2602 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !2593)
!2604 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !2603)
!2605 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !2593)
!2606 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !2610)
!2607 = distinct !DISubprogram(name: "undoConnectWithMaster", scope: !3, file: !3, line: 1939, type: !306, isLocal: false, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2608)
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "fd", scope: !2607, file: !3, line: 1940, type: !20)
!2610 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !2593)
!2611 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1972, column: 5)
!2612 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !2610)
!2613 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !2610)
!2614 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !2610)
!2615 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !2610)
!2616 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !2610)
!2617 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !2610)
!2618 = !DILocation(line: 0, scope: !2585)
!2619 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !2593)
!2620 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !2593)
!2621 = !DILocation(line: 1223, column: 9, scope: !2585)
!2622 = !DILocation(line: 1225, column: 33, scope: !310)
!2623 = !{!512, !486, i64 1240}
!2624 = !DILocation(line: 1229, column: 9, scope: !310)
!2625 = !DILocation(line: 1231, column: 9, scope: !310)
!2626 = !DILocation(line: 1233, column: 19, scope: !391)
!2627 = !DILocation(line: 1233, column: 13, scope: !392)
!2628 = !DILocation(line: 1234, column: 33, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1233, column: 42)
!2630 = !DILocation(line: 1234, column: 39, scope: !2629)
!2631 = !DILocation(line: 1234, column: 13, scope: !2629)
!2632 = !DILocation(line: 1235, column: 9, scope: !2629)
!2633 = !DILocation(line: 1237, column: 40, scope: !390)
!2634 = !DILocation(line: 1237, column: 47, scope: !390)
!2635 = !DILocation(line: 1237, column: 13, scope: !390)
!2636 = !DILocation(line: 1238, column: 29, scope: !390)
!2637 = !DILocation(line: 1238, column: 13, scope: !390)
!2638 = !DILocation(line: 1240, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !392, file: !3, line: 1240, column: 13)
!2640 = !DILocation(line: 1240, column: 58, scope: !2639)
!2641 = !DILocation(line: 1240, column: 13, scope: !392)
!2642 = !DILocation(line: 1240, column: 64, scope: !2639)
!2643 = !DILocation(line: 0, scope: !310)
!2644 = !DILocation(line: 1243, column: 42, scope: !310)
!2645 = !DILocation(line: 1243, column: 33, scope: !310)
!2646 = !DILocation(line: 1244, column: 34, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1244, column: 9)
!2648 = !{!512, !484, i64 2532}
!2649 = !DILocation(line: 1244, column: 21, scope: !2647)
!2650 = !DILocation(line: 1143, column: 29, scope: !310)
!2651 = !DILocation(line: 1244, column: 63, scope: !2647)
!2652 = !DILocation(line: 1244, column: 9, scope: !310)
!2653 = !DILocation(line: 1246, column: 23, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1244, column: 73)
!2655 = !DILocation(line: 1246, column: 13, scope: !2654)
!2656 = !DILocation(line: 1246, column: 41, scope: !2654)
!2657 = !DILocation(line: 1246, column: 32, scope: !2654)
!2658 = !DILocation(line: 1245, column: 9, scope: !2654)
!2659 = !DILocation(line: 1247, column: 9, scope: !2654)
!2660 = !DILocation(line: 1249, column: 31, scope: !310)
!2661 = !DILocation(line: 1252, column: 20, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1252, column: 9)
!2663 = !DILocation(line: 1252, column: 17, scope: !2662)
!2664 = !DILocation(line: 1253, column: 30, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1253, column: 13)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1252, column: 33)
!2667 = !DILocation(line: 1254, column: 39, scope: !2665)
!2668 = !DILocation(line: 1253, column: 13, scope: !2665)
!2669 = !DILocation(line: 1254, column: 61, scope: !2665)
!2670 = !DILocation(line: 1253, column: 13, scope: !2666)
!2671 = !DILocation(line: 1264, column: 16, scope: !396)
!2672 = !DILocation(line: 1256, column: 114, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1255, column: 9)
!2674 = !DILocation(line: 1256, column: 105, scope: !2673)
!2675 = !DILocation(line: 1256, column: 13, scope: !2673)
!2676 = !DILocation(line: 1257, column: 13, scope: !2673)
!2677 = !DILocation(line: 1265, column: 16, scope: !396)
!2678 = !{!512, !483, i64 2520}
!2679 = !DILocation(line: 1265, column: 45, scope: !396)
!2680 = !DILocation(line: 1264, column: 35, scope: !396)
!2681 = !DILocation(line: 1264, column: 9, scope: !310)
!2682 = !DILocation(line: 1267, column: 53, scope: !395)
!2683 = !DILocation(line: 1267, column: 15, scope: !395)
!2684 = !DILocation(line: 1269, column: 9, scope: !395)
!2685 = !DILocation(line: 1271, column: 45, scope: !395)
!2686 = !DILocation(line: 1272, column: 5, scope: !395)
!2687 = !DILocation(line: 1275, column: 9, scope: !310)
!2688 = !DILocation(line: 1276, column: 20, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1276, column: 13)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1275, column: 19)
!2691 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1275, column: 9)
!2692 = !DILocation(line: 1276, column: 49, scope: !2689)
!2693 = !DILocation(line: 1276, column: 39, scope: !2689)
!2694 = !DILocation(line: 1276, column: 13, scope: !2690)
!2695 = !DILocation(line: 1277, column: 13, scope: !2689)
!2696 = !DILocation(line: 1280, column: 9, scope: !310)
!2697 = !DILocation(line: 1280, column: 9, scope: !399)
!2698 = !DILocation(line: 1281, column: 37, scope: !398)
!2699 = !{!512, !484, i64 1880}
!2700 = !DILocation(line: 1281, column: 47, scope: !398)
!2701 = !DILocation(line: 1284, column: 20, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1284, column: 13)
!2703 = !DILocation(line: 1284, column: 34, scope: !2702)
!2704 = !DILocation(line: 1284, column: 13, scope: !398)
!2705 = !DILocation(line: 1290, column: 21, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1284, column: 41)
!2707 = !DILocation(line: 1285, column: 13, scope: !2706)
!2708 = !DILocation(line: 1291, column: 25, scope: !2706)
!2709 = !DILocation(line: 1291, column: 13, scope: !2706)
!2710 = !DILocation(line: 1292, column: 38, scope: !2706)
!2711 = !DILocation(line: 1292, column: 13, scope: !2706)
!2712 = !DILocation(line: 1293, column: 9, scope: !2706)
!2713 = !DILocation(line: 1295, column: 27, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1295, column: 13)
!2715 = !{!512, !485, i64 2536}
!2716 = !DILocation(line: 1295, column: 56, scope: !2714)
!2717 = !DILocation(line: 1295, column: 13, scope: !2714)
!2718 = !DILocation(line: 1295, column: 70, scope: !2714)
!2719 = !DILocation(line: 1295, column: 13, scope: !398)
!2720 = !DILocation(line: 1296, column: 138, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1295, column: 77)
!2722 = !DILocation(line: 1296, column: 129, scope: !2721)
!2723 = !DILocation(line: 1296, column: 13, scope: !2721)
!2724 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1297, column: 13, scope: !2721)
!2726 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !2725)
!2727 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !2725)
!2728 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !2725)
!2729 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !2725)
!2730 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !2725)
!2731 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !2725)
!2732 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !2725)
!2734 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !2733)
!2735 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !2725)
!2736 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !2725)
!2738 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !2737)
!2739 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !2737)
!2740 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !2737)
!2741 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !2737)
!2742 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !2737)
!2743 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !2737)
!2744 = !DILocation(line: 0, scope: !2721)
!2745 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !2725)
!2746 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !2725)
!2747 = !DILocation(line: 1298, column: 13, scope: !2721)
!2748 = !DILocation(line: 1300, column: 9, scope: !398)
!2749 = !DILocation(line: 1303, column: 12, scope: !398)
!2750 = !DILocation(line: 1303, column: 28, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1303, column: 12)
!2752 = !DILocation(line: 1304, column: 9, scope: !398)
!2753 = !DILocation(line: 1307, column: 20, scope: !398)
!2754 = !{!512, !484, i64 2656}
!2755 = !DILocation(line: 1307, column: 13, scope: !398)
!2756 = !DILocation(line: 1305, column: 9, scope: !398)
!2757 = !DILocation(line: 1313, column: 34, scope: !398)
!2758 = !DILocation(line: 1313, column: 44, scope: !398)
!2759 = !DILocation(line: 1313, column: 9, scope: !398)
!2760 = !DILocation(line: 1314, column: 9, scope: !398)
!2761 = !DILocation(line: 1315, column: 9, scope: !398)
!2762 = !DILocation(line: 1315, column: 21, scope: !398)
!2763 = !DILocation(line: 1316, column: 28, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1316, column: 13)
!2765 = !DILocation(line: 1316, column: 13, scope: !2764)
!2766 = !DILocation(line: 1316, column: 47, scope: !2764)
!2767 = !DILocation(line: 1316, column: 13, scope: !398)
!2768 = !DILocation(line: 1317, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1316, column: 56)
!2770 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1318, column: 13, scope: !2769)
!2772 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !2771)
!2773 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !2771)
!2774 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !2771)
!2775 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !2771)
!2776 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !2771)
!2777 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !2771)
!2778 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !2771)
!2780 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !2779)
!2781 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !2771)
!2782 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !2771)
!2784 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !2783)
!2785 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !2783)
!2786 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !2783)
!2787 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !2783)
!2788 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !2783)
!2789 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !2783)
!2790 = !DILocation(line: 0, scope: !2769)
!2791 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !2771)
!2792 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !2771)
!2793 = !DILocation(line: 1321, column: 17, scope: !2769)
!2794 = !DILocation(line: 1321, column: 33, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1321, column: 17)
!2796 = !DILocation(line: 1325, column: 22, scope: !398)
!2797 = !DILocation(line: 1325, column: 9, scope: !398)
!2798 = !DILocation(line: 1326, column: 22, scope: !398)
!2799 = !DILocation(line: 1326, column: 9, scope: !398)
!2800 = !DILocation(line: 1327, column: 46, scope: !398)
!2801 = !DILocation(line: 1327, column: 66, scope: !398)
!2802 = !{!2803, !484, i64 0}
!2803 = !{!"rdbSaveInfo", !484, i64 0, !484, i64 4, !471, i64 8, !486, i64 56}
!2804 = !DILocation(line: 1103, column: 40, scope: !2442, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1327, column: 9, scope: !398)
!2806 = !DILocation(line: 1103, column: 48, scope: !2442, inlinedAt: !2805)
!2807 = !DILocation(line: 1104, column: 21, scope: !2442, inlinedAt: !2805)
!2808 = !DILocation(line: 1104, column: 19, scope: !2442, inlinedAt: !2805)
!2809 = !DILocation(line: 1105, column: 20, scope: !2442, inlinedAt: !2805)
!2810 = !DILocation(line: 1105, column: 26, scope: !2442, inlinedAt: !2805)
!2811 = !DILocation(line: 1106, column: 20, scope: !2442, inlinedAt: !2805)
!2812 = !DILocation(line: 1106, column: 34, scope: !2442, inlinedAt: !2805)
!2813 = !DILocation(line: 1107, column: 37, scope: !2442, inlinedAt: !2805)
!2814 = !DILocation(line: 1107, column: 20, scope: !2442, inlinedAt: !2805)
!2815 = !DILocation(line: 1107, column: 28, scope: !2442, inlinedAt: !2805)
!2816 = !DILocation(line: 1108, column: 20, scope: !2442, inlinedAt: !2805)
!2817 = !DILocation(line: 1108, column: 33, scope: !2442, inlinedAt: !2805)
!2818 = !DILocation(line: 1109, column: 12, scope: !2442, inlinedAt: !2805)
!2819 = !DILocation(line: 1109, column: 5, scope: !2442, inlinedAt: !2805)
!2820 = !DILocation(line: 1113, column: 16, scope: !2465, inlinedAt: !2805)
!2821 = !DILocation(line: 1113, column: 24, scope: !2465, inlinedAt: !2805)
!2822 = !DILocation(line: 1113, column: 32, scope: !2465, inlinedAt: !2805)
!2823 = !DILocation(line: 1113, column: 9, scope: !2442, inlinedAt: !2805)
!2824 = !DILocation(line: 1114, column: 24, scope: !2465, inlinedAt: !2805)
!2825 = !DILocation(line: 1114, column: 30, scope: !2465, inlinedAt: !2805)
!2826 = !DILocation(line: 1114, column: 9, scope: !2465, inlinedAt: !2805)
!2827 = !DILocation(line: 1115, column: 14, scope: !2473, inlinedAt: !2805)
!2828 = !DILocation(line: 1115, column: 9, scope: !2442, inlinedAt: !2805)
!2829 = !DILocation(line: 1115, column: 21, scope: !2473, inlinedAt: !2805)
!2830 = !DILocation(line: 1333, column: 37, scope: !398)
!2831 = !DILocation(line: 1116, column: 1, scope: !2442, inlinedAt: !2805)
!2832 = !DILocation(line: 1328, column: 27, scope: !398)
!2833 = !DILocation(line: 1329, column: 32, scope: !398)
!2834 = !{!512, !483, i64 2568}
!2835 = !DILocation(line: 1333, column: 30, scope: !398)
!2836 = !DILocation(line: 1333, column: 9, scope: !398)
!2837 = !DILocation(line: 1334, column: 44, scope: !398)
!2838 = !DILocation(line: 1334, column: 52, scope: !398)
!2839 = !DILocation(line: 1334, column: 35, scope: !398)
!2840 = !DILocation(line: 1042, column: 5, scope: !1721, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1335, column: 9, scope: !398)
!2842 = !DILocation(line: 1043, column: 40, scope: !1721, inlinedAt: !2841)
!2843 = !DILocation(line: 1044, column: 33, scope: !1721, inlinedAt: !2841)
!2844 = !DILocation(line: 1045, column: 1, scope: !1721, inlinedAt: !2841)
!2845 = !DILocation(line: 1340, column: 20, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1340, column: 13)
!2847 = !DILocation(line: 1340, column: 33, scope: !2846)
!2848 = !DILocation(line: 1340, column: 13, scope: !398)
!2849 = !DILocation(line: 79, column: 5, scope: !509, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1340, column: 42, scope: !2846)
!2851 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !2850)
!2852 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !2850)
!2853 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !2850)
!2854 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !2850)
!2855 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !2850)
!2856 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !2850)
!2857 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !2850)
!2858 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !2850)
!2859 = !DILocation(line: 1340, column: 42, scope: !2846)
!2860 = !DILocation(line: 1342, column: 9, scope: !398)
!2861 = !DILocation(line: 1346, column: 13, scope: !398)
!2862 = !DILocation(line: 1346, column: 29, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1346, column: 13)
!2864 = !DILocation(line: 1347, column: 5, scope: !399)
!2865 = !DILocation(line: 1322, column: 13, scope: !2769)
!2866 = !DILocation(line: 0, scope: !2522)
!2867 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 1351, column: 5, scope: !310)
!2869 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !2868)
!2870 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !2868)
!2871 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !2868)
!2872 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !2868)
!2873 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !2868)
!2874 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !2868)
!2875 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !2868)
!2877 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !2876)
!2878 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !2868)
!2879 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !2868)
!2881 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !2880)
!2882 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !2880)
!2883 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !2880)
!2884 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !2880)
!2885 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !2880)
!2886 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !2880)
!2887 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !2868)
!2888 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !2868)
!2889 = !DILocation(line: 1352, column: 5, scope: !310)
!2890 = !DILocation(line: 1353, column: 1, scope: !310)
!2891 = !DILocation(line: 1967, column: 16, scope: !2591)
!2892 = !DILocation(line: 1967, column: 27, scope: !2591)
!2893 = !DILocation(line: 1967, column: 9, scope: !2592)
!2894 = !DILocation(line: 1968, column: 9, scope: !2597)
!2895 = !DILocation(line: 1970, column: 5, scope: !2597)
!2896 = !DILocation(line: 1970, column: 34, scope: !2600)
!2897 = !DILocation(line: 1970, column: 59, scope: !2600)
!2898 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1971, column: 16, scope: !2600)
!2900 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !2899)
!2901 = !DILocation(line: 1970, column: 16, scope: !2591)
!2902 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1973, column: 9, scope: !2611)
!2904 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !2903)
!2905 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !2903)
!2906 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !2903)
!2907 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !2903)
!2908 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !2903)
!2909 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !2903)
!2910 = !DILocation(line: 0, scope: !2597)
!2911 = !DILocation(line: 1978, column: 5, scope: !2592)
!2912 = !DILocation(line: 0, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1975, column: 12)
!2914 = !DILocation(line: 1979, column: 1, scope: !2592)
!2915 = distinct !DISubprogram(name: "sendSynchronousCommand", scope: !3, file: !3, line: 1364, type: !2916, isLocal: false, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!6, !20, !20, null}
!2918 = !{!2919, !2920, !2921, !2924, !2937, !2938, !2939, !2940}
!2919 = !DILocalVariable(name: "flags", arg: 1, scope: !2915, file: !3, line: 1364, type: !20)
!2920 = !DILocalVariable(name: "fd", arg: 2, scope: !2915, file: !3, line: 1364, type: !20)
!2921 = !DILocalVariable(name: "arg", scope: !2922, file: !3, line: 1370, type: !6)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1369, column: 33)
!2923 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1369, column: 9)
!2924 = !DILocalVariable(name: "ap", scope: !2922, file: !3, line: 1371, type: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2926, line: 46, baseType: !2927)
!2926 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2928, line: 51, baseType: !2929)
!2928 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 1371, baseType: !2930)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2931, size: 192, elements: !428)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 1371, size: 192, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2931, file: !3, line: 1371, baseType: !133, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2931, file: !3, line: 1371, baseType: !133, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2931, file: !3, line: 1371, baseType: !47, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2931, file: !3, line: 1371, baseType: !47, size: 64, offset: 128)
!2937 = !DILocalVariable(name: "cmd", scope: !2922, file: !3, line: 1372, type: !139)
!2938 = !DILocalVariable(name: "cmdargs", scope: !2922, file: !3, line: 1373, type: !139)
!2939 = !DILocalVariable(name: "argslen", scope: !2922, file: !3, line: 1374, type: !142)
!2940 = !DILocalVariable(name: "buf", scope: !2941, file: !3, line: 1404, type: !2943)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1403, column: 32)
!2942 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1403, column: 9)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !2944)
!2944 = !{!2945}
!2945 = !DISubrange(count: 256)
!2946 = !DILocation(line: 1364, column: 34, scope: !2915)
!2947 = !DILocation(line: 1364, column: 45, scope: !2915)
!2948 = !DILocation(line: 1369, column: 15, scope: !2923)
!2949 = !DILocation(line: 1369, column: 9, scope: !2915)
!2950 = !DILocation(line: 1371, column: 9, scope: !2922)
!2951 = !DILocation(line: 1371, column: 17, scope: !2922)
!2952 = !DILocation(line: 1372, column: 19, scope: !2922)
!2953 = !DILocation(line: 1372, column: 13, scope: !2922)
!2954 = !DILocation(line: 1373, column: 23, scope: !2922)
!2955 = !DILocation(line: 1373, column: 13, scope: !2922)
!2956 = !DILocation(line: 1374, column: 16, scope: !2922)
!2957 = !DILocation(line: 1375, column: 9, scope: !2922)
!2958 = !DILocation(line: 1377, column: 9, scope: !2922)
!2959 = !DILocation(line: 0, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1377, column: 18)
!2961 = !DILocation(line: 1378, column: 19, scope: !2960)
!2962 = !DILocation(line: 1370, column: 15, scope: !2922)
!2963 = !DILocation(line: 1379, column: 21, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1379, column: 17)
!2965 = !DILocation(line: 1379, column: 17, scope: !2960)
!2966 = !DILocation(line: 1381, column: 61, scope: !2960)
!2967 = !DILocation(line: 1381, column: 23, scope: !2960)
!2968 = !DILocation(line: 1382, column: 20, scope: !2960)
!2969 = distinct !{!2969, !2958, !2970}
!2970 = !DILocation(line: 1383, column: 9, scope: !2922)
!2971 = !DILocation(line: 1385, column: 9, scope: !2922)
!2972 = !DILocation(line: 1387, column: 15, scope: !2922)
!2973 = !DILocation(line: 1388, column: 15, scope: !2922)
!2974 = !DILocation(line: 1389, column: 9, scope: !2922)
!2975 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 1392, column: 30, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1392, column: 13)
!2978 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !2976)
!2979 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !2976)
!2980 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !2976)
!2981 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !2976)
!2982 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !2976)
!2983 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !2976)
!2984 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !2976)
!2985 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !2976)
!2986 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !2976)
!2987 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !2976)
!2988 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !2976)
!2989 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !2976)
!2990 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !2976)
!2991 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !2976)
!2992 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !2976)
!2993 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !2976)
!2994 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !2976)
!2995 = !DILocation(line: 0, scope: !662, inlinedAt: !2976)
!2996 = !DILocation(line: 0, scope: !2977)
!2997 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !2976)
!2998 = !DILocation(line: 1392, column: 49, scope: !2977)
!2999 = !DILocation(line: 1392, column: 68, scope: !2977)
!3000 = !DILocation(line: 1392, column: 42, scope: !2977)
!3001 = !DILocation(line: 1392, column: 13, scope: !2977)
!3002 = !DILocation(line: 1393, column: 13, scope: !2977)
!3003 = !DILocation(line: 0, scope: !2922)
!3004 = !DILocation(line: 1392, column: 13, scope: !2922)
!3005 = !DILocation(line: 1400, column: 5, scope: !2923)
!3006 = !DILocation(line: 1396, column: 33, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1394, column: 9)
!3008 = !DILocation(line: 1397, column: 30, scope: !3007)
!3009 = !DILocation(line: 1397, column: 21, scope: !3007)
!3010 = !DILocation(line: 1396, column: 20, scope: !3007)
!3011 = !DILocation(line: 1396, column: 13, scope: !3007)
!3012 = !DILocation(line: 1403, column: 15, scope: !2942)
!3013 = !DILocation(line: 1403, column: 9, scope: !2915)
!3014 = !DILocation(line: 1404, column: 9, scope: !2941)
!3015 = !DILocation(line: 1404, column: 14, scope: !2941)
!3016 = !DILocation(line: 1406, column: 52, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1406, column: 13)
!3018 = !DILocation(line: 1406, column: 71, scope: !3017)
!3019 = !DILocation(line: 1406, column: 45, scope: !3017)
!3020 = !DILocation(line: 1406, column: 13, scope: !3017)
!3021 = !DILocation(line: 1407, column: 13, scope: !3017)
!3022 = !DILocation(line: 1406, column: 13, scope: !2941)
!3023 = !DILocation(line: 1409, column: 33, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 1408, column: 9)
!3025 = !DILocation(line: 1410, column: 30, scope: !3024)
!3026 = !DILocation(line: 1410, column: 21, scope: !3024)
!3027 = !DILocation(line: 1409, column: 20, scope: !3024)
!3028 = !DILocation(line: 1409, column: 13, scope: !3024)
!3029 = !DILocation(line: 1412, column: 46, scope: !2941)
!3030 = !DILocation(line: 1412, column: 37, scope: !2941)
!3031 = !DILocation(line: 1413, column: 16, scope: !2941)
!3032 = !DILocation(line: 1413, column: 9, scope: !2941)
!3033 = !DILocation(line: 0, scope: !2941)
!3034 = !DILocation(line: 0, scope: !3024)
!3035 = !DILocation(line: 1414, column: 5, scope: !2942)
!3036 = !DILocation(line: 0, scope: !3007)
!3037 = !DILocation(line: 1416, column: 1, scope: !2915)
!3038 = distinct !DISubprogram(name: "slaveTryPartialResynchronization", scope: !3, file: !3, line: 1472, type: !3039, isLocal: false, isDefinition: true, scopeLine: 1472, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!20, !20, !20}
!3041 = !{!3042, !3043, !3044, !3045, !3049, !3050, !3053, !3054, !3057, !3058}
!3042 = !DILocalVariable(name: "fd", arg: 1, scope: !3038, file: !3, line: 1472, type: !20)
!3043 = !DILocalVariable(name: "read_reply", arg: 2, scope: !3038, file: !3, line: 1472, type: !20)
!3044 = !DILocalVariable(name: "psync_replid", scope: !3038, file: !3, line: 1473, type: !6)
!3045 = !DILocalVariable(name: "psync_offset", scope: !3038, file: !3, line: 1474, type: !3046)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !3047)
!3047 = !{!3048}
!3048 = !DISubrange(count: 32)
!3049 = !DILocalVariable(name: "reply", scope: !3038, file: !3, line: 1475, type: !139)
!3050 = !DILocalVariable(name: "replid", scope: !3051, file: !3, line: 1519, type: !6)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1518, column: 43)
!3052 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1518, column: 9)
!3053 = !DILocalVariable(name: "offset", scope: !3051, file: !3, line: 1519, type: !6)
!3054 = !DILocalVariable(name: "start", scope: !3055, file: !3, line: 1561, type: !6)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 1551, column: 40)
!3056 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1551, column: 9)
!3057 = !DILocalVariable(name: "end", scope: !3055, file: !3, line: 1562, type: !6)
!3058 = !DILocalVariable(name: "new", scope: !3059, file: !3, line: 1565, type: !206)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1564, column: 46)
!3060 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1564, column: 13)
!3061 = !DILocation(line: 1472, column: 42, scope: !3038)
!3062 = !DILocation(line: 1472, column: 50, scope: !3038)
!3063 = !DILocation(line: 1474, column: 5, scope: !3038)
!3064 = !DILocation(line: 1474, column: 10, scope: !3038)
!3065 = !DILocation(line: 1478, column: 10, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1478, column: 9)
!3067 = !DILocation(line: 1478, column: 9, scope: !3038)
!3068 = !DILocation(line: 1484, column: 38, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1478, column: 22)
!3070 = !DILocation(line: 1486, column: 20, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1486, column: 13)
!3072 = !{!512, !485, i64 2488}
!3073 = !DILocation(line: 1486, column: 13, scope: !3071)
!3074 = !DILocation(line: 1486, column: 13, scope: !3069)
!3075 = !DILocation(line: 1487, column: 28, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1486, column: 35)
!3077 = !DILocation(line: 1473, column: 11, scope: !3038)
!3078 = !DILocation(line: 1488, column: 86, scope: !3076)
!3079 = !DILocation(line: 1488, column: 93, scope: !3076)
!3080 = !DILocation(line: 1488, column: 13, scope: !3076)
!3081 = !DILocation(line: 1489, column: 13, scope: !3076)
!3082 = !DILocation(line: 1490, column: 9, scope: !3076)
!3083 = !DILocation(line: 1491, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1490, column: 16)
!3085 = !DILocation(line: 1493, column: 13, scope: !3084)
!3086 = !DILocation(line: 0, scope: !3084)
!3087 = !DILocation(line: 1497, column: 17, scope: !3069)
!3088 = !DILocation(line: 1475, column: 9, scope: !3038)
!3089 = !DILocation(line: 1498, column: 19, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1498, column: 13)
!3091 = !DILocation(line: 1498, column: 13, scope: !3069)
!3092 = !DILocation(line: 1499, column: 13, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 1498, column: 28)
!3094 = !DILocation(line: 1500, column: 13, scope: !3093)
!3095 = !DILocation(line: 1501, column: 38, scope: !3093)
!3096 = !DILocation(line: 1501, column: 13, scope: !3093)
!3097 = !DILocation(line: 1502, column: 13, scope: !3093)
!3098 = !DILocation(line: 1508, column: 13, scope: !3038)
!3099 = !DILocation(line: 87, column: 39, scope: !648, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1509, column: 9, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1509, column: 9)
!3102 = !DILocation(line: 88, column: 27, scope: !648, inlinedAt: !3100)
!3103 = !DILocation(line: 88, column: 19, scope: !648, inlinedAt: !3100)
!3104 = !DILocation(line: 89, column: 5, scope: !648, inlinedAt: !3100)
!3105 = !DILocation(line: 91, column: 20, scope: !662, inlinedAt: !3100)
!3106 = !DILocation(line: 91, column: 13, scope: !662, inlinedAt: !3100)
!3107 = !DILocation(line: 93, column: 20, scope: !662, inlinedAt: !3100)
!3108 = !DILocation(line: 93, column: 34, scope: !662, inlinedAt: !3100)
!3109 = !DILocation(line: 93, column: 13, scope: !662, inlinedAt: !3100)
!3110 = !DILocation(line: 95, column: 20, scope: !662, inlinedAt: !3100)
!3111 = !DILocation(line: 95, column: 35, scope: !662, inlinedAt: !3100)
!3112 = !DILocation(line: 95, column: 13, scope: !662, inlinedAt: !3100)
!3113 = !DILocation(line: 97, column: 20, scope: !662, inlinedAt: !3100)
!3114 = !DILocation(line: 97, column: 35, scope: !662, inlinedAt: !3100)
!3115 = !DILocation(line: 97, column: 13, scope: !662, inlinedAt: !3100)
!3116 = !DILocation(line: 99, column: 20, scope: !662, inlinedAt: !3100)
!3117 = !DILocation(line: 99, column: 35, scope: !662, inlinedAt: !3100)
!3118 = !DILocation(line: 99, column: 13, scope: !662, inlinedAt: !3100)
!3119 = !DILocation(line: 101, column: 5, scope: !648, inlinedAt: !3100)
!3120 = !DILocation(line: 102, column: 1, scope: !648, inlinedAt: !3100)
!3121 = !DILocation(line: 1509, column: 9, scope: !3038)
!3122 = !DILocation(line: 0, scope: !662, inlinedAt: !3100)
!3123 = !DILocation(line: 0, scope: !3101)
!3124 = !DILocation(line: 1509, column: 23, scope: !3101)
!3125 = !DILocation(line: 1512, column: 9, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1509, column: 29)
!3127 = !DILocation(line: 1513, column: 9, scope: !3126)
!3128 = !DILocation(line: 1516, column: 30, scope: !3038)
!3129 = !DILocation(line: 1516, column: 5, scope: !3038)
!3130 = !DILocation(line: 1518, column: 10, scope: !3052)
!3131 = !DILocation(line: 1518, column: 9, scope: !3038)
!3132 = !DILocation(line: 1519, column: 15, scope: !3051)
!3133 = !DILocation(line: 1519, column: 31, scope: !3051)
!3134 = !DILocation(line: 1523, column: 18, scope: !3051)
!3135 = !DILocation(line: 1524, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1524, column: 13)
!3137 = !DILocation(line: 1524, column: 13, scope: !3051)
!3138 = !DILocation(line: 1525, column: 19, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1524, column: 21)
!3140 = !DILocation(line: 1526, column: 22, scope: !3139)
!3141 = !DILocation(line: 1527, column: 17, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1527, column: 17)
!3143 = !DILocation(line: 1527, column: 17, scope: !3139)
!3144 = !DILocation(line: 1529, column: 21, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1529, column: 13)
!3146 = !DILocation(line: 1527, column: 31, scope: !3142)
!3147 = !DILocation(line: 1527, column: 25, scope: !3142)
!3148 = !DILocation(line: 1529, column: 42, scope: !3145)
!3149 = !DILocation(line: 1529, column: 49, scope: !3145)
!3150 = !DILocation(line: 1529, column: 53, scope: !3145)
!3151 = !DILocation(line: 1529, column: 13, scope: !3051)
!3152 = !DILocation(line: 1530, column: 13, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1529, column: 76)
!3154 = !DILocation(line: 1536, column: 13, scope: !3153)
!3155 = !DILocation(line: 1537, column: 9, scope: !3153)
!3156 = !DILocation(line: 1538, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1537, column: 16)
!3158 = !DILocation(line: 1539, column: 54, scope: !3157)
!3159 = !DILocation(line: 1540, column: 44, scope: !3157)
!3160 = !DILocation(line: 1540, column: 42, scope: !3157)
!3161 = !DILocation(line: 1541, column: 13, scope: !3157)
!3162 = !DILocation(line: 2256, column: 16, scope: !3163, inlinedAt: !3165)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 2256, column: 9)
!3164 = distinct !DISubprogram(name: "replicationDiscardCachedMaster", scope: !3, file: !3, line: 2255, type: !306, isLocal: false, isDefinition: true, scopeLine: 2255, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3165 = distinct !DILocation(line: 1546, column: 9, scope: !3051)
!3166 = !DILocation(line: 2256, column: 30, scope: !3163, inlinedAt: !3165)
!3167 = !DILocation(line: 2256, column: 9, scope: !3164, inlinedAt: !3165)
!3168 = !DILocation(line: 2258, column: 5, scope: !3164, inlinedAt: !3165)
!3169 = !DILocation(line: 2259, column: 12, scope: !3164, inlinedAt: !3165)
!3170 = !DILocation(line: 2259, column: 27, scope: !3164, inlinedAt: !3165)
!3171 = !DILocation(line: 2259, column: 33, scope: !3164, inlinedAt: !3165)
!3172 = !DILocation(line: 2260, column: 5, scope: !3164, inlinedAt: !3165)
!3173 = !DILocation(line: 2261, column: 26, scope: !3164, inlinedAt: !3165)
!3174 = !DILocation(line: 2262, column: 1, scope: !3164, inlinedAt: !3165)
!3175 = !DILocation(line: 1547, column: 9, scope: !3051)
!3176 = !DILocation(line: 1551, column: 10, scope: !3056)
!3177 = !DILocation(line: 1551, column: 9, scope: !3038)
!3178 = !DILocation(line: 1553, column: 9, scope: !3055)
!3179 = !DILocation(line: 1561, column: 28, scope: !3055)
!3180 = !DILocation(line: 1561, column: 15, scope: !3055)
!3181 = !DILocation(line: 1562, column: 26, scope: !3055)
!3182 = !DILocation(line: 1562, column: 15, scope: !3055)
!3183 = !DILocation(line: 1563, column: 9, scope: !3055)
!3184 = !DILocation(line: 1563, column: 15, scope: !3055)
!3185 = !DILocation(line: 1563, column: 22, scope: !3055)
!3186 = !DILocation(line: 1563, column: 30, scope: !3055)
!3187 = !DILocation(line: 1563, column: 40, scope: !3055)
!3188 = !DILocation(line: 1563, column: 48, scope: !3055)
!3189 = !DILocation(line: 1563, column: 58, scope: !3055)
!3190 = !DILocation(line: 1563, column: 70, scope: !3055)
!3191 = distinct !{!3191, !3183, !3190}
!3192 = !DILocation(line: 1564, column: 16, scope: !3060)
!3193 = !DILocation(line: 1564, column: 23, scope: !3060)
!3194 = !DILocation(line: 1564, column: 13, scope: !3055)
!3195 = !DILocation(line: 1565, column: 13, scope: !3059)
!3196 = !DILocation(line: 1565, column: 18, scope: !3059)
!3197 = !DILocation(line: 1566, column: 13, scope: !3059)
!3198 = !DILocation(line: 1567, column: 13, scope: !3059)
!3199 = !DILocation(line: 1567, column: 37, scope: !3059)
!3200 = !DILocation(line: 1569, column: 35, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1569, column: 17)
!3202 = !DILocation(line: 1569, column: 28, scope: !3201)
!3203 = !DILocation(line: 1569, column: 17, scope: !3201)
!3204 = !DILocation(line: 1569, column: 17, scope: !3059)
!3205 = !DILocation(line: 1571, column: 17, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1569, column: 59)
!3207 = !DILocation(line: 1574, column: 46, scope: !3206)
!3208 = !DILocation(line: 1574, column: 39, scope: !3206)
!3209 = !DILocation(line: 1574, column: 17, scope: !3206)
!3210 = !DILocation(line: 1576, column: 54, scope: !3206)
!3211 = !DILocation(line: 1576, column: 72, scope: !3206)
!3212 = !DILocation(line: 1576, column: 45, scope: !3206)
!3213 = !DILocation(line: 1580, column: 17, scope: !3206)
!3214 = !DILocation(line: 1581, column: 31, scope: !3206)
!3215 = !DILocation(line: 1581, column: 24, scope: !3206)
!3216 = !DILocation(line: 1581, column: 17, scope: !3206)
!3217 = !DILocation(line: 1584, column: 17, scope: !3206)
!3218 = !DILocation(line: 1585, column: 13, scope: !3206)
!3219 = !DILocation(line: 1586, column: 9, scope: !3060)
!3220 = !DILocation(line: 1586, column: 9, scope: !3059)
!3221 = !DILocation(line: 1589, column: 9, scope: !3055)
!3222 = !DILocation(line: 1590, column: 9, scope: !3055)
!3223 = !DILocation(line: 1595, column: 20, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1595, column: 13)
!3225 = !DILocation(line: 1595, column: 33, scope: !3224)
!3226 = !DILocation(line: 1595, column: 13, scope: !3055)
!3227 = !DILocation(line: 79, column: 5, scope: !509, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1595, column: 42, scope: !3224)
!3229 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !3228)
!3230 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !3228)
!3231 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !3228)
!3232 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !3228)
!3233 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !3228)
!3234 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !3228)
!3235 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !3228)
!3236 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !3228)
!3237 = !DILocation(line: 1595, column: 42, scope: !3224)
!3238 = !DILocation(line: 1606, column: 10, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1606, column: 9)
!3240 = !DILocation(line: 1606, column: 44, scope: !3239)
!3241 = !DILocation(line: 1607, column: 10, scope: !3239)
!3242 = !DILocation(line: 1606, column: 9, scope: !3038)
!3243 = !DILocation(line: 1609, column: 9, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1608, column: 5)
!3245 = !DILocation(line: 1612, column: 9, scope: !3244)
!3246 = !DILocation(line: 1613, column: 9, scope: !3244)
!3247 = !DILocation(line: 1616, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1616, column: 9)
!3249 = !DILocation(line: 1616, column: 9, scope: !3038)
!3250 = !DILocation(line: 1618, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1616, column: 34)
!3252 = !DILocation(line: 1620, column: 5, scope: !3251)
!3253 = !DILocation(line: 1621, column: 9, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1620, column: 12)
!3255 = !DILocation(line: 1625, column: 5, scope: !3038)
!3256 = !DILocation(line: 2256, column: 16, scope: !3163, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1626, column: 5, scope: !3038)
!3258 = !DILocation(line: 2256, column: 30, scope: !3163, inlinedAt: !3257)
!3259 = !DILocation(line: 2256, column: 9, scope: !3164, inlinedAt: !3257)
!3260 = !DILocation(line: 2258, column: 5, scope: !3164, inlinedAt: !3257)
!3261 = !DILocation(line: 2259, column: 12, scope: !3164, inlinedAt: !3257)
!3262 = !DILocation(line: 2259, column: 27, scope: !3164, inlinedAt: !3257)
!3263 = !DILocation(line: 2259, column: 33, scope: !3164, inlinedAt: !3257)
!3264 = !DILocation(line: 2260, column: 5, scope: !3164, inlinedAt: !3257)
!3265 = !DILocation(line: 2261, column: 26, scope: !3164, inlinedAt: !3257)
!3266 = !DILocation(line: 2262, column: 1, scope: !3164, inlinedAt: !3257)
!3267 = !DILocation(line: 1627, column: 5, scope: !3038)
!3268 = !DILocation(line: 0, scope: !3069)
!3269 = !DILocation(line: 1628, column: 1, scope: !3038)
!3270 = !DILocation(line: 2256, column: 16, scope: !3163)
!3271 = !DILocation(line: 2256, column: 30, scope: !3163)
!3272 = !DILocation(line: 2256, column: 9, scope: !3164)
!3273 = !DILocation(line: 2258, column: 5, scope: !3164)
!3274 = !DILocation(line: 2259, column: 12, scope: !3164)
!3275 = !DILocation(line: 2259, column: 27, scope: !3164)
!3276 = !DILocation(line: 2259, column: 33, scope: !3164)
!3277 = !DILocation(line: 2260, column: 5, scope: !3164)
!3278 = !DILocation(line: 2261, column: 26, scope: !3164)
!3279 = !DILocation(line: 2262, column: 1, scope: !3164)
!3280 = distinct !DISubprogram(name: "replicationResurrectCachedMaster", scope: !3, file: !3, line: 2270, type: !3281, isLocal: false, isDefinition: true, scopeLine: 2270, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !20}
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "newfd", arg: 1, scope: !3280, file: !3, line: 2270, type: !20)
!3285 = !DILocation(line: 2270, column: 43, scope: !3280)
!3286 = !DILocation(line: 2271, column: 28, scope: !3280)
!3287 = !DILocation(line: 2271, column: 19, scope: !3280)
!3288 = !DILocation(line: 2272, column: 26, scope: !3280)
!3289 = !DILocation(line: 2273, column: 12, scope: !3280)
!3290 = !DILocation(line: 2273, column: 20, scope: !3280)
!3291 = !DILocation(line: 2273, column: 23, scope: !3280)
!3292 = !DILocation(line: 2274, column: 20, scope: !3280)
!3293 = !DILocation(line: 2274, column: 26, scope: !3280)
!3294 = !DILocation(line: 2275, column: 20, scope: !3280)
!3295 = !DILocation(line: 2275, column: 34, scope: !3280)
!3296 = !DILocation(line: 2276, column: 45, scope: !3280)
!3297 = !DILocation(line: 2276, column: 20, scope: !3280)
!3298 = !DILocation(line: 2276, column: 36, scope: !3280)
!3299 = !{!482, !483, i64 144}
!3300 = !DILocation(line: 2277, column: 23, scope: !3280)
!3301 = !DILocation(line: 2278, column: 28, scope: !3280)
!3302 = !DILocation(line: 2281, column: 5, scope: !3280)
!3303 = !DILocation(line: 2282, column: 34, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 2282, column: 9)
!3305 = !DILocation(line: 2283, column: 55, scope: !3304)
!3306 = !DILocation(line: 2282, column: 9, scope: !3304)
!3307 = !DILocation(line: 2282, column: 9, scope: !3280)
!3308 = !DILocation(line: 2284, column: 123, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 2283, column: 64)
!3310 = !DILocation(line: 2284, column: 114, scope: !3309)
!3311 = !DILocation(line: 2284, column: 9, scope: !3309)
!3312 = !DILocation(line: 2285, column: 32, scope: !3309)
!3313 = !DILocation(line: 2285, column: 9, scope: !3309)
!3314 = !DILocation(line: 2286, column: 5, scope: !3309)
!3315 = !DILocation(line: 2290, column: 40, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 2290, column: 9)
!3317 = !DILocation(line: 2290, column: 9, scope: !3316)
!3318 = !DILocation(line: 2290, column: 9, scope: !3280)
!3319 = !DILocation(line: 2291, column: 38, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 2291, column: 13)
!3321 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 2290, column: 49)
!3322 = !DILocation(line: 2292, column: 53, scope: !3320)
!3323 = !DILocation(line: 2291, column: 13, scope: !3320)
!3324 = !DILocation(line: 2291, column: 13, scope: !3321)
!3325 = !DILocation(line: 2293, column: 127, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 2292, column: 62)
!3327 = !DILocation(line: 2293, column: 118, scope: !3326)
!3328 = !DILocation(line: 2293, column: 13, scope: !3326)
!3329 = !DILocation(line: 2294, column: 36, scope: !3326)
!3330 = !DILocation(line: 2294, column: 13, scope: !3326)
!3331 = !DILocation(line: 2295, column: 9, scope: !3326)
!3332 = !DILocation(line: 2297, column: 1, scope: !3280)
!3333 = distinct !DISubprogram(name: "syncWithMaster", scope: !3, file: !3, line: 1632, type: !311, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3350}
!3335 = !DILocalVariable(name: "el", arg: 1, scope: !3333, file: !3, line: 1632, type: !313)
!3336 = !DILocalVariable(name: "fd", arg: 2, scope: !3333, file: !3, line: 1632, type: !20)
!3337 = !DILocalVariable(name: "privdata", arg: 3, scope: !3333, file: !3, line: 1632, type: !47)
!3338 = !DILocalVariable(name: "mask", arg: 4, scope: !3333, file: !3, line: 1632, type: !20)
!3339 = !DILocalVariable(name: "tmpfile", scope: !3333, file: !3, line: 1633, type: !2943)
!3340 = !DILocalVariable(name: "err", scope: !3333, file: !3, line: 1633, type: !6)
!3341 = !DILocalVariable(name: "dfd", scope: !3333, file: !3, line: 1634, type: !20)
!3342 = !DILocalVariable(name: "maxtries", scope: !3333, file: !3, line: 1634, type: !20)
!3343 = !DILocalVariable(name: "sockerr", scope: !3333, file: !3, line: 1635, type: !20)
!3344 = !DILocalVariable(name: "psync_result", scope: !3333, file: !3, line: 1635, type: !20)
!3345 = !DILocalVariable(name: "errlen", scope: !3333, file: !3, line: 1636, type: !3346)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !3347, line: 113, baseType: !3348)
!3347 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !3349, line: 129, baseType: !290)
!3349 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!3350 = !DILocalVariable(name: "port", scope: !3351, file: !3, line: 1723, type: !139)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1722, column: 52)
!3352 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1722, column: 9)
!3353 = !DILocation(line: 1632, column: 34, scope: !3333)
!3354 = !DILocation(line: 1632, column: 42, scope: !3333)
!3355 = !DILocation(line: 1632, column: 52, scope: !3333)
!3356 = !DILocation(line: 1632, column: 66, scope: !3333)
!3357 = !DILocation(line: 1633, column: 5, scope: !3333)
!3358 = !DILocation(line: 1633, column: 10, scope: !3333)
!3359 = !DILocation(line: 1633, column: 25, scope: !3333)
!3360 = !DILocation(line: 1634, column: 9, scope: !3333)
!3361 = !DILocation(line: 1634, column: 19, scope: !3333)
!3362 = !DILocation(line: 1635, column: 5, scope: !3333)
!3363 = !DILocation(line: 1635, column: 9, scope: !3333)
!3364 = !DILocation(line: 1636, column: 5, scope: !3333)
!3365 = !DILocation(line: 1636, column: 15, scope: !3333)
!3366 = !DILocation(line: 1643, column: 16, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1643, column: 9)
!3368 = !DILocation(line: 1643, column: 27, scope: !3367)
!3369 = !DILocation(line: 1643, column: 9, scope: !3333)
!3370 = !DILocation(line: 1644, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1643, column: 47)
!3372 = !DILocation(line: 1645, column: 9, scope: !3371)
!3373 = !DILocation(line: 1650, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1650, column: 9)
!3375 = !DILocation(line: 1650, column: 65, scope: !3374)
!3376 = !DILocation(line: 1650, column: 9, scope: !3333)
!3377 = !DILocation(line: 1651, column: 19, scope: !3374)
!3378 = !DILocation(line: 1651, column: 17, scope: !3374)
!3379 = !DILocation(line: 1651, column: 9, scope: !3374)
!3380 = !DILocation(line: 1652, column: 9, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1652, column: 9)
!3382 = !DILocation(line: 1652, column: 9, scope: !3333)
!3383 = !DILocation(line: 1654, column: 13, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1652, column: 18)
!3385 = !DILocation(line: 1653, column: 9, scope: !3384)
!3386 = !DILocation(line: 1655, column: 9, scope: !3384)
!3387 = !DILocation(line: 1659, column: 16, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1659, column: 9)
!3389 = !DILocation(line: 1659, column: 27, scope: !3388)
!3390 = !DILocation(line: 1659, column: 9, scope: !3333)
!3391 = !DILocation(line: 1660, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1659, column: 53)
!3393 = !DILocation(line: 1663, column: 34, scope: !3392)
!3394 = !DILocation(line: 1663, column: 9, scope: !3392)
!3395 = !DILocation(line: 1664, column: 27, scope: !3392)
!3396 = !DILocation(line: 1667, column: 15, scope: !3392)
!3397 = !DILocation(line: 1668, column: 13, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1668, column: 13)
!3399 = !DILocation(line: 1668, column: 13, scope: !3392)
!3400 = !DILocation(line: 1673, column: 27, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1673, column: 9)
!3402 = !DILocation(line: 1673, column: 9, scope: !3333)
!3403 = !DILocation(line: 1674, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1673, column: 55)
!3405 = !DILocation(line: 1681, column: 13, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1681, column: 13)
!3407 = !DILocation(line: 1681, column: 20, scope: !3406)
!3408 = !DILocation(line: 1681, column: 27, scope: !3406)
!3409 = !DILocation(line: 1682, column: 13, scope: !3406)
!3410 = !DILocation(line: 1682, column: 38, scope: !3406)
!3411 = !DILocation(line: 1682, column: 43, scope: !3406)
!3412 = !DILocation(line: 1683, column: 13, scope: !3406)
!3413 = !DILocation(line: 1683, column: 60, scope: !3406)
!3414 = !DILocation(line: 1681, column: 13, scope: !3404)
!3415 = !DILocation(line: 1685, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1684, column: 9)
!3417 = !DILocation(line: 1686, column: 13, scope: !3416)
!3418 = !DILocation(line: 1687, column: 13, scope: !3416)
!3419 = !DILocation(line: 1689, column: 13, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1688, column: 16)
!3421 = !DILocation(line: 1692, column: 9, scope: !3404)
!3422 = !DILocation(line: 1693, column: 27, scope: !3404)
!3423 = !DILocation(line: 1694, column: 5, scope: !3404)
!3424 = !DILocation(line: 1697, column: 9, scope: !3333)
!3425 = !DILocation(line: 1697, column: 27, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1697, column: 9)
!3427 = !DILocation(line: 1698, column: 20, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1698, column: 13)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1697, column: 52)
!3430 = !{!512, !485, i64 2456}
!3431 = !DILocation(line: 1698, column: 13, scope: !3428)
!3432 = !DILocation(line: 1698, column: 13, scope: !3429)
!3433 = !DILocation(line: 1699, column: 19, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1698, column: 32)
!3435 = !DILocation(line: 1700, column: 17, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 1700, column: 17)
!3437 = !DILocation(line: 1700, column: 17, scope: !3434)
!3438 = !DILocation(line: 1701, column: 31, scope: !3434)
!3439 = !DILocation(line: 1702, column: 13, scope: !3434)
!3440 = !DILocation(line: 1704, column: 31, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1703, column: 16)
!3442 = !DILocation(line: 1706, column: 5, scope: !3429)
!3443 = !DILocation(line: 1709, column: 9, scope: !3333)
!3444 = !DILocation(line: 1709, column: 27, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1709, column: 9)
!3446 = !DILocation(line: 1710, column: 15, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1709, column: 55)
!3448 = !DILocation(line: 1711, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1711, column: 13)
!3450 = !DILocation(line: 1711, column: 20, scope: !3449)
!3451 = !DILocation(line: 1711, column: 13, scope: !3447)
!3452 = !DILocation(line: 1712, column: 13, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1711, column: 28)
!3454 = !DILocation(line: 1713, column: 13, scope: !3453)
!3455 = !DILocation(line: 1714, column: 13, scope: !3453)
!3456 = !DILocation(line: 1716, column: 9, scope: !3447)
!3457 = !DILocation(line: 1717, column: 27, scope: !3447)
!3458 = !DILocation(line: 1718, column: 5, scope: !3447)
!3459 = !DILocation(line: 0, scope: !3447)
!3460 = !DILocation(line: 1722, column: 9, scope: !3333)
!3461 = !DILocation(line: 1722, column: 27, scope: !3352)
!3462 = !DILocation(line: 1723, column: 43, scope: !3351)
!3463 = !{!512, !484, i64 2584}
!3464 = !DILocation(line: 1723, column: 36, scope: !3351)
!3465 = !DILocation(line: 1724, column: 49, scope: !3351)
!3466 = !DILocation(line: 1723, column: 20, scope: !3351)
!3467 = !DILocation(line: 1723, column: 13, scope: !3351)
!3468 = !DILocation(line: 1725, column: 15, scope: !3351)
!3469 = !DILocation(line: 1727, column: 9, scope: !3351)
!3470 = !DILocation(line: 1728, column: 13, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 1728, column: 13)
!3472 = !DILocation(line: 1728, column: 13, scope: !3351)
!3473 = !DILocation(line: 1728, column: 18, scope: !3471)
!3474 = !DILocation(line: 1729, column: 9, scope: !3351)
!3475 = !DILocation(line: 1730, column: 27, scope: !3351)
!3476 = !DILocation(line: 1731, column: 9, scope: !3351)
!3477 = !DILocation(line: 1735, column: 27, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1735, column: 9)
!3479 = !DILocation(line: 1735, column: 9, scope: !3333)
!3480 = !DILocation(line: 1736, column: 15, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1735, column: 55)
!3482 = !DILocation(line: 1739, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1739, column: 13)
!3484 = !DILocation(line: 1739, column: 20, scope: !3483)
!3485 = !DILocation(line: 1739, column: 13, scope: !3481)
!3486 = !DILocation(line: 1740, column: 13, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1739, column: 28)
!3488 = !DILocation(line: 1742, column: 9, scope: !3487)
!3489 = !DILocation(line: 1743, column: 9, scope: !3481)
!3490 = !DILocation(line: 1744, column: 27, scope: !3481)
!3491 = !DILocation(line: 1745, column: 5, scope: !3481)
!3492 = !DILocation(line: 1748, column: 16, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1748, column: 9)
!3494 = !DILocation(line: 1748, column: 27, scope: !3493)
!3495 = !DILocation(line: 1749, column: 16, scope: !3493)
!3496 = !DILocation(line: 1749, column: 34, scope: !3493)
!3497 = !DILocation(line: 1748, column: 49, scope: !3493)
!3498 = !DILocation(line: 1751, column: 31, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1750, column: 5)
!3500 = !DILocation(line: 1752, column: 5, scope: !3499)
!3501 = !DILocation(line: 1756, column: 9, scope: !3333)
!3502 = !DILocation(line: 1784, column: 9, scope: !3333)
!3503 = !DILocation(line: 1757, column: 15, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1756, column: 50)
!3505 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1756, column: 9)
!3506 = !DILocation(line: 1759, column: 13, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1759, column: 13)
!3508 = !DILocation(line: 1759, column: 13, scope: !3504)
!3509 = !DILocation(line: 1760, column: 9, scope: !3504)
!3510 = !DILocation(line: 1761, column: 27, scope: !3504)
!3511 = !DILocation(line: 1762, column: 9, scope: !3504)
!3512 = !DILocation(line: 1766, column: 27, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1766, column: 9)
!3514 = !DILocation(line: 1766, column: 9, scope: !3333)
!3515 = !DILocation(line: 1767, column: 15, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 1766, column: 53)
!3517 = !DILocation(line: 1770, column: 13, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1770, column: 13)
!3519 = !DILocation(line: 1770, column: 20, scope: !3518)
!3520 = !DILocation(line: 1770, column: 13, scope: !3516)
!3521 = !DILocation(line: 1771, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1770, column: 28)
!3523 = !DILocation(line: 1773, column: 9, scope: !3522)
!3524 = !DILocation(line: 1774, column: 9, scope: !3516)
!3525 = !DILocation(line: 1775, column: 27, scope: !3516)
!3526 = !DILocation(line: 1784, column: 27, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1784, column: 9)
!3528 = !DILocation(line: 0, scope: !3516)
!3529 = !DILocation(line: 1785, column: 15, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 1784, column: 52)
!3531 = !DILocation(line: 1787, column: 13, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 1787, column: 13)
!3533 = !DILocation(line: 1787, column: 13, scope: !3530)
!3534 = !DILocation(line: 1788, column: 9, scope: !3530)
!3535 = !DILocation(line: 1789, column: 27, scope: !3530)
!3536 = !DILocation(line: 1790, column: 9, scope: !3530)
!3537 = !DILocation(line: 1794, column: 27, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1794, column: 9)
!3539 = !DILocation(line: 1794, column: 9, scope: !3333)
!3540 = !DILocation(line: 1795, column: 15, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 1794, column: 55)
!3542 = !DILocation(line: 1798, column: 13, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1798, column: 13)
!3544 = !DILocation(line: 1798, column: 20, scope: !3543)
!3545 = !DILocation(line: 1798, column: 13, scope: !3541)
!3546 = !DILocation(line: 1799, column: 13, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1798, column: 28)
!3548 = !DILocation(line: 1801, column: 9, scope: !3547)
!3549 = !DILocation(line: 1802, column: 9, scope: !3541)
!3550 = !DILocation(line: 1803, column: 27, scope: !3541)
!3551 = !DILocation(line: 1804, column: 5, scope: !3541)
!3552 = !DILocation(line: 1811, column: 9, scope: !3333)
!3553 = !DILocation(line: 1811, column: 27, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1811, column: 9)
!3555 = !DILocation(line: 1812, column: 13, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1812, column: 13)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1811, column: 53)
!3558 = !DILocation(line: 1812, column: 52, scope: !3556)
!3559 = !DILocation(line: 1812, column: 13, scope: !3557)
!3560 = !DILocation(line: 1813, column: 19, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 1812, column: 74)
!3562 = !DILocation(line: 1814, column: 13, scope: !3561)
!3563 = !DILocation(line: 1816, column: 27, scope: !3557)
!3564 = !DILocation(line: 1817, column: 9, scope: !3557)
!3565 = !DILocation(line: 1821, column: 27, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1821, column: 9)
!3567 = !DILocation(line: 1821, column: 9, scope: !3333)
!3568 = !DILocation(line: 1822, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1821, column: 56)
!3570 = !DILocation(line: 1825, column: 9, scope: !3569)
!3571 = !DILocation(line: 1828, column: 20, scope: !3333)
!3572 = !DILocation(line: 1635, column: 22, scope: !3333)
!3573 = !DILocation(line: 1829, column: 22, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1829, column: 9)
!3575 = !DILocation(line: 1829, column: 9, scope: !3333)
!3576 = !DILocation(line: 1835, column: 22, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1835, column: 9)
!3578 = !DILocation(line: 1835, column: 9, scope: !3333)
!3579 = !DILocation(line: 1840, column: 22, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1840, column: 9)
!3581 = !DILocation(line: 1840, column: 9, scope: !3333)
!3582 = !DILocation(line: 1841, column: 9, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 1840, column: 41)
!3584 = !DILocation(line: 1842, column: 9, scope: !3583)
!3585 = !DILocation(line: 1849, column: 5, scope: !3333)
!3586 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1850, column: 5, scope: !3333)
!3588 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !3587)
!3589 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !3587)
!3590 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !3587)
!3591 = !DILocation(line: 121, column: 1, scope: !556, inlinedAt: !3587)
!3592 = !DILocation(line: 1855, column: 22, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1855, column: 9)
!3594 = !DILocation(line: 1855, column: 9, scope: !3333)
!3595 = !DILocation(line: 1856, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 1855, column: 46)
!3597 = !DILocation(line: 1857, column: 46, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1857, column: 13)
!3599 = !DILocation(line: 1857, column: 65, scope: !3598)
!3600 = !DILocation(line: 1857, column: 39, scope: !3598)
!3601 = !DILocation(line: 1857, column: 13, scope: !3598)
!3602 = !DILocation(line: 1857, column: 72, scope: !3598)
!3603 = !DILocation(line: 1857, column: 13, scope: !3596)
!3604 = !DILocation(line: 1859, column: 26, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1857, column: 79)
!3606 = !DILocation(line: 1859, column: 17, scope: !3605)
!3607 = !DILocation(line: 1858, column: 13, scope: !3605)
!3608 = !DILocation(line: 1860, column: 13, scope: !3605)
!3609 = !DILocation(line: 1865, column: 5, scope: !3333)
!3610 = !DILocation(line: 1867, column: 43, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1865, column: 23)
!3612 = !DILocation(line: 1867, column: 31, scope: !3611)
!3613 = !DILocation(line: 1867, column: 62, scope: !3611)
!3614 = !DILocation(line: 1867, column: 52, scope: !3611)
!3615 = !DILocation(line: 1866, column: 9, scope: !3611)
!3616 = !DILocation(line: 1868, column: 15, scope: !3611)
!3617 = !DILocation(line: 1869, column: 17, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 1869, column: 13)
!3619 = !DILocation(line: 1869, column: 13, scope: !3611)
!3620 = !DILocation(line: 1870, column: 9, scope: !3611)
!3621 = !DILocation(line: 1872, column: 9, scope: !3333)
!3622 = !DILocation(line: 1878, column: 34, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1878, column: 9)
!3624 = !DILocation(line: 1878, column: 9, scope: !3623)
!3625 = !DILocation(line: 1879, column: 13, scope: !3623)
!3626 = !DILocation(line: 1878, column: 9, scope: !3333)
!3627 = !DILocation(line: 1883, column: 22, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1880, column: 5)
!3629 = !DILocation(line: 1883, column: 13, scope: !3628)
!3630 = !DILocation(line: 1881, column: 9, scope: !3628)
!3631 = !DILocation(line: 1884, column: 9, scope: !3628)
!3632 = !DILocation(line: 1887, column: 23, scope: !3333)
!3633 = !DILocation(line: 1888, column: 31, scope: !3333)
!3634 = !DILocation(line: 1890, column: 41, scope: !3333)
!3635 = !DILocation(line: 1891, column: 29, scope: !3333)
!3636 = !DILocation(line: 1892, column: 42, scope: !3333)
!3637 = !DILocation(line: 1892, column: 33, scope: !3333)
!3638 = !DILocation(line: 1893, column: 36, scope: !3333)
!3639 = !DILocation(line: 1893, column: 34, scope: !3333)
!3640 = !DILocation(line: 1894, column: 5, scope: !3333)
!3641 = !DILocation(line: 0, scope: !3384)
!3642 = !DILocation(line: 1897, column: 30, scope: !3333)
!3643 = !DILocation(line: 0, scope: !3611)
!3644 = !DILocation(line: 1897, column: 5, scope: !3333)
!3645 = !DILocation(line: 1898, column: 13, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1898, column: 9)
!3647 = !DILocation(line: 1898, column: 9, scope: !3333)
!3648 = !DILocation(line: 1898, column: 20, scope: !3646)
!3649 = !DILocation(line: 1899, column: 5, scope: !3333)
!3650 = !DILocation(line: 1900, column: 28, scope: !3333)
!3651 = !DILocation(line: 1901, column: 23, scope: !3333)
!3652 = !DILocation(line: 1902, column: 5, scope: !3333)
!3653 = !DILocation(line: 0, scope: !3561)
!3654 = !DILocation(line: 1905, column: 5, scope: !3333)
!3655 = !DILocation(line: 1906, column: 5, scope: !3333)
!3656 = !DILocation(line: 1907, column: 5, scope: !3333)
!3657 = !DILocation(line: 1908, column: 1, scope: !3333)
!3658 = !DILocation(line: 1873, column: 113, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 1872, column: 20)
!3660 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1872, column: 9)
!3661 = !DILocation(line: 1873, column: 104, scope: !3659)
!3662 = !DILocation(line: 1873, column: 9, scope: !3659)
!3663 = !DILocation(line: 1874, column: 9, scope: !3659)
!3664 = distinct !DISubprogram(name: "connectWithMaster", scope: !3, file: !3, line: 1910, type: !2406, isLocal: false, isDefinition: true, scopeLine: 1910, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3665)
!3665 = !{!3666}
!3666 = !DILocalVariable(name: "fd", scope: !3664, file: !3, line: 1911, type: !20)
!3667 = !DILocation(line: 1914, column: 16, scope: !3664)
!3668 = !DILocation(line: 1914, column: 34, scope: !3664)
!3669 = !{!512, !484, i64 2472}
!3670 = !DILocation(line: 1914, column: 45, scope: !3664)
!3671 = !{!512, !484, i64 352}
!3672 = !DILocation(line: 1913, column: 10, scope: !3664)
!3673 = !DILocation(line: 1911, column: 9, scope: !3664)
!3674 = !DILocation(line: 1915, column: 12, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1915, column: 9)
!3676 = !DILocation(line: 1915, column: 9, scope: !3664)
!3677 = !DILocation(line: 1917, column: 22, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1915, column: 19)
!3679 = !DILocation(line: 1917, column: 13, scope: !3678)
!3680 = !DILocation(line: 1916, column: 9, scope: !3678)
!3681 = !DILocation(line: 1918, column: 9, scope: !3678)
!3682 = !DILocation(line: 1921, column: 34, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1921, column: 9)
!3684 = !DILocation(line: 1921, column: 9, scope: !3683)
!3685 = !DILocation(line: 1921, column: 85, scope: !3683)
!3686 = !DILocation(line: 1921, column: 9, scope: !3664)
!3687 = !DILocation(line: 1924, column: 9, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1923, column: 5)
!3689 = !DILocation(line: 1925, column: 9, scope: !3688)
!3690 = !DILocation(line: 1926, column: 9, scope: !3688)
!3691 = !DILocation(line: 1929, column: 42, scope: !3664)
!3692 = !DILocation(line: 1929, column: 33, scope: !3664)
!3693 = !DILocation(line: 1930, column: 28, scope: !3664)
!3694 = !DILocation(line: 1931, column: 23, scope: !3664)
!3695 = !DILocation(line: 1932, column: 5, scope: !3664)
!3696 = !DILocation(line: 0, scope: !3664)
!3697 = !DILocation(line: 0, scope: !3678)
!3698 = !DILocation(line: 1933, column: 1, scope: !3664)
!3699 = !DILocation(line: 1940, column: 21, scope: !2607)
!3700 = !DILocation(line: 1940, column: 9, scope: !2607)
!3701 = !DILocation(line: 1942, column: 30, scope: !2607)
!3702 = !DILocation(line: 1942, column: 5, scope: !2607)
!3703 = !DILocation(line: 1943, column: 5, scope: !2607)
!3704 = !DILocation(line: 1944, column: 28, scope: !2607)
!3705 = !DILocation(line: 1945, column: 1, scope: !2607)
!3706 = distinct !DISubprogram(name: "replicationAbortSyncTransfer", scope: !3, file: !3, line: 1950, type: !306, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3707 = !DILocation(line: 1951, column: 5, scope: !3706)
!3708 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 1952, column: 5, scope: !3706)
!3710 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !3709)
!3711 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !3709)
!3712 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !3709)
!3713 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !3709)
!3714 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !3709)
!3715 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !3709)
!3716 = !DILocation(line: 1953, column: 18, scope: !3706)
!3717 = !DILocation(line: 1953, column: 5, scope: !3706)
!3718 = !DILocation(line: 1954, column: 19, scope: !3706)
!3719 = !DILocation(line: 1954, column: 5, scope: !3706)
!3720 = !DILocation(line: 1955, column: 18, scope: !3706)
!3721 = !DILocation(line: 1955, column: 5, scope: !3706)
!3722 = !DILocation(line: 1956, column: 1, scope: !3706)
!3723 = distinct !DISubprogram(name: "replicationSetMaster", scope: !3, file: !3, line: 1982, type: !3724, isLocal: false, isDefinition: true, scopeLine: 1982, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !6, !20}
!3726 = !{!3727, !3728, !3729}
!3727 = !DILocalVariable(name: "ip", arg: 1, scope: !3723, file: !3, line: 1982, type: !6)
!3728 = !DILocalVariable(name: "port", arg: 2, scope: !3723, file: !3, line: 1982, type: !20)
!3729 = !DILocalVariable(name: "was_master", scope: !3723, file: !3, line: 1983, type: !20)
!3730 = !DILocation(line: 1982, column: 33, scope: !3723)
!3731 = !DILocation(line: 1982, column: 41, scope: !3723)
!3732 = !DILocation(line: 1983, column: 29, scope: !3723)
!3733 = !DILocation(line: 1983, column: 40, scope: !3723)
!3734 = !DILocation(line: 1985, column: 5, scope: !3723)
!3735 = !DILocation(line: 1986, column: 25, scope: !3723)
!3736 = !DILocation(line: 1986, column: 23, scope: !3723)
!3737 = !DILocation(line: 1987, column: 23, scope: !3723)
!3738 = !DILocation(line: 1988, column: 16, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 1988, column: 9)
!3740 = !DILocation(line: 1988, column: 9, scope: !3739)
!3741 = !DILocation(line: 1988, column: 9, scope: !3723)
!3742 = !DILocation(line: 1989, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1988, column: 24)
!3744 = !DILocation(line: 1990, column: 5, scope: !3743)
!3745 = !DILocation(line: 1991, column: 5, scope: !3723)
!3746 = !DILocation(line: 1995, column: 5, scope: !3723)
!3747 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1996, column: 5, scope: !3723)
!3749 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !3748)
!3750 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !3748)
!3751 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !3748)
!3752 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !3748)
!3753 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !3748)
!3754 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !3748)
!3755 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !3748)
!3757 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !3756)
!3758 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !3748)
!3759 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !3748)
!3761 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !3760)
!3762 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !3760)
!3763 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !3760)
!3764 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !3760)
!3765 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !3760)
!3766 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !3760)
!3767 = !DILocation(line: 0, scope: !3723)
!3768 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !3748)
!3769 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !3748)
!3770 = !DILocation(line: 1999, column: 9, scope: !3723)
!3771 = !DILocation(line: 1999, column: 21, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 1999, column: 9)
!3773 = !DILocation(line: 2000, column: 23, scope: !3723)
!3774 = !DILocation(line: 2001, column: 1, scope: !3723)
!3775 = distinct !DISubprogram(name: "replicationCacheMasterUsingMyself", scope: !3, file: !3, line: 2237, type: !306, isLocal: false, isDefinition: true, scopeLine: 2237, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3776 = !DILocation(line: 2240, column: 43, scope: !3775)
!3777 = !DILocation(line: 2240, column: 34, scope: !3775)
!3778 = !DILocation(line: 1103, column: 40, scope: !2442, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 2241, column: 5, scope: !3775)
!3780 = !DILocation(line: 1103, column: 48, scope: !2442, inlinedAt: !3779)
!3781 = !DILocation(line: 1104, column: 21, scope: !2442, inlinedAt: !3779)
!3782 = !DILocation(line: 1104, column: 19, scope: !2442, inlinedAt: !3779)
!3783 = !DILocation(line: 1105, column: 20, scope: !2442, inlinedAt: !3779)
!3784 = !DILocation(line: 1105, column: 26, scope: !2442, inlinedAt: !3779)
!3785 = !DILocation(line: 1106, column: 20, scope: !2442, inlinedAt: !3779)
!3786 = !DILocation(line: 1106, column: 34, scope: !2442, inlinedAt: !3779)
!3787 = !DILocation(line: 1107, column: 37, scope: !2442, inlinedAt: !3779)
!3788 = !DILocation(line: 1107, column: 20, scope: !2442, inlinedAt: !3779)
!3789 = !DILocation(line: 1107, column: 28, scope: !2442, inlinedAt: !3779)
!3790 = !DILocation(line: 1108, column: 20, scope: !2442, inlinedAt: !3779)
!3791 = !DILocation(line: 1108, column: 33, scope: !2442, inlinedAt: !3779)
!3792 = !DILocation(line: 1109, column: 12, scope: !2442, inlinedAt: !3779)
!3793 = !DILocation(line: 1109, column: 5, scope: !2442, inlinedAt: !3779)
!3794 = !DILocation(line: 1113, column: 16, scope: !2465, inlinedAt: !3779)
!3795 = !DILocation(line: 1113, column: 24, scope: !2465, inlinedAt: !3779)
!3796 = !DILocation(line: 1113, column: 32, scope: !2465, inlinedAt: !3779)
!3797 = !DILocation(line: 1113, column: 9, scope: !2442, inlinedAt: !3779)
!3798 = !DILocation(line: 1114, column: 24, scope: !2465, inlinedAt: !3779)
!3799 = !DILocation(line: 1114, column: 30, scope: !2465, inlinedAt: !3779)
!3800 = !DILocation(line: 1114, column: 9, scope: !2465, inlinedAt: !3779)
!3801 = !DILocation(line: 1115, column: 9, scope: !2442, inlinedAt: !3779)
!3802 = !DILocation(line: 1116, column: 1, scope: !2442, inlinedAt: !3779)
!3803 = !DILocation(line: 2244, column: 12, scope: !3775)
!3804 = !DILocation(line: 2244, column: 5, scope: !3775)
!3805 = !DILocation(line: 2247, column: 25, scope: !3775)
!3806 = !DILocation(line: 2247, column: 5, scope: !3775)
!3807 = !DILocation(line: 2248, column: 35, scope: !3775)
!3808 = !DILocation(line: 2248, column: 26, scope: !3775)
!3809 = !DILocation(line: 2249, column: 19, scope: !3775)
!3810 = !DILocation(line: 2250, column: 5, scope: !3775)
!3811 = !DILocation(line: 2251, column: 1, scope: !3775)
!3812 = distinct !DISubprogram(name: "replicationUnsetMaster", scope: !3, file: !3, line: 2004, type: !306, isLocal: false, isDefinition: true, scopeLine: 2004, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3813 = !DILocation(line: 2005, column: 16, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 2005, column: 9)
!3815 = !DILocation(line: 2005, column: 27, scope: !3814)
!3816 = !DILocation(line: 2005, column: 9, scope: !3812)
!3817 = !DILocation(line: 2006, column: 5, scope: !3812)
!3818 = !DILocation(line: 2007, column: 23, scope: !3812)
!3819 = !DILocation(line: 1053, column: 5, scope: !2393, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 2012, column: 5, scope: !3812)
!3821 = !DILocation(line: 1061, column: 42, scope: !2393, inlinedAt: !3820)
!3822 = !DILocation(line: 1061, column: 60, scope: !2393, inlinedAt: !3820)
!3823 = !DILocation(line: 1061, column: 33, scope: !2393, inlinedAt: !3820)
!3824 = !DILocation(line: 1034, column: 5, scope: !1715, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1062, column: 5, scope: !2393, inlinedAt: !3820)
!3826 = !DILocation(line: 1035, column: 39, scope: !1715, inlinedAt: !3825)
!3827 = !DILocation(line: 1036, column: 1, scope: !1715, inlinedAt: !3825)
!3828 = !DILocation(line: 1063, column: 143, scope: !2393, inlinedAt: !3820)
!3829 = !DILocation(line: 1063, column: 5, scope: !2393, inlinedAt: !3820)
!3830 = !DILocation(line: 1064, column: 1, scope: !2393, inlinedAt: !3820)
!3831 = !DILocation(line: 2013, column: 16, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 2013, column: 9)
!3833 = !DILocation(line: 2013, column: 9, scope: !3832)
!3834 = !DILocation(line: 2013, column: 9, scope: !3812)
!3835 = !DILocation(line: 2013, column: 24, scope: !3832)
!3836 = !DILocation(line: 2256, column: 16, scope: !3163, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 2014, column: 5, scope: !3812)
!3838 = !DILocation(line: 2256, column: 30, scope: !3163, inlinedAt: !3837)
!3839 = !DILocation(line: 2256, column: 9, scope: !3164, inlinedAt: !3837)
!3840 = !DILocation(line: 2258, column: 5, scope: !3164, inlinedAt: !3837)
!3841 = !DILocation(line: 2259, column: 12, scope: !3164, inlinedAt: !3837)
!3842 = !DILocation(line: 2259, column: 27, scope: !3164, inlinedAt: !3837)
!3843 = !DILocation(line: 2259, column: 33, scope: !3164, inlinedAt: !3837)
!3844 = !DILocation(line: 2260, column: 5, scope: !3164, inlinedAt: !3837)
!3845 = !DILocation(line: 2261, column: 26, scope: !3164, inlinedAt: !3837)
!3846 = !DILocation(line: 2262, column: 1, scope: !3164, inlinedAt: !3837)
!3847 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 2015, column: 5, scope: !3812)
!3849 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !3848)
!3850 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !3848)
!3851 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !3848)
!3852 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !3848)
!3853 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !3848)
!3854 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !3848)
!3855 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !3848)
!3857 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !3856)
!3858 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !3848)
!3859 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !3848)
!3861 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !3860)
!3862 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !3860)
!3863 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !3860)
!3864 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !3860)
!3865 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !3860)
!3866 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !3860)
!3867 = !DILocation(line: 0, scope: !3812)
!3868 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !3848)
!3869 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !3848)
!3870 = !DILocation(line: 2020, column: 5, scope: !3812)
!3871 = !DILocation(line: 2021, column: 23, scope: !3812)
!3872 = !DILocation(line: 2027, column: 23, scope: !3812)
!3873 = !DILocation(line: 2033, column: 42, scope: !3812)
!3874 = !DILocation(line: 2033, column: 33, scope: !3812)
!3875 = !{!512, !483, i64 2424}
!3876 = !DILocation(line: 2034, column: 1, scope: !3812)
!3877 = distinct !DISubprogram(name: "replicationHandleMasterDisconnection", scope: !3, file: !3, line: 2038, type: !306, isLocal: false, isDefinition: true, scopeLine: 2038, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3878 = !DILocation(line: 2039, column: 19, scope: !3877)
!3879 = !DILocation(line: 2040, column: 23, scope: !3877)
!3880 = !DILocation(line: 2041, column: 37, scope: !3877)
!3881 = !DILocation(line: 2041, column: 28, scope: !3877)
!3882 = !DILocation(line: 2045, column: 1, scope: !3877)
!3883 = distinct !DISubprogram(name: "replicaofCommand", scope: !3, file: !3, line: 2047, type: !159, isLocal: false, isDefinition: true, scopeLine: 2047, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3884)
!3884 = !{!3885, !3886, !3891, !3893}
!3885 = !DILocalVariable(name: "c", arg: 1, scope: !3883, file: !3, line: 2047, type: !8)
!3886 = !DILocalVariable(name: "client", scope: !3887, file: !3, line: 2061, type: !139)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 2059, column: 32)
!3888 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 2059, column: 13)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2058, column: 45)
!3890 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 2057, column: 9)
!3891 = !DILocalVariable(name: "port", scope: !3892, file: !3, line: 2067, type: !79)
!3892 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2066, column: 12)
!3893 = !DILocalVariable(name: "client", scope: !3892, file: !3, line: 2091, type: !139)
!3894 = !DILocation(line: 2047, column: 31, scope: !3883)
!3895 = !DILocation(line: 2050, column: 16, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 2050, column: 9)
!3897 = !{!512, !484, i64 2924}
!3898 = !DILocation(line: 2050, column: 9, scope: !3896)
!3899 = !DILocation(line: 2050, column: 9, scope: !3883)
!3900 = !DILocation(line: 2051, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 2050, column: 33)
!3902 = !DILocation(line: 2052, column: 9, scope: !3901)
!3903 = !DILocation(line: 2057, column: 24, scope: !3890)
!3904 = !DILocation(line: 2057, column: 21, scope: !3890)
!3905 = !DILocation(line: 2057, column: 33, scope: !3890)
!3906 = !DILocation(line: 2057, column: 10, scope: !3890)
!3907 = !DILocation(line: 2057, column: 43, scope: !3890)
!3908 = !DILocation(line: 2058, column: 21, scope: !3890)
!3909 = !DILocation(line: 2058, column: 33, scope: !3890)
!3910 = !DILocation(line: 2058, column: 10, scope: !3890)
!3911 = !DILocation(line: 2057, column: 9, scope: !3883)
!3912 = !DILocation(line: 2059, column: 20, scope: !3888)
!3913 = !DILocation(line: 2059, column: 13, scope: !3888)
!3914 = !DILocation(line: 2059, column: 13, scope: !3889)
!3915 = !DILocation(line: 2060, column: 13, scope: !3887)
!3916 = !DILocation(line: 2061, column: 46, scope: !3887)
!3917 = !DILocation(line: 2061, column: 26, scope: !3887)
!3918 = !DILocation(line: 2061, column: 17, scope: !3887)
!3919 = !DILocation(line: 2062, column: 13, scope: !3887)
!3920 = !DILocation(line: 2064, column: 13, scope: !3887)
!3921 = !DILocation(line: 2065, column: 9, scope: !3887)
!3922 = !DILocation(line: 2067, column: 9, scope: !3892)
!3923 = !DILocation(line: 2069, column: 16, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 2069, column: 13)
!3925 = !DILocation(line: 2069, column: 22, scope: !3924)
!3926 = !DILocation(line: 2069, column: 13, scope: !3892)
!3927 = !DILocation(line: 2074, column: 13, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 2070, column: 9)
!3929 = !DILocation(line: 2075, column: 13, scope: !3928)
!3930 = !DILocation(line: 2095, column: 5, scope: !3890)
!3931 = !DILocation(line: 2078, column: 42, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 2078, column: 13)
!3933 = !DILocation(line: 2067, column: 14, scope: !3892)
!3934 = !DILocation(line: 2078, column: 14, scope: !3932)
!3935 = !DILocation(line: 2078, column: 67, scope: !3932)
!3936 = !DILocation(line: 2078, column: 13, scope: !3892)
!3937 = !DILocation(line: 2079, column: 13, scope: !3932)
!3938 = !DILocation(line: 2082, column: 20, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 2082, column: 13)
!3940 = !DILocation(line: 2082, column: 13, scope: !3939)
!3941 = !DILocation(line: 2082, column: 31, scope: !3939)
!3942 = !DILocation(line: 0, scope: !3939)
!3943 = !DILocation(line: 2082, column: 35, scope: !3939)
!3944 = !DILocation(line: 2083, column: 13, scope: !3939)
!3945 = !DILocation(line: 2083, column: 23, scope: !3939)
!3946 = !DILocation(line: 2083, column: 16, scope: !3939)
!3947 = !DILocation(line: 2083, column: 37, scope: !3939)
!3948 = !DILocation(line: 2083, column: 34, scope: !3939)
!3949 = !DILocation(line: 2082, column: 13, scope: !3892)
!3950 = !DILocation(line: 2084, column: 13, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 2083, column: 43)
!3952 = !DILocation(line: 2085, column: 27, scope: !3951)
!3953 = !DILocation(line: 2085, column: 13, scope: !3951)
!3954 = !DILocation(line: 2086, column: 13, scope: !3951)
!3955 = !DILocation(line: 2090, column: 47, scope: !3892)
!3956 = !DILocation(line: 2090, column: 9, scope: !3892)
!3957 = !DILocation(line: 2091, column: 42, scope: !3892)
!3958 = !DILocation(line: 2091, column: 22, scope: !3892)
!3959 = !DILocation(line: 2091, column: 13, scope: !3892)
!3960 = !DILocation(line: 2093, column: 20, scope: !3892)
!3961 = !DILocation(line: 2093, column: 39, scope: !3892)
!3962 = !DILocation(line: 2092, column: 9, scope: !3892)
!3963 = !DILocation(line: 2094, column: 9, scope: !3892)
!3964 = !DILocation(line: 2096, column: 23, scope: !3883)
!3965 = !DILocation(line: 2096, column: 5, scope: !3883)
!3966 = !DILocation(line: 2097, column: 1, scope: !3883)
!3967 = distinct !DISubprogram(name: "roleCommand", scope: !3, file: !3, line: 2102, type: !159, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3968)
!3968 = !{!3969, !3970, !3973, !3974, !3975, !3976, !3978, !3979, !3980}
!3969 = !DILocalVariable(name: "c", arg: 1, scope: !3967, file: !3, line: 2102, type: !8)
!3970 = !DILocalVariable(name: "li", scope: !3971, file: !3, line: 2104, type: !420)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 2103, column: 36)
!3972 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 2103, column: 9)
!3973 = !DILocalVariable(name: "ln", scope: !3971, file: !3, line: 2105, type: !105)
!3974 = !DILocalVariable(name: "mbcount", scope: !3971, file: !3, line: 2106, type: !47)
!3975 = !DILocalVariable(name: "slaves", scope: !3971, file: !3, line: 2107, type: !20)
!3976 = !DILocalVariable(name: "slave", scope: !3977, file: !3, line: 2115, type: !8)
!3977 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 2114, column: 37)
!3978 = !DILocalVariable(name: "ip", scope: !3977, file: !3, line: 2116, type: !211)
!3979 = !DILocalVariable(name: "slaveip", scope: !3977, file: !3, line: 2116, type: !6)
!3980 = !DILocalVariable(name: "slavestate", scope: !3981, file: !3, line: 2132, type: !6)
!3981 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 2131, column: 12)
!3982 = !DILocation(line: 2102, column: 26, scope: !3967)
!3983 = !DILocation(line: 2103, column: 16, scope: !3972)
!3984 = !DILocation(line: 2103, column: 27, scope: !3972)
!3985 = !DILocation(line: 2103, column: 9, scope: !3967)
!3986 = !DILocation(line: 2104, column: 9, scope: !3971)
!3987 = !DILocation(line: 2107, column: 13, scope: !3971)
!3988 = !DILocation(line: 2109, column: 9, scope: !3971)
!3989 = !DILocation(line: 2110, column: 9, scope: !3971)
!3990 = !DILocation(line: 2111, column: 35, scope: !3971)
!3991 = !DILocation(line: 2111, column: 9, scope: !3971)
!3992 = !DILocation(line: 2112, column: 19, scope: !3971)
!3993 = !DILocation(line: 2106, column: 15, scope: !3971)
!3994 = !DILocation(line: 2113, column: 27, scope: !3971)
!3995 = !DILocation(line: 2104, column: 18, scope: !3971)
!3996 = !DILocation(line: 2113, column: 9, scope: !3971)
!3997 = !DILocation(line: 2114, column: 9, scope: !3971)
!3998 = !DILocation(line: 2114, column: 21, scope: !3971)
!3999 = !DILocation(line: 2105, column: 19, scope: !3971)
!4000 = !DILocation(line: 2115, column: 33, scope: !3977)
!4001 = !DILocation(line: 2115, column: 21, scope: !3977)
!4002 = !DILocation(line: 2116, column: 13, scope: !3977)
!4003 = !DILocation(line: 2116, column: 18, scope: !3977)
!4004 = !DILocation(line: 2116, column: 49, scope: !3977)
!4005 = !DILocation(line: 2116, column: 39, scope: !3977)
!4006 = !DILocation(line: 2118, column: 17, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 2118, column: 17)
!4008 = !DILocation(line: 2118, column: 28, scope: !4007)
!4009 = !DILocation(line: 2118, column: 17, scope: !3977)
!4010 = !DILocation(line: 2119, column: 45, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 2119, column: 21)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 2118, column: 37)
!4013 = !DILocation(line: 2119, column: 21, scope: !4011)
!4014 = !DILocation(line: 2119, column: 68, scope: !4011)
!4015 = !DILocation(line: 2119, column: 21, scope: !4012)
!4016 = !DILocation(line: 0, scope: !4012)
!4017 = distinct !{!4017, !3997, !4018}
!4018 = !DILocation(line: 2129, column: 9, scope: !3971)
!4019 = !DILocation(line: 0, scope: !3977)
!4020 = !DILocation(line: 2123, column: 24, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 2123, column: 17)
!4022 = !DILocation(line: 2123, column: 34, scope: !4021)
!4023 = !DILocation(line: 2123, column: 17, scope: !3977)
!4024 = !DILocation(line: 2124, column: 13, scope: !3977)
!4025 = !DILocation(line: 2125, column: 13, scope: !3977)
!4026 = !DILocation(line: 2126, column: 43, scope: !3977)
!4027 = !DILocation(line: 2126, column: 36, scope: !3977)
!4028 = !DILocation(line: 2126, column: 13, scope: !3977)
!4029 = !DILocation(line: 2127, column: 43, scope: !3977)
!4030 = !DILocation(line: 2127, column: 13, scope: !3977)
!4031 = !DILocation(line: 2128, column: 19, scope: !3977)
!4032 = !DILocation(line: 0, scope: !4021)
!4033 = !DILocation(line: 2130, column: 46, scope: !3971)
!4034 = !DILocation(line: 2130, column: 9, scope: !3971)
!4035 = !DILocation(line: 2131, column: 5, scope: !3972)
!4036 = !DILocation(line: 2131, column: 5, scope: !3971)
!4037 = !DILocation(line: 2132, column: 15, scope: !3981)
!4038 = !DILocation(line: 2134, column: 9, scope: !3981)
!4039 = !DILocation(line: 2135, column: 9, scope: !3981)
!4040 = !DILocation(line: 2136, column: 38, scope: !3981)
!4041 = !DILocation(line: 2136, column: 9, scope: !3981)
!4042 = !DILocation(line: 2137, column: 35, scope: !3981)
!4043 = !DILocation(line: 2137, column: 28, scope: !3981)
!4044 = !DILocation(line: 2137, column: 9, scope: !3981)
!4045 = !DILocation(line: 1071, column: 19, scope: !2405, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 2138, column: 13, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 2138, column: 13)
!4048 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !4046)
!4049 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !4046)
!4050 = !DILocation(line: 2138, column: 13, scope: !3981)
!4051 = !DILocation(line: 0, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 2138, column: 40)
!4053 = !DILocation(line: 2141, column: 13, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 2140, column: 16)
!4055 = !DILocation(line: 2143, column: 62, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 2141, column: 39)
!4057 = !DILocation(line: 2144, column: 68, scope: !4056)
!4058 = !DILocation(line: 2145, column: 60, scope: !4056)
!4059 = !DILocation(line: 2146, column: 66, scope: !4056)
!4060 = !DILocation(line: 2147, column: 46, scope: !4056)
!4061 = !DILocation(line: 0, scope: !4056)
!4062 = !DILocation(line: 2150, column: 9, scope: !3981)
!4063 = !DILocation(line: 2151, column: 35, scope: !3981)
!4064 = !DILocation(line: 2151, column: 28, scope: !3981)
!4065 = !DILocation(line: 2151, column: 59, scope: !3981)
!4066 = !DILocation(line: 2151, column: 9, scope: !3981)
!4067 = !DILocation(line: 2153, column: 1, scope: !3967)
!4068 = distinct !DISubprogram(name: "replicationCacheMaster", scope: !3, file: !3, line: 2191, type: !159, isLocal: false, isDefinition: true, scopeLine: 2191, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4069)
!4069 = !{!4070}
!4070 = !DILocalVariable(name: "c", arg: 1, scope: !4068, file: !3, line: 2191, type: !8)
!4071 = !DILocation(line: 2191, column: 37, scope: !4068)
!4072 = !DILocation(line: 2192, column: 5, scope: !4068)
!4073 = !DILocation(line: 2193, column: 5, scope: !4068)
!4074 = !DILocation(line: 2196, column: 5, scope: !4068)
!4075 = !DILocation(line: 2202, column: 21, scope: !4068)
!4076 = !DILocation(line: 2202, column: 29, scope: !4068)
!4077 = !{!482, !485, i64 32}
!4078 = !DILocation(line: 2202, column: 5, scope: !4068)
!4079 = !DILocation(line: 2203, column: 21, scope: !4068)
!4080 = !DILocation(line: 2203, column: 29, scope: !4068)
!4081 = !{!482, !485, i64 48}
!4082 = !DILocation(line: 2203, column: 5, scope: !4068)
!4083 = !DILocation(line: 2204, column: 42, scope: !4068)
!4084 = !DILocation(line: 2204, column: 50, scope: !4068)
!4085 = !DILocation(line: 2204, column: 20, scope: !4068)
!4086 = !DILocation(line: 2204, column: 33, scope: !4068)
!4087 = !DILocation(line: 2205, column: 12, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 2205, column: 9)
!4089 = !DILocation(line: 2205, column: 18, scope: !4088)
!4090 = !DILocation(line: 2205, column: 9, scope: !4068)
!4091 = !DILocation(line: 2205, column: 34, scope: !4088)
!4092 = !DILocation(line: 2206, column: 18, scope: !4068)
!4093 = !{!482, !485, i64 112}
!4094 = !DILocation(line: 2206, column: 5, scope: !4068)
!4095 = !DILocation(line: 2208, column: 8, scope: !4068)
!4096 = !DILocation(line: 2208, column: 20, scope: !4068)
!4097 = !DILocation(line: 2209, column: 8, scope: !4068)
!4098 = !DILocation(line: 2209, column: 15, scope: !4068)
!4099 = !{!482, !484, i64 528}
!4100 = !DILocation(line: 2210, column: 5, scope: !4068)
!4101 = !DILocation(line: 2214, column: 35, scope: !4068)
!4102 = !DILocation(line: 2214, column: 26, scope: !4068)
!4103 = !DILocation(line: 2217, column: 12, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 2217, column: 9)
!4105 = !{!482, !485, i64 512}
!4106 = !DILocation(line: 2217, column: 9, scope: !4104)
!4107 = !DILocation(line: 2217, column: 9, scope: !4068)
!4108 = !DILocation(line: 2218, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 2217, column: 20)
!4110 = !DILocation(line: 2219, column: 19, scope: !4109)
!4111 = !DILocation(line: 2220, column: 5, scope: !4109)
!4112 = !DILocation(line: 2039, column: 19, scope: !3877, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 2225, column: 5, scope: !4068)
!4114 = !DILocation(line: 2040, column: 23, scope: !3877, inlinedAt: !4113)
!4115 = !DILocation(line: 2041, column: 37, scope: !3877, inlinedAt: !4113)
!4116 = !DILocation(line: 2041, column: 28, scope: !3877, inlinedAt: !4113)
!4117 = !DILocation(line: 2045, column: 1, scope: !3877, inlinedAt: !4113)
!4118 = !DILocation(line: 2226, column: 1, scope: !4068)
!4119 = distinct !DISubprogram(name: "replicationScriptCacheInit", scope: !3, file: !3, line: 2355, type: !306, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!4120 = !DILocation(line: 2356, column: 34, scope: !4119)
!4121 = !{!512, !484, i64 2680}
!4122 = !DILocation(line: 2357, column: 36, scope: !4119)
!4123 = !DILocation(line: 2357, column: 34, scope: !4119)
!4124 = !DILocation(line: 2358, column: 36, scope: !4119)
!4125 = !DILocation(line: 2358, column: 34, scope: !4119)
!4126 = !DILocation(line: 2359, column: 1, scope: !4119)
!4127 = distinct !DISubprogram(name: "replicationScriptCacheAdd", scope: !3, file: !3, line: 2380, type: !4128, isLocal: false, isDefinition: true, scopeLine: 2380, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4130)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !139}
!4130 = !{!4131, !4132, !4133, !4134, !4137}
!4131 = !DILocalVariable(name: "sha1", arg: 1, scope: !4127, file: !3, line: 2380, type: !139)
!4132 = !DILocalVariable(name: "retval", scope: !4127, file: !3, line: 2381, type: !20)
!4133 = !DILocalVariable(name: "key", scope: !4127, file: !3, line: 2382, type: !139)
!4134 = !DILocalVariable(name: "ln", scope: !4135, file: !3, line: 2387, type: !105)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 2386, column: 5)
!4136 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 2385, column: 9)
!4137 = !DILocalVariable(name: "oldest", scope: !4135, file: !3, line: 2388, type: !139)
!4138 = !DILocation(line: 2380, column: 36, scope: !4127)
!4139 = !DILocation(line: 2382, column: 15, scope: !4127)
!4140 = !DILocation(line: 2382, column: 9, scope: !4127)
!4141 = !DILocation(line: 2385, column: 9, scope: !4136)
!4142 = !DILocation(line: 2385, column: 60, scope: !4136)
!4143 = !DILocation(line: 2385, column: 53, scope: !4136)
!4144 = !DILocation(line: 2385, column: 50, scope: !4136)
!4145 = !DILocation(line: 2385, column: 9, scope: !4127)
!4146 = !DILocation(line: 2387, column: 24, scope: !4135)
!4147 = !{!560, !485, i64 8}
!4148 = !DILocation(line: 2387, column: 19, scope: !4135)
!4149 = !DILocation(line: 2388, column: 22, scope: !4135)
!4150 = !DILocation(line: 2388, column: 13, scope: !4135)
!4151 = !DILocation(line: 2390, column: 36, scope: !4135)
!4152 = !DILocation(line: 2390, column: 18, scope: !4135)
!4153 = !DILocation(line: 2381, column: 9, scope: !4127)
!4154 = !DILocation(line: 2391, column: 9, scope: !4135)
!4155 = !DILocation(line: 2392, column: 28, scope: !4135)
!4156 = !DILocation(line: 2392, column: 9, scope: !4135)
!4157 = !DILocation(line: 2393, column: 5, scope: !4135)
!4158 = !DILocation(line: 2396, column: 29, scope: !4127)
!4159 = !DILocation(line: 2396, column: 14, scope: !4127)
!4160 = !DILocation(line: 2397, column: 28, scope: !4127)
!4161 = !DILocation(line: 2397, column: 5, scope: !4127)
!4162 = !DILocation(line: 2398, column: 5, scope: !4127)
!4163 = !DILocation(line: 2399, column: 1, scope: !4127)
!4164 = distinct !DISubprogram(name: "replicationScriptCacheExists", scope: !3, file: !3, line: 2403, type: !4165, isLocal: false, isDefinition: true, scopeLine: 2403, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!20, !139}
!4167 = !{!4168}
!4168 = !DILocalVariable(name: "sha1", arg: 1, scope: !4164, file: !3, line: 2403, type: !139)
!4169 = !DILocation(line: 2403, column: 38, scope: !4164)
!4170 = !DILocation(line: 2404, column: 28, scope: !4164)
!4171 = !DILocation(line: 2404, column: 12, scope: !4164)
!4172 = !DILocation(line: 2404, column: 56, scope: !4164)
!4173 = !DILocation(line: 2404, column: 5, scope: !4164)
!4174 = distinct !DISubprogram(name: "replicationRequestAckFromSlaves", scope: !3, file: !3, line: 2437, type: !306, isLocal: false, isDefinition: true, scopeLine: 2437, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!4175 = !DILocation(line: 2438, column: 32, scope: !4174)
!4176 = !{!512, !484, i64 2696}
!4177 = !DILocation(line: 2439, column: 1, scope: !4174)
!4178 = distinct !DISubprogram(name: "replicationCountAcksByOffset", scope: !3, file: !3, line: 2443, type: !4179, isLocal: false, isDefinition: true, scopeLine: 2443, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!20, !97}
!4181 = !{!4182, !4183, !4184, !4185, !4186}
!4182 = !DILocalVariable(name: "offset", arg: 1, scope: !4178, file: !3, line: 2443, type: !97)
!4183 = !DILocalVariable(name: "li", scope: !4178, file: !3, line: 2444, type: !420)
!4184 = !DILocalVariable(name: "ln", scope: !4178, file: !3, line: 2445, type: !105)
!4185 = !DILocalVariable(name: "count", scope: !4178, file: !3, line: 2446, type: !20)
!4186 = !DILocalVariable(name: "slave", scope: !4187, file: !3, line: 2450, type: !8)
!4187 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 2449, column: 33)
!4188 = !DILocation(line: 2443, column: 44, scope: !4178)
!4189 = !DILocation(line: 2444, column: 5, scope: !4178)
!4190 = !DILocation(line: 2446, column: 9, scope: !4178)
!4191 = !DILocation(line: 2448, column: 23, scope: !4178)
!4192 = !DILocation(line: 2444, column: 14, scope: !4178)
!4193 = !DILocation(line: 2448, column: 5, scope: !4178)
!4194 = !DILocation(line: 2449, column: 5, scope: !4178)
!4195 = !DILocation(line: 2449, column: 17, scope: !4178)
!4196 = !DILocation(line: 2445, column: 15, scope: !4178)
!4197 = !DILocation(line: 2450, column: 29, scope: !4187)
!4198 = !DILocation(line: 2450, column: 17, scope: !4187)
!4199 = !DILocation(line: 2452, column: 20, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 2452, column: 13)
!4201 = !DILocation(line: 2452, column: 30, scope: !4200)
!4202 = !DILocation(line: 2452, column: 13, scope: !4187)
!4203 = distinct !{!4203, !4194, !4204}
!4204 = !DILocation(line: 2454, column: 5, scope: !4178)
!4205 = !DILocation(line: 2453, column: 20, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 2453, column: 13)
!4207 = !DILocation(line: 2453, column: 33, scope: !4206)
!4208 = !DILocation(line: 2453, column: 13, scope: !4187)
!4209 = !DILocation(line: 2453, column: 49, scope: !4206)
!4210 = !DILocation(line: 2453, column: 44, scope: !4206)
!4211 = !DILocation(line: 0, scope: !4206)
!4212 = !DILocation(line: 0, scope: !4200)
!4213 = !DILocation(line: 2456, column: 1, scope: !4178)
!4214 = !DILocation(line: 2455, column: 5, scope: !4178)
!4215 = distinct !DISubprogram(name: "waitCommand", scope: !3, file: !3, line: 2460, type: !159, isLocal: false, isDefinition: true, scopeLine: 2460, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221}
!4217 = !DILocalVariable(name: "c", arg: 1, scope: !4215, file: !3, line: 2460, type: !8)
!4218 = !DILocalVariable(name: "timeout", scope: !4215, file: !3, line: 2461, type: !237)
!4219 = !DILocalVariable(name: "numreplicas", scope: !4215, file: !3, line: 2462, type: !79)
!4220 = !DILocalVariable(name: "ackreplicas", scope: !4215, file: !3, line: 2462, type: !79)
!4221 = !DILocalVariable(name: "offset", scope: !4215, file: !3, line: 2463, type: !97)
!4222 = !DILocation(line: 2460, column: 26, scope: !4215)
!4223 = !DILocation(line: 2461, column: 5, scope: !4215)
!4224 = !DILocation(line: 2462, column: 5, scope: !4215)
!4225 = !DILocation(line: 2463, column: 27, scope: !4215)
!4226 = !{!482, !486, i64 480}
!4227 = !DILocation(line: 2463, column: 15, scope: !4215)
!4228 = !DILocation(line: 2465, column: 16, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 2465, column: 9)
!4230 = !DILocation(line: 2465, column: 9, scope: !4229)
!4231 = !DILocation(line: 2465, column: 9, scope: !4215)
!4232 = !DILocation(line: 2466, column: 9, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 2465, column: 28)
!4234 = !DILocation(line: 2467, column: 9, scope: !4233)
!4235 = !DILocation(line: 2471, column: 39, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 2471, column: 9)
!4237 = !DILocation(line: 2471, column: 36, scope: !4236)
!4238 = !DILocation(line: 2462, column: 10, scope: !4215)
!4239 = !DILocation(line: 2471, column: 9, scope: !4236)
!4240 = !DILocation(line: 2471, column: 66, scope: !4236)
!4241 = !DILocation(line: 2471, column: 9, scope: !4215)
!4242 = !DILocation(line: 2473, column: 42, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 2473, column: 9)
!4244 = !DILocation(line: 2473, column: 39, scope: !4243)
!4245 = !DILocation(line: 2461, column: 14, scope: !4215)
!4246 = !DILocation(line: 2473, column: 9, scope: !4243)
!4247 = !DILocation(line: 2474, column: 9, scope: !4243)
!4248 = !DILocation(line: 2473, column: 9, scope: !4215)
!4249 = !DILocation(line: 2477, column: 51, scope: !4215)
!4250 = !DILocation(line: 2443, column: 44, scope: !4178, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 2477, column: 19, scope: !4215)
!4252 = !DILocation(line: 2444, column: 5, scope: !4178, inlinedAt: !4251)
!4253 = !DILocation(line: 2446, column: 9, scope: !4178, inlinedAt: !4251)
!4254 = !DILocation(line: 2448, column: 23, scope: !4178, inlinedAt: !4251)
!4255 = !DILocation(line: 2444, column: 14, scope: !4178, inlinedAt: !4251)
!4256 = !DILocation(line: 2448, column: 5, scope: !4178, inlinedAt: !4251)
!4257 = !DILocation(line: 2449, column: 5, scope: !4178, inlinedAt: !4251)
!4258 = !DILocation(line: 2449, column: 17, scope: !4178, inlinedAt: !4251)
!4259 = !DILocation(line: 2445, column: 15, scope: !4178, inlinedAt: !4251)
!4260 = !DILocation(line: 2450, column: 29, scope: !4187, inlinedAt: !4251)
!4261 = !DILocation(line: 2450, column: 17, scope: !4187, inlinedAt: !4251)
!4262 = !DILocation(line: 2452, column: 20, scope: !4200, inlinedAt: !4251)
!4263 = !DILocation(line: 2452, column: 30, scope: !4200, inlinedAt: !4251)
!4264 = !DILocation(line: 2452, column: 13, scope: !4187, inlinedAt: !4251)
!4265 = !DILocation(line: 2453, column: 20, scope: !4206, inlinedAt: !4251)
!4266 = !DILocation(line: 2453, column: 33, scope: !4206, inlinedAt: !4251)
!4267 = !DILocation(line: 2453, column: 13, scope: !4187, inlinedAt: !4251)
!4268 = !DILocation(line: 2453, column: 49, scope: !4206, inlinedAt: !4251)
!4269 = !DILocation(line: 2453, column: 44, scope: !4206, inlinedAt: !4251)
!4270 = !DILocation(line: 0, scope: !4206, inlinedAt: !4251)
!4271 = !DILocation(line: 0, scope: !4215)
!4272 = !DILocation(line: 2456, column: 1, scope: !4178, inlinedAt: !4251)
!4273 = !DILocation(line: 2455, column: 5, scope: !4178, inlinedAt: !4251)
!4274 = !DILocation(line: 2477, column: 19, scope: !4215)
!4275 = !DILocation(line: 2462, column: 23, scope: !4215)
!4276 = !DILocation(line: 2478, column: 24, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 2478, column: 9)
!4278 = !DILocation(line: 2478, column: 21, scope: !4277)
!4279 = !DILocation(line: 2478, column: 36, scope: !4277)
!4280 = !DILocation(line: 2478, column: 42, scope: !4277)
!4281 = !DILocation(line: 2478, column: 48, scope: !4277)
!4282 = !DILocation(line: 2478, column: 9, scope: !4215)
!4283 = !DILocation(line: 2479, column: 9, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 2478, column: 64)
!4285 = !DILocation(line: 2480, column: 9, scope: !4284)
!4286 = !DILocation(line: 2485, column: 23, scope: !4215)
!4287 = !DILocation(line: 2485, column: 13, scope: !4215)
!4288 = !DILocation(line: 2485, column: 21, scope: !4215)
!4289 = !{!482, !486, i64 392}
!4290 = !DILocation(line: 2486, column: 13, scope: !4215)
!4291 = !DILocation(line: 2486, column: 24, scope: !4215)
!4292 = !{!482, !486, i64 464}
!4293 = !DILocation(line: 2487, column: 27, scope: !4215)
!4294 = !DILocation(line: 2487, column: 13, scope: !4215)
!4295 = !DILocation(line: 2487, column: 25, scope: !4215)
!4296 = !{!482, !484, i64 460}
!4297 = !DILocation(line: 2488, column: 28, scope: !4215)
!4298 = !{!512, !485, i64 2688}
!4299 = !DILocation(line: 2488, column: 49, scope: !4215)
!4300 = !DILocation(line: 2488, column: 5, scope: !4215)
!4301 = !DILocation(line: 2489, column: 5, scope: !4215)
!4302 = !DILocation(line: 2438, column: 32, scope: !4174, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 2493, column: 5, scope: !4215)
!4304 = !DILocation(line: 2439, column: 1, scope: !4174, inlinedAt: !4303)
!4305 = !DILocation(line: 2494, column: 1, scope: !4215)
!4306 = !DILocation(line: 0, scope: !4233)
!4307 = distinct !DISubprogram(name: "unblockClientWaitingReplicas", scope: !3, file: !3, line: 2500, type: !159, isLocal: false, isDefinition: true, scopeLine: 2500, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4308)
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "c", arg: 1, scope: !4307, file: !3, line: 2500, type: !8)
!4310 = !DILocalVariable(name: "ln", scope: !4307, file: !3, line: 2501, type: !105)
!4311 = !DILocation(line: 2500, column: 43, scope: !4307)
!4312 = !DILocation(line: 2501, column: 41, scope: !4307)
!4313 = !DILocation(line: 2501, column: 62, scope: !4307)
!4314 = !DILocation(line: 2501, column: 20, scope: !4307)
!4315 = !DILocation(line: 2501, column: 15, scope: !4307)
!4316 = !DILocation(line: 2502, column: 5, scope: !4307)
!4317 = !DILocation(line: 2503, column: 24, scope: !4307)
!4318 = !DILocation(line: 2503, column: 5, scope: !4307)
!4319 = !DILocation(line: 2504, column: 1, scope: !4307)
!4320 = distinct !DISubprogram(name: "processClientsWaitingReplicas", scope: !3, file: !3, line: 2508, type: !306, isLocal: false, isDefinition: true, scopeLine: 2508, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4328}
!4322 = !DILocalVariable(name: "last_offset", scope: !4320, file: !3, line: 2509, type: !97)
!4323 = !DILocalVariable(name: "last_numreplicas", scope: !4320, file: !3, line: 2510, type: !20)
!4324 = !DILocalVariable(name: "li", scope: !4320, file: !3, line: 2512, type: !420)
!4325 = !DILocalVariable(name: "ln", scope: !4320, file: !3, line: 2513, type: !105)
!4326 = !DILocalVariable(name: "c", scope: !4327, file: !3, line: 2517, type: !8)
!4327 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 2516, column: 33)
!4328 = !DILocalVariable(name: "numreplicas", scope: !4329, file: !3, line: 2529, type: !20)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 2528, column: 16)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 2523, column: 13)
!4331 = !DILocation(line: 2509, column: 15, scope: !4320)
!4332 = !DILocation(line: 2510, column: 9, scope: !4320)
!4333 = !DILocation(line: 2512, column: 5, scope: !4320)
!4334 = !DILocation(line: 2515, column: 23, scope: !4320)
!4335 = !DILocation(line: 2512, column: 14, scope: !4320)
!4336 = !DILocation(line: 2515, column: 5, scope: !4320)
!4337 = !DILocation(line: 2516, column: 5, scope: !4320)
!4338 = !DILocation(line: 2516, column: 17, scope: !4320)
!4339 = !DILocation(line: 2513, column: 15, scope: !4320)
!4340 = !DILocation(line: 2517, column: 25, scope: !4327)
!4341 = !DILocation(line: 2517, column: 17, scope: !4327)
!4342 = !DILocation(line: 2523, column: 13, scope: !4330)
!4343 = !DILocation(line: 2523, column: 25, scope: !4330)
!4344 = !DILocation(line: 0, scope: !4330)
!4345 = !DILocation(line: 2523, column: 40, scope: !4330)
!4346 = !DILocation(line: 2523, column: 61, scope: !4330)
!4347 = !DILocation(line: 2524, column: 55, scope: !4330)
!4348 = !DILocation(line: 2524, column: 45, scope: !4330)
!4349 = !DILocation(line: 2523, column: 13, scope: !4327)
!4350 = !DILocation(line: 2526, column: 13, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 2525, column: 9)
!4352 = !DILocation(line: 2527, column: 32, scope: !4351)
!4353 = !DILocation(line: 2527, column: 13, scope: !4351)
!4354 = !DILocation(line: 2528, column: 9, scope: !4351)
!4355 = !DILocation(line: 2443, column: 44, scope: !4178, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 2529, column: 31, scope: !4329)
!4357 = !DILocation(line: 2444, column: 5, scope: !4178, inlinedAt: !4356)
!4358 = !DILocation(line: 2446, column: 9, scope: !4178, inlinedAt: !4356)
!4359 = !DILocation(line: 2448, column: 23, scope: !4178, inlinedAt: !4356)
!4360 = !DILocation(line: 2444, column: 14, scope: !4178, inlinedAt: !4356)
!4361 = !DILocation(line: 2448, column: 5, scope: !4178, inlinedAt: !4356)
!4362 = !DILocation(line: 2449, column: 5, scope: !4178, inlinedAt: !4356)
!4363 = !DILocation(line: 2449, column: 17, scope: !4178, inlinedAt: !4356)
!4364 = !DILocation(line: 2445, column: 15, scope: !4178, inlinedAt: !4356)
!4365 = !DILocation(line: 2450, column: 29, scope: !4187, inlinedAt: !4356)
!4366 = !DILocation(line: 2450, column: 17, scope: !4187, inlinedAt: !4356)
!4367 = !DILocation(line: 2452, column: 20, scope: !4200, inlinedAt: !4356)
!4368 = !DILocation(line: 2452, column: 30, scope: !4200, inlinedAt: !4356)
!4369 = !DILocation(line: 2452, column: 13, scope: !4187, inlinedAt: !4356)
!4370 = !DILocation(line: 2453, column: 20, scope: !4206, inlinedAt: !4356)
!4371 = !DILocation(line: 2453, column: 33, scope: !4206, inlinedAt: !4356)
!4372 = !DILocation(line: 2453, column: 13, scope: !4187, inlinedAt: !4356)
!4373 = !DILocation(line: 2453, column: 49, scope: !4206, inlinedAt: !4356)
!4374 = !DILocation(line: 2453, column: 44, scope: !4206, inlinedAt: !4356)
!4375 = !DILocation(line: 0, scope: !4206, inlinedAt: !4356)
!4376 = !DILocation(line: 0, scope: !4329)
!4377 = !DILocation(line: 2456, column: 1, scope: !4178, inlinedAt: !4356)
!4378 = !DILocation(line: 2455, column: 5, scope: !4178, inlinedAt: !4356)
!4379 = !DILocation(line: 2529, column: 17, scope: !4329)
!4380 = !DILocation(line: 2531, column: 40, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 2531, column: 17)
!4382 = !DILocation(line: 2531, column: 29, scope: !4381)
!4383 = !DILocation(line: 2531, column: 17, scope: !4329)
!4384 = !DILocation(line: 2532, column: 39, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 2531, column: 53)
!4386 = !DILocation(line: 2534, column: 17, scope: !4385)
!4387 = !DILocation(line: 2535, column: 36, scope: !4385)
!4388 = !DILocation(line: 2535, column: 17, scope: !4385)
!4389 = !DILocation(line: 2536, column: 13, scope: !4385)
!4390 = !DILocation(line: 0, scope: !4385)
!4391 = distinct !{!4391, !4337, !4392}
!4392 = !DILocation(line: 2538, column: 5, scope: !4320)
!4393 = !DILocation(line: 2539, column: 1, scope: !4320)
!4394 = distinct !DISubprogram(name: "replicationGetSlaveOffset", scope: !3, file: !3, line: 2543, type: !1267, isLocal: false, isDefinition: true, scopeLine: 2543, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4395)
!4395 = !{!4396}
!4396 = !DILocalVariable(name: "offset", scope: !4394, file: !3, line: 2544, type: !97)
!4397 = !DILocation(line: 2544, column: 15, scope: !4394)
!4398 = !DILocation(line: 2546, column: 16, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 2546, column: 9)
!4400 = !DILocation(line: 2546, column: 27, scope: !4399)
!4401 = !DILocation(line: 2546, column: 9, scope: !4394)
!4402 = !DILocation(line: 2547, column: 20, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 2547, column: 13)
!4404 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 2546, column: 36)
!4405 = !DILocation(line: 2547, column: 13, scope: !4403)
!4406 = !DILocation(line: 2547, column: 13, scope: !4404)
!4407 = !DILocation(line: 2549, column: 27, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 2549, column: 20)
!4409 = !DILocation(line: 2549, column: 20, scope: !4408)
!4410 = !DILocation(line: 2549, column: 20, scope: !4403)
!4411 = !DILocation(line: 0, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 2549, column: 42)
!4413 = !DILocation(line: 2557, column: 16, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 2557, column: 9)
!4415 = !DILocation(line: 2557, column: 9, scope: !4394)
!4416 = !DILocation(line: 0, scope: !4414)
!4417 = !DILocation(line: 2558, column: 5, scope: !4394)
!4418 = !DILocation(line: 0, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 2547, column: 28)
!4420 = !DILocation(line: 2568, column: 16, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2568, column: 9)
!4422 = !DILocation(line: 2568, column: 9, scope: !4421)
!4423 = !DILocation(line: 2568, column: 27, scope: !4421)
!4424 = !DILocation(line: 2569, column: 17, scope: !4421)
!4425 = !DILocation(line: 2569, column: 28, scope: !4421)
!4426 = !DILocation(line: 2569, column: 53, scope: !4421)
!4427 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 2570, column: 10, scope: !4421)
!4429 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !4428)
!4430 = !DILocation(line: 2570, column: 37, scope: !4421)
!4431 = !DILocation(line: 2571, column: 11, scope: !4421)
!4432 = !DILocation(line: 2571, column: 29, scope: !4421)
!4433 = !DILocation(line: 2571, column: 21, scope: !4421)
!4434 = !DILocation(line: 2571, column: 60, scope: !4421)
!4435 = !{!512, !484, i64 2476}
!4436 = !DILocation(line: 2571, column: 53, scope: !4421)
!4437 = !DILocation(line: 2571, column: 51, scope: !4421)
!4438 = !DILocation(line: 2568, column: 9, scope: !417)
!4439 = !DILocation(line: 2573, column: 9, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2572, column: 5)
!4441 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 2574, column: 9, scope: !4440)
!4443 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !4442)
!4444 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !4442)
!4445 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !4442)
!4446 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !4442)
!4447 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !4442)
!4448 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !4442)
!4449 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !4442)
!4451 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !4450)
!4452 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !4442)
!4453 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !4442)
!4455 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !4454)
!4456 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !4454)
!4457 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !4454)
!4458 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !4454)
!4459 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !4454)
!4460 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !4454)
!4461 = !DILocation(line: 0, scope: !4440)
!4462 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !4442)
!4463 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !4442)
!4464 = !DILocation(line: 2575, column: 5, scope: !4440)
!4465 = !DILocation(line: 2578, column: 16, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2578, column: 9)
!4467 = !DILocation(line: 2578, column: 9, scope: !4466)
!4468 = !DILocation(line: 2578, column: 37, scope: !4466)
!4469 = !DILocation(line: 2578, column: 48, scope: !4466)
!4470 = !DILocation(line: 2578, column: 27, scope: !4466)
!4471 = !DILocation(line: 2579, column: 10, scope: !4466)
!4472 = !DILocation(line: 2579, column: 28, scope: !4466)
!4473 = !DILocation(line: 2579, column: 20, scope: !4466)
!4474 = !DILocation(line: 2579, column: 59, scope: !4466)
!4475 = !DILocation(line: 2579, column: 52, scope: !4466)
!4476 = !DILocation(line: 2579, column: 50, scope: !4466)
!4477 = !DILocation(line: 2578, column: 9, scope: !417)
!4478 = !DILocation(line: 2586, column: 37, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2586, column: 9)
!4480 = !DILocation(line: 2581, column: 9, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 2580, column: 5)
!4482 = !DILocation(line: 1967, column: 16, scope: !2591, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 2582, column: 9, scope: !4481)
!4484 = !DILocation(line: 1967, column: 27, scope: !2591, inlinedAt: !4483)
!4485 = !DILocation(line: 1967, column: 9, scope: !2592, inlinedAt: !4483)
!4486 = !DILocation(line: 1968, column: 9, scope: !2597, inlinedAt: !4483)
!4487 = !DILocation(line: 1970, column: 5, scope: !2597, inlinedAt: !4483)
!4488 = !DILocation(line: 1970, column: 34, scope: !2600, inlinedAt: !4483)
!4489 = !DILocation(line: 1970, column: 59, scope: !2600, inlinedAt: !4483)
!4490 = !DILocation(line: 1071, column: 57, scope: !2405, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 1971, column: 16, scope: !2600, inlinedAt: !4483)
!4492 = !DILocation(line: 1071, column: 5, scope: !2405, inlinedAt: !4491)
!4493 = !DILocation(line: 1970, column: 16, scope: !2591, inlinedAt: !4483)
!4494 = !DILocation(line: 1940, column: 21, scope: !2607, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 1973, column: 9, scope: !2611, inlinedAt: !4483)
!4496 = !DILocation(line: 1940, column: 9, scope: !2607, inlinedAt: !4495)
!4497 = !DILocation(line: 1942, column: 30, scope: !2607, inlinedAt: !4495)
!4498 = !DILocation(line: 1942, column: 5, scope: !2607, inlinedAt: !4495)
!4499 = !DILocation(line: 1943, column: 5, scope: !2607, inlinedAt: !4495)
!4500 = !DILocation(line: 1944, column: 28, scope: !2607, inlinedAt: !4495)
!4501 = !DILocation(line: 1945, column: 1, scope: !2607, inlinedAt: !4495)
!4502 = !DILocation(line: 0, scope: !4481)
!4503 = !DILocation(line: 1978, column: 5, scope: !2592, inlinedAt: !4483)
!4504 = !DILocation(line: 1979, column: 1, scope: !2592, inlinedAt: !4483)
!4505 = !DILocation(line: 2583, column: 5, scope: !4481)
!4506 = !DILocation(line: 2586, column: 16, scope: !4479)
!4507 = !DILocation(line: 2586, column: 9, scope: !4479)
!4508 = !DILocation(line: 2586, column: 48, scope: !4479)
!4509 = !DILocation(line: 2586, column: 27, scope: !4479)
!4510 = !DILocation(line: 2587, column: 10, scope: !4479)
!4511 = !DILocation(line: 2587, column: 28, scope: !4479)
!4512 = !DILocation(line: 2587, column: 36, scope: !4479)
!4513 = !DILocation(line: 2587, column: 20, scope: !4479)
!4514 = !DILocation(line: 2587, column: 62, scope: !4479)
!4515 = !DILocation(line: 2587, column: 55, scope: !4479)
!4516 = !DILocation(line: 2587, column: 53, scope: !4479)
!4517 = !DILocation(line: 2586, column: 9, scope: !417)
!4518 = !DILocation(line: 2589, column: 9, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 2588, column: 5)
!4520 = !DILocation(line: 2590, column: 27, scope: !4519)
!4521 = !DILocation(line: 2590, column: 9, scope: !4519)
!4522 = !DILocation(line: 2591, column: 5, scope: !4519)
!4523 = !DILocation(line: 2594, column: 16, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2594, column: 9)
!4525 = !DILocation(line: 2594, column: 27, scope: !4524)
!4526 = !DILocation(line: 2594, column: 9, scope: !417)
!4527 = !DILocation(line: 2596, column: 20, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 2594, column: 50)
!4529 = !DILocation(line: 2596, column: 39, scope: !4528)
!4530 = !DILocation(line: 2595, column: 9, scope: !4528)
!4531 = !DILocation(line: 2597, column: 13, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 2597, column: 13)
!4533 = !DILocation(line: 2597, column: 33, scope: !4532)
!4534 = !DILocation(line: 2597, column: 13, scope: !4528)
!4535 = !DILocation(line: 2598, column: 13, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 2597, column: 42)
!4537 = !DILocation(line: 2599, column: 9, scope: !4536)
!4538 = !DILocation(line: 2605, column: 16, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2605, column: 9)
!4540 = !DILocation(line: 2605, column: 9, scope: !4539)
!4541 = !DILocation(line: 2605, column: 37, scope: !4539)
!4542 = !DILocation(line: 2605, column: 30, scope: !4539)
!4543 = !DILocation(line: 2605, column: 27, scope: !4539)
!4544 = !DILocation(line: 2606, column: 26, scope: !4539)
!4545 = !DILocation(line: 2606, column: 32, scope: !4539)
!4546 = !DILocation(line: 2605, column: 9, scope: !417)
!4547 = !DILocation(line: 2159, column: 13, scope: !2023, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 2607, column: 9, scope: !4539)
!4549 = !DILocation(line: 2161, column: 9, scope: !2023, inlinedAt: !4548)
!4550 = !DILocation(line: 2162, column: 18, scope: !2029, inlinedAt: !4548)
!4551 = !DILocation(line: 2163, column: 9, scope: !2029, inlinedAt: !4548)
!4552 = !DILocation(line: 2164, column: 9, scope: !2029, inlinedAt: !4548)
!4553 = !DILocation(line: 2165, column: 9, scope: !2029, inlinedAt: !4548)
!4554 = !DILocation(line: 2166, column: 35, scope: !2029, inlinedAt: !4548)
!4555 = !DILocation(line: 2166, column: 9, scope: !2029, inlinedAt: !4548)
!4556 = !DILocation(line: 2167, column: 18, scope: !2029, inlinedAt: !4548)
!4557 = !DILocation(line: 2168, column: 5, scope: !2029, inlinedAt: !4548)
!4558 = !DILocation(line: 2169, column: 1, scope: !2023, inlinedAt: !4548)
!4559 = !DILocation(line: 2607, column: 9, scope: !4539)
!4560 = !DILocation(line: 2613, column: 5, scope: !417)
!4561 = !DILocation(line: 2615, column: 5, scope: !417)
!4562 = !DILocation(line: 2615, column: 11, scope: !417)
!4563 = !DILocation(line: 2618, column: 10, scope: !432)
!4564 = !DILocation(line: 2618, column: 42, scope: !432)
!4565 = !{!512, !484, i64 2372}
!4566 = !DILocation(line: 2618, column: 35, scope: !432)
!4567 = !DILocation(line: 2618, column: 33, scope: !432)
!4568 = !DILocation(line: 2618, column: 66, scope: !432)
!4569 = !DILocation(line: 2618, column: 71, scope: !432)
!4570 = !DILocation(line: 2619, column: 9, scope: !432)
!4571 = !DILocation(line: 2618, column: 9, scope: !417)
!4572 = !DILocation(line: 2626, column: 20, scope: !431)
!4573 = !DILocation(line: 2626, column: 13, scope: !431)
!4574 = !DILocation(line: 2626, column: 36, scope: !431)
!4575 = !DILocation(line: 2627, column: 20, scope: !431)
!4576 = !{!512, !485, i64 2944}
!4577 = !DILocation(line: 2627, column: 29, scope: !431)
!4578 = !{!4579, !486, i64 524376}
!4579 = !{!"clusterState", !485, i64 0, !483, i64 8, !484, i64 16, !484, i64 20, !485, i64 24, !485, i64 32, !471, i64 40, !471, i64 131112, !471, i64 262184, !471, i64 393256, !485, i64 524328, !486, i64 524336, !484, i64 524344, !484, i64 524348, !484, i64 524352, !483, i64 524360, !484, i64 524368, !486, i64 524376, !485, i64 524384, !486, i64 524392, !484, i64 524400, !483, i64 524408, !484, i64 524416, !471, i64 524424, !471, i64 524504, !486, i64 524584}
!4580 = !DILocation(line: 2627, column: 13, scope: !431)
!4581 = !DILocation(line: 2627, column: 36, scope: !431)
!4582 = !DILocation(line: 2628, column: 13, scope: !431)
!4583 = !DILocation(line: 2630, column: 13, scope: !431)
!4584 = !DILocation(line: 2631, column: 28, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 2630, column: 43)
!4586 = distinct !DILexicalBlock(scope: !431, file: !3, line: 2630, column: 13)
!4587 = !DILocation(line: 2631, column: 13, scope: !4585)
!4588 = !DILocation(line: 2631, column: 26, scope: !4585)
!4589 = !DILocation(line: 2632, column: 42, scope: !4585)
!4590 = !DILocation(line: 2632, column: 57, scope: !4585)
!4591 = !DILocation(line: 2632, column: 13, scope: !4585)
!4592 = !DILocation(line: 2634, column: 13, scope: !4585)
!4593 = !DILocation(line: 2635, column: 9, scope: !4585)
!4594 = !DILocation(line: 2636, column: 5, scope: !431)
!4595 = !DILocation(line: 2652, column: 23, scope: !417)
!4596 = !DILocation(line: 2613, column: 14, scope: !417)
!4597 = !DILocation(line: 2652, column: 5, scope: !417)
!4598 = !DILocation(line: 2653, column: 5, scope: !417)
!4599 = !DILocation(line: 2653, column: 17, scope: !417)
!4600 = !DILocation(line: 2614, column: 15, scope: !417)
!4601 = !DILocation(line: 2654, column: 29, scope: !434)
!4602 = !DILocation(line: 2654, column: 17, scope: !434)
!4603 = !DILocation(line: 2657, column: 21, scope: !434)
!4604 = !DILocation(line: 2657, column: 31, scope: !434)
!4605 = !DILocation(line: 2657, column: 64, scope: !434)
!4606 = !DILocation(line: 2658, column: 31, scope: !434)
!4607 = !DILocation(line: 2659, column: 21, scope: !434)
!4608 = !DILocation(line: 2659, column: 36, scope: !434)
!4609 = !DILocation(line: 2658, column: 62, scope: !434)
!4610 = !DILocation(line: 2661, column: 13, scope: !434)
!4611 = !DILocation(line: 2662, column: 30, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 2662, column: 17)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 2661, column: 25)
!4614 = distinct !DILexicalBlock(scope: !434, file: !3, line: 2661, column: 13)
!4615 = !DILocation(line: 2662, column: 17, scope: !4612)
!4616 = !DILocation(line: 2665, column: 9, scope: !4613)
!4617 = distinct !{!4617, !4598, !4618}
!4618 = !DILocation(line: 2666, column: 5, scope: !417)
!4619 = !DILocation(line: 2669, column: 9, scope: !438)
!4620 = !DILocation(line: 2669, column: 9, scope: !417)
!4621 = !DILocation(line: 2670, column: 9, scope: !437)
!4622 = !DILocation(line: 2670, column: 18, scope: !437)
!4623 = !DILocation(line: 2673, column: 9, scope: !437)
!4624 = !DILocation(line: 2674, column: 9, scope: !437)
!4625 = !DILocation(line: 2674, column: 21, scope: !437)
!4626 = !DILocation(line: 2671, column: 19, scope: !437)
!4627 = !DILocation(line: 2675, column: 33, scope: !441)
!4628 = !DILocation(line: 2675, column: 21, scope: !441)
!4629 = !DILocation(line: 2677, column: 24, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2677, column: 17)
!4631 = !DILocation(line: 2677, column: 34, scope: !4630)
!4632 = !DILocation(line: 2677, column: 17, scope: !441)
!4633 = distinct !{!4633, !4624, !4634}
!4634 = !DILocation(line: 2685, column: 9, scope: !437)
!4635 = !DILocation(line: 2678, column: 24, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2678, column: 17)
!4637 = !DILocation(line: 2678, column: 30, scope: !4636)
!4638 = !DILocation(line: 2678, column: 17, scope: !441)
!4639 = !DILocation(line: 2679, column: 25, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2679, column: 17)
!4641 = !DILocation(line: 2679, column: 43, scope: !4640)
!4642 = !DILocation(line: 2679, column: 34, scope: !4640)
!4643 = !DILocation(line: 2679, column: 67, scope: !4640)
!4644 = !DILocation(line: 2679, column: 60, scope: !4640)
!4645 = !DILocation(line: 2679, column: 58, scope: !4640)
!4646 = !DILocation(line: 2679, column: 17, scope: !441)
!4647 = !DILocation(line: 2682, column: 21, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 2680, column: 13)
!4649 = !DILocation(line: 2681, column: 17, scope: !4648)
!4650 = !DILocation(line: 2683, column: 17, scope: !4648)
!4651 = !DILocation(line: 2684, column: 13, scope: !4648)
!4652 = !DILocation(line: 0, scope: !4630)
!4653 = !DILocation(line: 2686, column: 5, scope: !438)
!4654 = !DILocation(line: 2686, column: 5, scope: !437)
!4655 = !DILocation(line: 2694, column: 9, scope: !444)
!4656 = !DILocation(line: 2694, column: 35, scope: !444)
!4657 = !DILocation(line: 2694, column: 50, scope: !444)
!4658 = !DILocation(line: 2694, column: 43, scope: !444)
!4659 = !DILocation(line: 2694, column: 40, scope: !444)
!4660 = !DILocation(line: 2695, column: 16, scope: !444)
!4661 = !DILocation(line: 2695, column: 9, scope: !444)
!4662 = !DILocation(line: 2695, column: 39, scope: !444)
!4663 = !DILocation(line: 2695, column: 50, scope: !444)
!4664 = !DILocation(line: 2697, column: 30, scope: !443)
!4665 = !DILocation(line: 2697, column: 48, scope: !443)
!4666 = !DILocation(line: 2697, column: 39, scope: !443)
!4667 = !DILocation(line: 2697, column: 16, scope: !443)
!4668 = !DILocation(line: 2699, column: 18, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !443, file: !3, line: 2699, column: 13)
!4670 = !DILocation(line: 2699, column: 13, scope: !443)
!4671 = !DILocation(line: 1034, column: 5, scope: !1715, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 2715, column: 13, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 2699, column: 52)
!4674 = !DILocation(line: 1035, column: 39, scope: !1715, inlinedAt: !4672)
!4675 = !DILocation(line: 1036, column: 1, scope: !1715, inlinedAt: !4672)
!4676 = !DILocation(line: 1042, column: 5, scope: !1721, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 2716, column: 13, scope: !4673)
!4678 = !DILocation(line: 1043, column: 40, scope: !1721, inlinedAt: !4677)
!4679 = !DILocation(line: 1044, column: 33, scope: !1721, inlinedAt: !4677)
!4680 = !DILocation(line: 1045, column: 1, scope: !1721, inlinedAt: !4677)
!4681 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 2717, column: 13, scope: !4673)
!4683 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !4682)
!4684 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !4682)
!4685 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !4682)
!4686 = !DILocation(line: 121, column: 1, scope: !556, inlinedAt: !4682)
!4687 = !DILocation(line: 2721, column: 30, scope: !4673)
!4688 = !{!512, !483, i64 2416}
!4689 = !DILocation(line: 2721, column: 17, scope: !4673)
!4690 = !DILocation(line: 2718, column: 13, scope: !4673)
!4691 = !DILocation(line: 2722, column: 9, scope: !4673)
!4692 = !DILocation(line: 2728, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2728, column: 9)
!4694 = !DILocation(line: 2723, column: 5, scope: !443)
!4695 = !DILocation(line: 2728, column: 35, scope: !4693)
!4696 = !DILocation(line: 2729, column: 16, scope: !4693)
!4697 = !DILocation(line: 2729, column: 26, scope: !4693)
!4698 = !DILocation(line: 2728, column: 40, scope: !4693)
!4699 = !DILocation(line: 2730, column: 9, scope: !4693)
!4700 = !DILocation(line: 2730, column: 50, scope: !4693)
!4701 = !DILocation(line: 2728, column: 9, scope: !417)
!4702 = !DILocation(line: 2373, column: 22, scope: !1605, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 2732, column: 9, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 2731, column: 5)
!4705 = !DILocation(line: 2373, column: 5, scope: !1605, inlinedAt: !4703)
!4706 = !DILocation(line: 2374, column: 24, scope: !1605, inlinedAt: !4703)
!4707 = !DILocation(line: 2374, column: 5, scope: !1605, inlinedAt: !4703)
!4708 = !DILocation(line: 2375, column: 36, scope: !1605, inlinedAt: !4703)
!4709 = !DILocation(line: 2375, column: 34, scope: !1605, inlinedAt: !4703)
!4710 = !DILocation(line: 2376, column: 1, scope: !1605, inlinedAt: !4703)
!4711 = !DILocation(line: 2733, column: 5, scope: !4704)
!4712 = !DILocation(line: 2741, column: 16, scope: !447)
!4713 = !DILocation(line: 2741, column: 46, scope: !447)
!4714 = !DILocation(line: 2741, column: 36, scope: !447)
!4715 = !DILocation(line: 2742, column: 22, scope: !446)
!4716 = !DILocation(line: 2743, column: 13, scope: !446)
!4717 = !DILocation(line: 2744, column: 13, scope: !446)
!4718 = !DILocation(line: 2746, column: 9, scope: !446)
!4719 = !DILocation(line: 2748, column: 27, scope: !446)
!4720 = !DILocation(line: 2746, column: 18, scope: !446)
!4721 = !DILocation(line: 2748, column: 9, scope: !446)
!4722 = !DILocation(line: 2749, column: 9, scope: !446)
!4723 = !DILocation(line: 2749, column: 21, scope: !446)
!4724 = !DILocation(line: 2745, column: 19, scope: !446)
!4725 = !DILocation(line: 2760, column: 28, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !446, file: !3, line: 2760, column: 13)
!4727 = !DILocation(line: 2750, column: 33, scope: !454)
!4728 = !DILocation(line: 2750, column: 21, scope: !454)
!4729 = !DILocation(line: 2751, column: 24, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !454, file: !3, line: 2751, column: 17)
!4731 = !DILocation(line: 2751, column: 34, scope: !4730)
!4732 = !DILocation(line: 2751, column: 17, scope: !454)
!4733 = !DILocation(line: 2752, column: 31, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 2751, column: 68)
!4735 = !DILocation(line: 2752, column: 49, scope: !4734)
!4736 = !DILocation(line: 2752, column: 40, scope: !4734)
!4737 = !DILocation(line: 2742, column: 16, scope: !446)
!4738 = !DILocation(line: 2753, column: 26, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 2753, column: 21)
!4740 = !DILocation(line: 2753, column: 21, scope: !4734)
!4741 = !DILocation(line: 2753, column: 38, scope: !4739)
!4742 = !DILocation(line: 0, scope: !446)
!4743 = !DILocation(line: 2754, column: 31, scope: !4734)
!4744 = !DILocation(line: 2755, column: 27, scope: !4734)
!4745 = !DILocation(line: 0, scope: !4734)
!4746 = !DILocation(line: 2756, column: 54, scope: !4734)
!4747 = !DILocation(line: 2757, column: 13, scope: !4734)
!4748 = distinct !{!4748, !4722, !4749}
!4749 = !DILocation(line: 2758, column: 9, scope: !446)
!4750 = !DILocation(line: 2760, column: 13, scope: !4726)
!4751 = !DILocation(line: 2761, column: 22, scope: !4726)
!4752 = !DILocation(line: 2761, column: 15, scope: !4726)
!4753 = !DILocation(line: 2761, column: 41, scope: !4726)
!4754 = !DILocation(line: 2762, column: 32, scope: !4726)
!4755 = !DILocation(line: 2762, column: 25, scope: !4726)
!4756 = !DILocation(line: 2762, column: 23, scope: !4726)
!4757 = !DILocation(line: 2760, column: 13, scope: !446)
!4758 = !DILocation(line: 2767, column: 13, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 2763, column: 9)
!4760 = !DILocation(line: 2768, column: 9, scope: !4759)
!4761 = !DILocation(line: 2769, column: 5, scope: !447)
!4762 = !DILocation(line: 2769, column: 5, scope: !446)
!4763 = !DILocation(line: 2772, column: 5, scope: !417)
!4764 = !DILocation(line: 2773, column: 27, scope: !417)
!4765 = !DILocation(line: 2774, column: 1, scope: !417)
