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
  %10 = call i32 @anetPeerToString(i32 %9, i8* nonnull %3, i64 46, i32* null) #10, !dbg !487
  %11 = icmp eq i32 %10, -1, !dbg !488
  br i1 %11, label %25, label %12, !dbg !489

; <label>:12:                                     ; preds = %7
  %13 = load i8, i8* %4, align 8, !dbg !490, !tbaa !470
  %14 = icmp eq i8 %13, 0, !dbg !493
  br i1 %14, label %17, label %15, !dbg !494

; <label>:15:                                     ; preds = %1, %12
  %16 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i64 46) #10, !dbg !495
  br label %17, !dbg !495

; <label>:17:                                     ; preds = %12, %15
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35, !dbg !496
  %19 = load i32, i32* %18, align 4, !dbg !496, !tbaa !498
  %20 = icmp eq i32 %19, 0, !dbg !499
  br i1 %20, label %23, label %21, !dbg !500

; <label>:21:                                     ; preds = %17
  %22 = call i32 @anetFormatAddr(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* nonnull %3, i32 %19) #10, !dbg !501
  br label %29, !dbg !501

; <label>:23:                                     ; preds = %17
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* nonnull %3) #10, !dbg !502
  br label %29

; <label>:25:                                     ; preds = %7
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !503
  %27 = load i64, i64* %26, align 8, !dbg !503, !tbaa !505
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %27) #10, !dbg !506
  br label %29

; <label>:29:                                     ; preds = %21, %23, %25
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %3) #7, !dbg !507
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
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #10, !dbg !510
  tail call void @_exit(i32 1) #11, !dbg !510
  unreachable, !dbg !510

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !517, !tbaa !518
  %6 = tail call i8* @zmalloc(i64 %5) #10, !dbg !519
  store i8* %6, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !520, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !521, !tbaa !522
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !523, !tbaa !524
  %8 = add nsw i64 %7, 1, !dbg !525
  store i64 %8, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !526, !tbaa !527
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
  tail call void @zfree(i8* nonnull %7) #10, !dbg !545
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !547, !tbaa !518
  %11 = tail call i8* @zmalloc(i64 %10) #10, !dbg !548
  store i8* %11, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !549, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !550, !tbaa !522
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !551, !tbaa !524
  %13 = add nsw i64 %12, 1, !dbg !552
  store i64 %13, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !553, !tbaa !527
  br label %14, !dbg !554

; <label>:14:                                     ; preds = %6, %1, %9
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
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #10, !dbg !557
  tail call void @_exit(i32 1) #11, !dbg !557
  unreachable, !dbg !557

; <label>:6:                                      ; preds = %0
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !561, !tbaa !511
  tail call void @zfree(i8* %7) #10, !dbg !562
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !563, !tbaa !511
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
  %22 = tail call i8* @memcpy(i8* %21, i8* %15, i64 %19) #10, !dbg !594
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
  %12 = call i32 @ll2string(i8* nonnull %3, i64 21, i64 %11) #10, !dbg !640
  %13 = sext i32 %12 to i64, !dbg !640
  br label %40, !dbg !643

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %8, align 8, !dbg !644, !tbaa !638
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !656
  %17 = load i8, i8* %16, align 1, !dbg !656, !tbaa !470
  %18 = trunc i8 %17 to i3, !dbg !658
  switch i3 %18, label %46 [
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

; <label>:40:                                     ; preds = %36, %31, %26, %22, %19, %9
  %41 = phi i8* [ %3, %9 ], [ %15, %19 ], [ %15, %22 ], [ %15, %26 ], [ %15, %31 ], [ %15, %36 ], !dbg !633
  %42 = phi i64 [ %13, %9 ], [ %21, %19 ], [ %25, %22 ], [ %30, %26 ], [ %35, %31 ], [ %39, %36 ], !dbg !633
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !682, !tbaa !524
  %44 = add i64 %43, %42, !dbg !682
  store i64 %44, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !682, !tbaa !524
  %45 = icmp eq i64 %42, 0, !dbg !683
  br i1 %45, label %46, label %49, !dbg !683

; <label>:46:                                     ; preds = %14, %40
  %47 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !684, !tbaa !582
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !685, !tbaa !518
  br label %73, !dbg !683

; <label>:49:                                     ; preds = %40
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !686, !tbaa !518
  %51 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !687, !tbaa !586
  br label %52, !dbg !686

; <label>:52:                                     ; preds = %52, %49
  %53 = phi i64 [ %67, %52 ], [ %51, %49 ], !dbg !687
  %54 = phi i64 [ %65, %52 ], [ %50, %49 ], !dbg !686
  %55 = phi i8* [ %69, %52 ], [ %41, %49 ]
  %56 = phi i64 [ %68, %52 ], [ %42, %49 ]
  %57 = sub nsw i64 %54, %53, !dbg !688
  %58 = icmp ugt i64 %57, %56, !dbg !690
  %59 = select i1 %58, i64 %56, i64 %57, !dbg !691
  %60 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !692, !tbaa !511
  %61 = getelementptr inbounds i8, i8* %60, i64 %53, !dbg !693
  %62 = call i8* @memcpy(i8* %61, i8* %55, i64 %59) #10, !dbg !694
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !695, !tbaa !586
  %64 = add i64 %63, %59, !dbg !695
  %65 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !696, !tbaa !518
  %66 = icmp eq i64 %64, %65, !dbg !697
  %67 = select i1 %66, i64 0, i64 %64, !dbg !698
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !699
  %68 = sub i64 %56, %59, !dbg !700
  %69 = getelementptr inbounds i8, i8* %55, i64 %59, !dbg !701
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !702, !tbaa !582
  %71 = add i64 %70, %59, !dbg !702
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !702, !tbaa !582
  %72 = icmp eq i64 %68, 0, !dbg !683
  br i1 %72, label %73, label %52, !dbg !683, !llvm.loop !604

; <label>:73:                                     ; preds = %52, %46
  %74 = phi i64 [ %48, %46 ], [ %65, %52 ], !dbg !685
  %75 = phi i64 [ %47, %46 ], [ %71, %52 ], !dbg !684
  %76 = icmp sgt i64 %75, %74, !dbg !703
  br i1 %76, label %77, label %78, !dbg !704

; <label>:77:                                     ; preds = %73
  store i64 %74, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !705, !tbaa !582
  br label %78, !dbg !706

; <label>:78:                                     ; preds = %73, %77
  %79 = phi i64 [ %74, %77 ], [ %75, %73 ], !dbg !707
  %80 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !708, !tbaa !524
  %81 = sub i64 1, %79, !dbg !709
  %82 = add i64 %81, %80, !dbg !710
  store i64 %82, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !711, !tbaa !527
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #7, !dbg !712
  ret void, !dbg !712
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !713 {
  %5 = alloca %struct.listIter, align 8
  %6 = alloca [21 x i8], align 16
  %7 = alloca [24 x i8], align 16
  %8 = bitcast %struct.listIter* %5 to i8*, !dbg !750
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !750
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !751
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #7, !dbg !751
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !753, !tbaa !755
  %11 = icmp eq i8* %10, null, !dbg !756
  br i1 %11, label %12, label %236, !dbg !757

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !758, !tbaa !511
  %14 = icmp eq i8* %13, null, !dbg !760
  br i1 %14, label %15, label %20, !dbg !761

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !762
  %17 = load i64, i64* %16, align 8, !dbg !762, !tbaa !559
  %18 = icmp eq i64 %17, 0, !dbg !763
  br i1 %18, label %236, label %19, !dbg !764

; <label>:19:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 192) #10, !dbg !765
  tail call void @_exit(i32 1) #11, !dbg !765
  unreachable, !dbg !765

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !766, !tbaa !767
  %22 = icmp eq i32 %21, %1, !dbg !768
  br i1 %22, label %23, label %24, !dbg !769

; <label>:23:                                     ; preds = %20
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !770, !tbaa !767
  br label %61, !dbg !771

; <label>:24:                                     ; preds = %20
  %25 = icmp ult i32 %1, 10, !dbg !772
  %26 = sext i32 %1 to i64, !dbg !773
  br i1 %25, label %27, label %30, !dbg !772

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 46, i64 %26, !dbg !774
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !774, !tbaa !776
  br label %37, !dbg !778

; <label>:30:                                     ; preds = %24
  %31 = call i32 @ll2string(i8* nonnull %9, i64 21, i64 %26) #10, !dbg !779
  %32 = call i8* @sdsempty() #10, !dbg !781
  %33 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %31, i8* nonnull %9) #10, !dbg !782
  %34 = call %struct.redisObject* @createObject(i32 0, i8* %33) #10, !dbg !783
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !784, !tbaa !511
  %36 = icmp eq i8* %35, null, !dbg !786
  br i1 %36, label %39, label %37, !dbg !778

; <label>:37:                                     ; preds = %27, %30
  %38 = phi %struct.redisObject* [ %29, %27 ], [ %34, %30 ]
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %38) #12, !dbg !787
  br label %39, !dbg !787

; <label>:39:                                     ; preds = %30, %37
  %40 = phi %struct.redisObject* [ %34, %30 ], [ %38, %37 ]
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #10, !dbg !789
  %41 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !790
  %42 = icmp eq %struct.listNode* %41, null, !dbg !792
  br i1 %42, label %55, label %43, !dbg !792

; <label>:43:                                     ; preds = %39, %52
  %44 = phi %struct.listNode* [ %53, %52 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.listNode, %struct.listNode* %44, i64 0, i32 2, !dbg !793
  %46 = bitcast i8** %45 to %struct.client**, !dbg !793
  %47 = load %struct.client*, %struct.client** %46, align 8, !dbg !793, !tbaa !794
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i64 0, i32 23, !dbg !797
  %49 = load i32, i32* %48, align 8, !dbg !797, !tbaa !799
  %50 = icmp eq i32 %49, 6, !dbg !800
  br i1 %50, label %52, label %51, !dbg !801, !llvm.loop !802

; <label>:51:                                     ; preds = %43
  call void @addReply(%struct.client* %47, %struct.redisObject* %40) #10, !dbg !804
  br label %52, !dbg !803

; <label>:52:                                     ; preds = %43, %51
  %53 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !790
  %54 = icmp eq %struct.listNode* %53, null, !dbg !792
  br i1 %54, label %55, label %43, !dbg !792

; <label>:55:                                     ; preds = %52, %39
  %56 = icmp ugt i32 %1, 9, !dbg !805
  br i1 %56, label %57, label %58, !dbg !805

; <label>:57:                                     ; preds = %55
  call void @decrRefCount(%struct.redisObject* %40) #10, !dbg !807
  br label %58, !dbg !807

; <label>:58:                                     ; preds = %57, %55
  %59 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !808, !tbaa !511
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !770, !tbaa !767
  %60 = icmp eq i8* %59, null, !dbg !809
  br i1 %60, label %211, label %61, !dbg !771

; <label>:61:                                     ; preds = %23, %58
  %62 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !810
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %62) #7, !dbg !810
  store i8 42, i8* %62, align 16, !dbg !812, !tbaa !470
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 1, !dbg !813
  %64 = sext i32 %3 to i64, !dbg !814
  %65 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %64) #10, !dbg !815
  %66 = add nsw i32 %65, 1, !dbg !817
  %67 = sext i32 %66 to i64, !dbg !818
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %67, !dbg !818
  store i8 13, i8* %68, align 1, !dbg !819, !tbaa !470
  %69 = add nsw i32 %65, 2, !dbg !820
  %70 = sext i32 %69 to i64, !dbg !821
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %70, !dbg !821
  store i8 10, i8* %71, align 1, !dbg !822, !tbaa !470
  %72 = add nsw i32 %65, 3, !dbg !823
  %73 = sext i32 %72 to i64, !dbg !824
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !829, !tbaa !524
  %75 = add i64 %74, %73, !dbg !829
  store i64 %75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !829, !tbaa !524
  %76 = icmp eq i32 %72, 0, !dbg !830
  br i1 %76, label %77, label %80, !dbg !830

; <label>:77:                                     ; preds = %61
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !831, !tbaa !582
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !832, !tbaa !518
  br label %104, !dbg !830

; <label>:80:                                     ; preds = %61
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !833, !tbaa !518
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !834, !tbaa !586
  br label %83, !dbg !833

; <label>:83:                                     ; preds = %83, %80
  %84 = phi i64 [ %98, %83 ], [ %82, %80 ], !dbg !834
  %85 = phi i64 [ %96, %83 ], [ %81, %80 ], !dbg !833
  %86 = phi i8* [ %100, %83 ], [ %62, %80 ]
  %87 = phi i64 [ %99, %83 ], [ %73, %80 ]
  %88 = sub nsw i64 %85, %84, !dbg !835
  %89 = icmp ugt i64 %88, %87, !dbg !837
  %90 = select i1 %89, i64 %87, i64 %88, !dbg !838
  %91 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !839, !tbaa !511
  %92 = getelementptr inbounds i8, i8* %91, i64 %84, !dbg !840
  %93 = call i8* @memcpy(i8* %92, i8* %86, i64 %90) #10, !dbg !841
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !842, !tbaa !586
  %95 = add i64 %94, %90, !dbg !842
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !843, !tbaa !518
  %97 = icmp eq i64 %95, %96, !dbg !844
  %98 = select i1 %97, i64 0, i64 %95, !dbg !845
  store i64 %98, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !846
  %99 = sub i64 %87, %90, !dbg !847
  %100 = getelementptr inbounds i8, i8* %86, i64 %90, !dbg !848
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !849, !tbaa !582
  %102 = add i64 %101, %90, !dbg !849
  store i64 %102, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !849, !tbaa !582
  %103 = icmp eq i64 %99, 0, !dbg !830
  br i1 %103, label %104, label %83, !dbg !830, !llvm.loop !604

; <label>:104:                                    ; preds = %83, %77
  %105 = phi i64 [ %79, %77 ], [ %96, %83 ], !dbg !832
  %106 = phi i64 [ %78, %77 ], [ %102, %83 ], !dbg !831
  %107 = icmp sgt i64 %106, %105, !dbg !850
  br i1 %107, label %108, label %109, !dbg !851

; <label>:108:                                    ; preds = %104
  store i64 %105, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !852, !tbaa !582
  br label %109, !dbg !853

; <label>:109:                                    ; preds = %104, %108
  %110 = phi i64 [ %105, %108 ], [ %106, %104 ], !dbg !854
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !855, !tbaa !524
  %112 = sub i64 1, %110, !dbg !856
  %113 = add i64 %112, %111, !dbg !857
  store i64 %113, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !858, !tbaa !527
  %114 = icmp sgt i32 %3, 0, !dbg !860
  br i1 %114, label %115, label %210, !dbg !861

; <label>:115:                                    ; preds = %109
  %116 = zext i32 %3 to i64
  br label %117, !dbg !862

; <label>:117:                                    ; preds = %203, %115
  %118 = phi i64 [ 0, %115 ], [ %208, %203 ]
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %118, !dbg !862
  %120 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !862, !tbaa !776
  %121 = call i64 @stringObjectLen(%struct.redisObject* %120) #10, !dbg !863
  store i8 36, i8* %62, align 16, !dbg !865, !tbaa !470
  %122 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %121) #10, !dbg !866
  %123 = add nsw i32 %122, 1, !dbg !867
  %124 = sext i32 %123 to i64, !dbg !868
  %125 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %124, !dbg !868
  store i8 13, i8* %125, align 1, !dbg !869, !tbaa !470
  %126 = add nsw i32 %122, 2, !dbg !870
  %127 = sext i32 %126 to i64, !dbg !871
  %128 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %127, !dbg !871
  store i8 10, i8* %128, align 1, !dbg !872, !tbaa !470
  %129 = add nsw i32 %122, 3, !dbg !873
  %130 = sext i32 %129 to i64, !dbg !874
  %131 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !879, !tbaa !524
  %132 = add i64 %131, %130, !dbg !879
  store i64 %132, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !879, !tbaa !524
  %133 = icmp eq i32 %129, 0, !dbg !880
  br i1 %133, label %134, label %137, !dbg !880

; <label>:134:                                    ; preds = %117
  %135 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !881, !tbaa !582
  %136 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !882, !tbaa !518
  br label %161, !dbg !880

; <label>:137:                                    ; preds = %117
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !883, !tbaa !518
  %139 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !884, !tbaa !586
  br label %140, !dbg !883

; <label>:140:                                    ; preds = %140, %137
  %141 = phi i64 [ %155, %140 ], [ %139, %137 ], !dbg !884
  %142 = phi i64 [ %153, %140 ], [ %138, %137 ], !dbg !883
  %143 = phi i8* [ %157, %140 ], [ %62, %137 ]
  %144 = phi i64 [ %156, %140 ], [ %130, %137 ]
  %145 = sub nsw i64 %142, %141, !dbg !885
  %146 = icmp ugt i64 %145, %144, !dbg !887
  %147 = select i1 %146, i64 %144, i64 %145, !dbg !888
  %148 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !889, !tbaa !511
  %149 = getelementptr inbounds i8, i8* %148, i64 %141, !dbg !890
  %150 = call i8* @memcpy(i8* %149, i8* %143, i64 %147) #10, !dbg !891
  %151 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !892, !tbaa !586
  %152 = add i64 %151, %147, !dbg !892
  %153 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !893, !tbaa !518
  %154 = icmp eq i64 %152, %153, !dbg !894
  %155 = select i1 %154, i64 0, i64 %152, !dbg !895
  store i64 %155, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !896
  %156 = sub i64 %144, %147, !dbg !897
  %157 = getelementptr inbounds i8, i8* %143, i64 %147, !dbg !898
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !899, !tbaa !582
  %159 = add i64 %158, %147, !dbg !899
  store i64 %159, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !899, !tbaa !582
  %160 = icmp eq i64 %156, 0, !dbg !880
  br i1 %160, label %161, label %140, !dbg !880, !llvm.loop !604

; <label>:161:                                    ; preds = %140, %134
  %162 = phi i64 [ %136, %134 ], [ %153, %140 ], !dbg !882
  %163 = phi i64 [ %135, %134 ], [ %159, %140 ], !dbg !881
  %164 = icmp sgt i64 %163, %162, !dbg !900
  br i1 %164, label %165, label %166, !dbg !901

; <label>:165:                                    ; preds = %161
  store i64 %162, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !902, !tbaa !582
  br label %166, !dbg !903

; <label>:166:                                    ; preds = %161, %165
  %167 = phi i64 [ %162, %165 ], [ %163, %161 ], !dbg !904
  %168 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !905, !tbaa !524
  %169 = sub i64 1, %167, !dbg !906
  %170 = add i64 %169, %168, !dbg !907
  store i64 %170, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !908, !tbaa !527
  %171 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !909, !tbaa !776
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %171) #12, !dbg !910
  %172 = sext i32 %122 to i64, !dbg !911
  %173 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %172, !dbg !911
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !912
  %175 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !917, !tbaa !524
  %176 = add i64 %175, 2, !dbg !917
  store i64 %176, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !917, !tbaa !524
  %177 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !918, !tbaa !518
  %178 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !919, !tbaa !586
  br label %179, !dbg !918

; <label>:179:                                    ; preds = %179, %166
  %180 = phi i64 [ %194, %179 ], [ %178, %166 ], !dbg !919
  %181 = phi i64 [ %192, %179 ], [ %177, %166 ], !dbg !918
  %182 = phi i8* [ %196, %179 ], [ %174, %166 ]
  %183 = phi i64 [ %195, %179 ], [ 2, %166 ]
  %184 = sub nsw i64 %181, %180, !dbg !920
  %185 = icmp ugt i64 %184, %183, !dbg !922
  %186 = select i1 %185, i64 %183, i64 %184, !dbg !923
  %187 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !924, !tbaa !511
  %188 = getelementptr inbounds i8, i8* %187, i64 %180, !dbg !925
  %189 = call i8* @memcpy(i8* %188, i8* %182, i64 %186) #10, !dbg !926
  %190 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !927, !tbaa !586
  %191 = add i64 %190, %186, !dbg !927
  %192 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !928, !tbaa !518
  %193 = icmp eq i64 %191, %192, !dbg !929
  %194 = select i1 %193, i64 0, i64 %191, !dbg !930
  store i64 %194, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !931
  %195 = sub i64 %183, %186, !dbg !932
  %196 = getelementptr inbounds i8, i8* %182, i64 %186, !dbg !933
  %197 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !934, !tbaa !582
  %198 = add i64 %197, %186, !dbg !934
  store i64 %198, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !934, !tbaa !582
  %199 = icmp eq i64 %195, 0, !dbg !935
  br i1 %199, label %200, label %179, !dbg !935, !llvm.loop !604

; <label>:200:                                    ; preds = %179
  %201 = icmp sgt i64 %198, %192, !dbg !936
  br i1 %201, label %202, label %203, !dbg !937

; <label>:202:                                    ; preds = %200
  store i64 %192, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !938, !tbaa !582
  br label %203, !dbg !939

; <label>:203:                                    ; preds = %200, %202
  %204 = phi i64 [ %192, %202 ], [ %198, %200 ], !dbg !940
  %205 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !941, !tbaa !524
  %206 = sub i64 1, %204, !dbg !942
  %207 = add i64 %206, %205, !dbg !943
  store i64 %207, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !944, !tbaa !527
  %208 = add nuw nsw i64 %118, 1, !dbg !945
  %209 = icmp eq i64 %208, %116, !dbg !860
  br i1 %209, label %210, label %117, !dbg !861, !llvm.loop !946

; <label>:210:                                    ; preds = %203, %109
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %62) #7, !dbg !948
  br label %211, !dbg !949

; <label>:211:                                    ; preds = %58, %210
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #10, !dbg !950
  %212 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !951
  %213 = icmp eq %struct.listNode* %212, null, !dbg !952
  br i1 %213, label %236, label %214, !dbg !952

; <label>:214:                                    ; preds = %211
  %215 = sext i32 %3 to i64
  %216 = icmp sgt i32 %3, 0
  %217 = zext i32 %3 to i64
  br label %218, !dbg !952

; <label>:218:                                    ; preds = %214, %233
  %219 = phi %struct.listNode* [ %212, %214 ], [ %234, %233 ]
  %220 = getelementptr inbounds %struct.listNode, %struct.listNode* %219, i64 0, i32 2, !dbg !953
  %221 = bitcast i8** %220 to %struct.client**, !dbg !953
  %222 = load %struct.client*, %struct.client** %221, align 8, !dbg !953, !tbaa !794
  %223 = getelementptr inbounds %struct.client, %struct.client* %222, i64 0, i32 23, !dbg !955
  %224 = load i32, i32* %223, align 8, !dbg !955, !tbaa !799
  %225 = icmp eq i32 %224, 6, !dbg !957
  br i1 %225, label %233, label %226, !dbg !958, !llvm.loop !959

; <label>:226:                                    ; preds = %218
  call void @addReplyMultiBulkLen(%struct.client* %222, i64 %215) #10, !dbg !961
  br i1 %216, label %227, label %233, !dbg !962

; <label>:227:                                    ; preds = %226, %227
  %228 = phi i64 [ %231, %227 ], [ 0, %226 ]
  %229 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %228, !dbg !964
  %230 = load %struct.redisObject*, %struct.redisObject** %229, align 8, !dbg !964, !tbaa !776
  call void @addReplyBulk(%struct.client* %222, %struct.redisObject* %230) #10, !dbg !966
  %231 = add nuw nsw i64 %228, 1, !dbg !967
  %232 = icmp eq i64 %231, %217, !dbg !968
  br i1 %232, label %233, label %227, !dbg !962, !llvm.loop !969

; <label>:233:                                    ; preds = %227, %226, %218
  %234 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !951
  %235 = icmp eq %struct.listNode* %234, null, !dbg !952
  br i1 %235, label %236, label %218, !dbg !952

; <label>:236:                                    ; preds = %233, %211, %15, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #7, !dbg !971
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !971
  ret void, !dbg !971
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
define dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #0 !dbg !972 {
  %4 = alloca %struct.listIter, align 8
  %5 = bitcast %struct.listIter* %4 to i8*, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !986
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !987, !tbaa !511
  %7 = icmp eq i8* %6, null, !dbg !989
  br i1 %7, label %51, label %8, !dbg !990

; <label>:8:                                      ; preds = %3
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !995, !tbaa !524
  %10 = add i64 %9, %2, !dbg !995
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !995, !tbaa !524
  %11 = icmp eq i64 %2, 0, !dbg !996
  br i1 %11, label %12, label %15, !dbg !996

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !997, !tbaa !582
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !998, !tbaa !518
  br label %41, !dbg !996

; <label>:15:                                     ; preds = %8
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !999, !tbaa !518
  %17 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1000, !tbaa !586
  br label %18, !dbg !999

; <label>:18:                                     ; preds = %38, %15
  %19 = phi i8* [ %40, %38 ], [ %6, %15 ], !dbg !1001
  %20 = phi i64 [ %33, %38 ], [ %17, %15 ], !dbg !1000
  %21 = phi i64 [ %31, %38 ], [ %16, %15 ], !dbg !999
  %22 = phi i8* [ %39, %38 ], [ %1, %15 ]
  %23 = phi i64 [ %34, %38 ], [ %2, %15 ]
  %24 = sub nsw i64 %21, %20, !dbg !1002
  %25 = icmp ugt i64 %24, %23, !dbg !1004
  %26 = select i1 %25, i64 %23, i64 %24, !dbg !1005
  %27 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !1006
  %28 = tail call i8* @memcpy(i8* %27, i8* %22, i64 %26) #10, !dbg !1007
  %29 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1008, !tbaa !586
  %30 = add i64 %29, %26, !dbg !1008
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1009, !tbaa !518
  %32 = icmp eq i64 %30, %31, !dbg !1010
  %33 = select i1 %32, i64 0, i64 %30, !dbg !1011
  store i64 %33, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1012
  %34 = sub i64 %23, %26, !dbg !1013
  %35 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1014, !tbaa !582
  %36 = add i64 %35, %26, !dbg !1014
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1014, !tbaa !582
  %37 = icmp eq i64 %34, 0, !dbg !996
  br i1 %37, label %41, label %38, !dbg !996, !llvm.loop !604

; <label>:38:                                     ; preds = %18
  %39 = getelementptr inbounds i8, i8* %22, i64 %26, !dbg !1015
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1001, !tbaa !511
  br label %18, !dbg !996

; <label>:41:                                     ; preds = %18, %12
  %42 = phi i64 [ %14, %12 ], [ %31, %18 ], !dbg !998
  %43 = phi i64 [ %13, %12 ], [ %36, %18 ], !dbg !997
  %44 = icmp sgt i64 %43, %42, !dbg !1016
  br i1 %44, label %45, label %46, !dbg !1017

; <label>:45:                                     ; preds = %41
  store i64 %42, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1018, !tbaa !582
  br label %46, !dbg !1019

; <label>:46:                                     ; preds = %41, %45
  %47 = phi i64 [ %42, %45 ], [ %43, %41 ], !dbg !1020
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1021, !tbaa !524
  %49 = sub i64 1, %47, !dbg !1022
  %50 = add i64 %49, %48, !dbg !1023
  store i64 %50, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1024, !tbaa !527
  br label %51, !dbg !1025

; <label>:51:                                     ; preds = %3, %46
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %4) #10, !dbg !1027
  %52 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #10, !dbg !1028
  %53 = icmp eq %struct.listNode* %52, null, !dbg !1030
  br i1 %53, label %66, label %54, !dbg !1030

; <label>:54:                                     ; preds = %51, %63
  %55 = phi %struct.listNode* [ %64, %63 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.listNode, %struct.listNode* %55, i64 0, i32 2, !dbg !1031
  %57 = bitcast i8** %56 to %struct.client**, !dbg !1031
  %58 = load %struct.client*, %struct.client** %57, align 8, !dbg !1031, !tbaa !794
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 23, !dbg !1033
  %60 = load i32, i32* %59, align 8, !dbg !1033, !tbaa !799
  %61 = icmp eq i32 %60, 6, !dbg !1035
  br i1 %61, label %63, label %62, !dbg !1036, !llvm.loop !1037

; <label>:62:                                     ; preds = %54
  call void @addReplyString(%struct.client* %58, i8* %1, i64 %2) #10, !dbg !1039
  br label %63, !dbg !1038

; <label>:63:                                     ; preds = %54, %62
  %64 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #10, !dbg !1028
  %65 = icmp eq %struct.listNode* %64, null, !dbg !1030
  br i1 %65, label %66, label %54, !dbg !1030

; <label>:66:                                     ; preds = %63, %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1040
  ret void, !dbg !1040
}

; Function Attrs: noredzone
declare dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedMonitors(%struct.client*, %struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1041 {
  %6 = alloca %struct.listIter, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = bitcast %struct.listIter* %6 to i8*, !dbg !1068
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1068
  %9 = tail call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1069
  %10 = bitcast %struct.timeval* %7 to i8*, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1071
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #10, !dbg !1073
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0, !dbg !1074
  %13 = load i64, i64* %12, align 8, !dbg !1074, !tbaa !1075
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1, !dbg !1077
  %15 = load i64, i64* %14, align 8, !dbg !1077, !tbaa !1078
  %16 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %13, i64 %15) #10, !dbg !1079
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1080
  %18 = load i32, i32* %17, align 8, !dbg !1080, !tbaa !1082
  %19 = and i32 %18, 256, !dbg !1083
  %20 = icmp eq i32 %19, 0, !dbg !1083
  br i1 %20, label %23, label %21, !dbg !1084

; <label>:21:                                     ; preds = %5
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %2) #10, !dbg !1085
  br label %32, !dbg !1087

; <label>:23:                                     ; preds = %5
  %24 = and i32 %18, 2048, !dbg !1088
  %25 = icmp eq i32 %24, 0, !dbg !1088
  br i1 %25, label %29, label %26, !dbg !1090

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !1091, !tbaa !1093
  %28 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %2, i8* %27) #10, !dbg !1094
  br label %32, !dbg !1095

; <label>:29:                                     ; preds = %23
  %30 = call i8* @getClientPeerId(%struct.client* nonnull %0) #10, !dbg !1096
  %31 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %2, i8* %30) #10, !dbg !1098
  br label %32

; <label>:32:                                     ; preds = %26, %29, %21
  %33 = phi i8* [ %22, %21 ], [ %28, %26 ], [ %31, %29 ], !dbg !1099
  %34 = icmp sgt i32 %4, 0, !dbg !1101
  br i1 %34, label %35, label %90, !dbg !1104

; <label>:35:                                     ; preds = %32
  %36 = add nsw i32 %4, -1
  %37 = zext i32 %36 to i64, !dbg !1104
  %38 = zext i32 %4 to i64
  br label %39, !dbg !1104

; <label>:39:                                     ; preds = %86, %35
  %40 = phi i64 [ 0, %35 ], [ %88, %86 ]
  %41 = phi i8* [ %33, %35 ], [ %87, %86 ]
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 %40, !dbg !1105
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1105, !tbaa !776
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 0, !dbg !1108
  %45 = load i32, i32* %44, align 8, !dbg !1108
  %46 = and i32 %45, 240, !dbg !1108
  %47 = icmp eq i32 %46, 16, !dbg !1109
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1110
  %49 = load i8*, i8** %48, align 8, !dbg !1110, !tbaa !638
  br i1 %47, label %50, label %53, !dbg !1112

; <label>:50:                                     ; preds = %39
  %51 = ptrtoint i8* %49 to i64, !dbg !1113
  %52 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 %51) #10, !dbg !1115
  br label %81, !dbg !1116

; <label>:53:                                     ; preds = %39
  %54 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !1119
  %55 = load i8, i8* %54, align 1, !dbg !1119, !tbaa !470
  %56 = trunc i8 %55 to i3, !dbg !1121
  switch i3 %56, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !1121

; <label>:57:                                     ; preds = %53
  %58 = lshr i8 %55, 3, !dbg !1122
  %59 = zext i8 %58 to i64, !dbg !1122
  br label %78, !dbg !1123

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !1124
  %62 = load i8, i8* %61, align 1, !dbg !1125, !tbaa !470
  %63 = zext i8 %62 to i64, !dbg !1124
  br label %78, !dbg !1126

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !1127
  %66 = bitcast i8* %65 to i16*, !dbg !1128
  %67 = load i16, i16* %66, align 1, !dbg !1128, !tbaa !667
  %68 = zext i16 %67 to i64, !dbg !1127
  br label %78, !dbg !1129

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !1130
  %71 = bitcast i8* %70 to i32*, !dbg !1131
  %72 = load i32, i32* %71, align 1, !dbg !1131, !tbaa !672
  %73 = zext i32 %72 to i64, !dbg !1130
  br label %78, !dbg !1132

; <label>:74:                                     ; preds = %53
  %75 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !1133
  %76 = bitcast i8* %75 to i64*, !dbg !1134
  %77 = load i64, i64* %76, align 1, !dbg !1134, !tbaa !676
  br label %78, !dbg !1135

; <label>:78:                                     ; preds = %53, %57, %60, %64, %69, %74
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %53 ], !dbg !1136
  %80 = call i8* @sdscatrepr(i8* %41, i8* nonnull %49, i64 %79) #10, !dbg !1137
  br label %81

; <label>:81:                                     ; preds = %78, %50
  %82 = phi i8* [ %52, %50 ], [ %80, %78 ], !dbg !1110
  %83 = icmp eq i64 %40, %37, !dbg !1138
  br i1 %83, label %86, label %84, !dbg !1140

; <label>:84:                                     ; preds = %81
  %85 = call i8* @sdscatlen(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1) #10, !dbg !1141
  br label %86, !dbg !1142

; <label>:86:                                     ; preds = %81, %84
  %87 = phi i8* [ %85, %84 ], [ %82, %81 ], !dbg !1143
  %88 = add nuw nsw i64 %40, 1, !dbg !1144
  %89 = icmp eq i64 %88, %38, !dbg !1101
  br i1 %89, label %90, label %39, !dbg !1104, !llvm.loop !1145

; <label>:90:                                     ; preds = %86, %32
  %91 = phi i8* [ %33, %32 ], [ %87, %86 ], !dbg !1147
  %92 = call i8* @sdscatlen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 2) #10, !dbg !1148
  %93 = call %struct.redisObject* @createObject(i32 0, i8* %92) #10, !dbg !1149
  call void @listRewind(%struct.list* %1, %struct.listIter* nonnull %6) #10, !dbg !1152
  %94 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #10, !dbg !1153
  %95 = icmp eq %struct.listNode* %94, null, !dbg !1155
  br i1 %95, label %103, label %96, !dbg !1155

; <label>:96:                                     ; preds = %90, %96
  %97 = phi %struct.listNode* [ %101, %96 ], [ %94, %90 ]
  %98 = getelementptr inbounds %struct.listNode, %struct.listNode* %97, i64 0, i32 2, !dbg !1156
  %99 = bitcast i8** %98 to %struct.client**, !dbg !1156
  %100 = load %struct.client*, %struct.client** %99, align 8, !dbg !1156, !tbaa !794
  call void @addReply(%struct.client* %100, %struct.redisObject* %93) #10, !dbg !1158
  %101 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #10, !dbg !1153
  %102 = icmp eq %struct.listNode* %101, null, !dbg !1155
  br i1 %102, label %103, label %96, !dbg !1155, !llvm.loop !1159

; <label>:103:                                    ; preds = %96, %90
  call void @decrRefCount(%struct.redisObject* %93) #10, !dbg !1161
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1162
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1162
  ret void, !dbg !1162
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
define dso_local i64 @addReplyReplicationBacklog(%struct.client*, i64) local_unnamed_addr #0 !dbg !1163 {
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %1) #10, !dbg !1176
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1177, !tbaa !582
  %4 = icmp eq i64 %3, 0, !dbg !1179
  br i1 %4, label %5, label %6, !dbg !1180

; <label>:5:                                      ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1181
  br label %47, !dbg !1183

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1184, !tbaa !518
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i64 %7) #10, !dbg !1185
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1186, !tbaa !527
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 %8) #10, !dbg !1187
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1188, !tbaa !582
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %9) #10, !dbg !1189
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1190, !tbaa !586
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i64 %10) #10, !dbg !1191
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1192, !tbaa !527
  %12 = sub nsw i64 %1, %11, !dbg !1193
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i64 %12) #10, !dbg !1195
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1196, !tbaa !586
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1197, !tbaa !518
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1198, !tbaa !582
  %16 = add i64 %14, %13, !dbg !1199
  %17 = sub i64 %16, %15, !dbg !1200
  %18 = srem i64 %17, %14, !dbg !1201
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i64 %18) #10, !dbg !1203
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1204, !tbaa !518
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1205, !tbaa !582
  %21 = sub nsw i64 %20, %12, !dbg !1206
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i64 %21) #10, !dbg !1208
  %22 = icmp eq i64 %21, 0, !dbg !1209
  br i1 %22, label %44, label %23, !dbg !1209

; <label>:23:                                     ; preds = %6
  %24 = add nsw i64 %18, %12, !dbg !1210
  %25 = srem i64 %24, %19, !dbg !1211
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1212, !tbaa !518
  %27 = sub nsw i64 %26, %25, !dbg !1213
  %28 = icmp slt i64 %27, %21, !dbg !1214
  %29 = select i1 %28, i64 %27, i64 %21, !dbg !1215
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %29) #10, !dbg !1217
  %30 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1218, !tbaa !511
  %31 = getelementptr inbounds i8, i8* %30, i64 %25, !dbg !1219
  %32 = tail call i8* @sdsnewlen(i8* %31, i64 %29) #10, !dbg !1220
  tail call void @addReplySds(%struct.client* %0, i8* %32) #10, !dbg !1221
  %33 = sub nsw i64 %21, %29, !dbg !1222
  %34 = icmp eq i64 %33, 0, !dbg !1209
  br i1 %34, label %44, label %35, !dbg !1209, !llvm.loop !1223

; <label>:35:                                     ; preds = %23, %35
  %36 = phi i64 [ %42, %35 ], [ %33, %23 ]
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1212, !tbaa !518
  %38 = icmp slt i64 %37, %36, !dbg !1214
  %39 = select i1 %38, i64 %37, i64 %36, !dbg !1215
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %39) #10, !dbg !1217
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1218, !tbaa !511
  %41 = tail call i8* @sdsnewlen(i8* %40, i64 %39) #10, !dbg !1220
  tail call void @addReplySds(%struct.client* %0, i8* %41) #10, !dbg !1221
  %42 = sub nsw i64 %36, %39, !dbg !1222
  %43 = icmp eq i64 %42, 0, !dbg !1209
  br i1 %43, label %44, label %35, !dbg !1209, !llvm.loop !1225

; <label>:44:                                     ; preds = %23, %35, %6
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1227, !tbaa !582
  %46 = sub nsw i64 %45, %12, !dbg !1228
  br label %47, !dbg !1229

; <label>:47:                                     ; preds = %44, %5
  %48 = phi i64 [ 0, %5 ], [ %46, %44 ], !dbg !1230
  ret i64 %48, !dbg !1231
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind readonly
define dso_local i64 @getPsyncInitialOffset() local_unnamed_addr #5 !dbg !1232 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1235, !tbaa !524
  ret i64 %1, !dbg !1236
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationSetupSlaveForFullResync(%struct.client*, i64) local_unnamed_addr #0 !dbg !1237 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1250
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1250
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1252
  store i64 %1, i64* %5, align 8, !dbg !1253, !tbaa !1254
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1255
  store i32 7, i32* %6, align 8, !dbg !1256, !tbaa !799
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1257, !tbaa !767
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1258
  %8 = load i32, i32* %7, align 8, !dbg !1258, !tbaa !1082
  %9 = and i32 %8, 65536, !dbg !1260
  %10 = icmp eq i32 %9, 0, !dbg !1260
  br i1 %10, label %11, label %19, !dbg !1261

; <label>:11:                                     ; preds = %2
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %1) #10, !dbg !1262
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1265
  %14 = load i32, i32* %13, align 8, !dbg !1265, !tbaa !479
  %15 = sext i32 %12 to i64, !dbg !1267
  %16 = call i64 @write(i32 %14, i8* nonnull %4, i64 %15) #10, !dbg !1268
  %17 = icmp eq i64 %16, %15, !dbg !1269
  br i1 %17, label %19, label %18, !dbg !1270

; <label>:18:                                     ; preds = %11
  call void @freeClientAsync(%struct.client* nonnull %0) #10, !dbg !1271
  br label %19, !dbg !1273

; <label>:19:                                     ; preds = %2, %11, %18
  %20 = phi i32 [ -1, %18 ], [ 0, %11 ], [ 0, %2 ], !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1275
  ret i32 %20, !dbg !1275
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @masterTryPartialResynchronization(%struct.client*) local_unnamed_addr #0 !dbg !1276 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = bitcast i64* %3 to i8*, !dbg !1287
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1287
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1288
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1288, !tbaa !1289
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !1290
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1290, !tbaa !776
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1291
  %11 = load i8*, i8** %10, align 8, !dbg !1291, !tbaa !638
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1293
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #7, !dbg !1293
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1295
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !1295, !tbaa !776
  %15 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %14, i64* nonnull %3, i8* null) #10, !dbg !1298
  %16 = icmp eq i32 %15, 0, !dbg !1299
  br i1 %16, label %17, label %124, !dbg !1300

; <label>:17:                                     ; preds = %1
  %18 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #13, !dbg !1301
  %19 = icmp eq i32 %18, 0, !dbg !1301
  br i1 %19, label %37, label %20, !dbg !1303

; <label>:20:                                     ; preds = %17
  %21 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #13, !dbg !1304
  %22 = icmp eq i32 %21, 0, !dbg !1304
  br i1 %22, label %23, label %27, !dbg !1305

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %3, align 8, !dbg !1306, !tbaa !522
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1307, !tbaa !1308
  %26 = icmp sgt i64 %24, %25, !dbg !1309
  br i1 %26, label %27, label %37, !dbg !1310

; <label>:27:                                     ; preds = %20, %23
  %28 = load i8, i8* %11, align 1, !dbg !1311, !tbaa !470
  %29 = icmp eq i8 %28, 63, !dbg !1314
  br i1 %29, label %35, label %30, !dbg !1315

; <label>:30:                                     ; preds = %27
  br i1 %22, label %32, label %31, !dbg !1316

; <label>:31:                                     ; preds = %30
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #10, !dbg !1318
  br label %124, !dbg !1321

; <label>:32:                                     ; preds = %30
  %33 = load i64, i64* %3, align 8, !dbg !1322, !tbaa !522
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1324, !tbaa !1308
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.27, i64 0, i64 0), i64 %33, i64 %34) #10, !dbg !1325
  br label %124

; <label>:35:                                     ; preds = %27
  %36 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #12, !dbg !1326
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !1328
  br label %124

; <label>:37:                                     ; preds = %17, %23
  %38 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1329, !tbaa !511
  %39 = icmp eq i8* %38, null, !dbg !1331
  br i1 %39, label %48, label %40, !dbg !1332

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %3, align 8, !dbg !1333, !tbaa !522
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1334, !tbaa !527
  %43 = icmp slt i64 %41, %42, !dbg !1335
  br i1 %43, label %48, label %44, !dbg !1336

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1337, !tbaa !582
  %46 = add nsw i64 %45, %42, !dbg !1338
  %47 = icmp sgt i64 %41, %46, !dbg !1339
  br i1 %47, label %48, label %56, !dbg !1340

; <label>:48:                                     ; preds = %37, %44, %40
  %49 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #12, !dbg !1341
  %50 = load i64, i64* %3, align 8, !dbg !1343, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %50) #10, !dbg !1344
  %51 = load i64, i64* %3, align 8, !dbg !1345, !tbaa !522
  %52 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1347, !tbaa !524
  %53 = icmp sgt i64 %51, %52, !dbg !1348
  br i1 %53, label %54, label %124, !dbg !1349

; <label>:54:                                     ; preds = %48
  %55 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #12, !dbg !1350
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !1352
  br label %124, !dbg !1353

; <label>:56:                                     ; preds = %44
  %57 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1354
  %58 = load i32, i32* %57, align 8, !dbg !1355, !tbaa !1082
  %59 = or i32 %58, 1, !dbg !1355
  store i32 %59, i32* %57, align 8, !dbg !1355, !tbaa !1082
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1356
  store i32 9, i32* %60, align 8, !dbg !1357, !tbaa !799
  %61 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1358, !tbaa !1359
  %62 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !1360
  store i64 %61, i64* %62, align 8, !dbg !1361, !tbaa !1362
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1363
  store i32 0, i32* %63, align 4, !dbg !1364, !tbaa !1365
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1366, !tbaa !558
  %65 = bitcast %struct.client* %0 to i8*, !dbg !1367
  %66 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %65) #10, !dbg !1368
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1369
  %68 = load i32, i32* %67, align 8, !dbg !1369, !tbaa !1371
  %69 = and i32 %68, 2, !dbg !1372
  %70 = icmp eq i32 %69, 0, !dbg !1372
  br i1 %70, label %73, label %71, !dbg !1373

; <label>:71:                                     ; preds = %56
  %72 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #10, !dbg !1374
  br label %75, !dbg !1377

; <label>:73:                                     ; preds = %56
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !1378
  br label %75

; <label>:75:                                     ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ], !dbg !1380
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1381
  %78 = load i32, i32* %77, align 8, !dbg !1381, !tbaa !479
  %79 = sext i32 %76 to i64, !dbg !1383
  %80 = call i64 @write(i32 %78, i8* nonnull %12, i64 %79) #10, !dbg !1384
  %81 = icmp eq i64 %80, %79, !dbg !1385
  br i1 %81, label %83, label %82, !dbg !1386

; <label>:82:                                     ; preds = %75
  call void @freeClientAsync(%struct.client* nonnull %0) #10, !dbg !1387
  br label %124, !dbg !1389

; <label>:83:                                     ; preds = %75
  %84 = load i64, i64* %3, align 8, !dbg !1390, !tbaa !522
  %85 = call i64 @addReplyReplicationBacklog(%struct.client* nonnull %0, i64 %84) #12, !dbg !1391
  %86 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #12, !dbg !1393
  %87 = load i64, i64* %3, align 8, !dbg !1394, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %85, i64 %87) #10, !dbg !1395
  %88 = bitcast %struct.listIter* %2 to i8*, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %88) #7, !dbg !1396
  %89 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !1407, !tbaa !1409
  %90 = icmp ne i32 %89, 0, !dbg !1410
  %91 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1411
  %92 = icmp ne i32 %91, 0, !dbg !1412
  %93 = and i1 %90, %92, !dbg !1413
  br i1 %93, label %94, label %123, !dbg !1413

; <label>:94:                                     ; preds = %83
  %95 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1414, !tbaa !558
  call void @listRewind(%struct.list* %95, %struct.listIter* nonnull %2) #10, !dbg !1416
  %96 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !1417
  %97 = icmp eq %struct.listNode* %96, null, !dbg !1419
  br i1 %97, label %121, label %98, !dbg !1419

; <label>:98:                                     ; preds = %94, %117
  %99 = phi %struct.listNode* [ %119, %117 ], [ %96, %94 ]
  %100 = phi i32 [ %118, %117 ], [ 0, %94 ]
  %101 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 2, !dbg !1420
  %102 = bitcast i8** %101 to %struct.client**, !dbg !1420
  %103 = load %struct.client*, %struct.client** %102, align 8, !dbg !1420, !tbaa !794
  %104 = getelementptr inbounds %struct.client, %struct.client* %103, i64 0, i32 23, !dbg !1422
  %105 = load i32, i32* %104, align 8, !dbg !1422, !tbaa !799
  %106 = icmp eq i32 %105, 9, !dbg !1424
  br i1 %106, label %107, label %117, !dbg !1425

; <label>:107:                                    ; preds = %98
  %108 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1426, !tbaa !1359
  %109 = getelementptr inbounds %struct.client, %struct.client* %103, i64 0, i32 32, !dbg !1427
  %110 = load i64, i64* %109, align 8, !dbg !1427, !tbaa !1362
  %111 = sub nsw i64 %108, %110, !dbg !1428
  %112 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1430, !tbaa !1431
  %113 = sext i32 %112 to i64, !dbg !1432
  %114 = icmp sle i64 %111, %113, !dbg !1433
  %115 = zext i1 %114 to i32, !dbg !1434
  %116 = add nsw i32 %100, %115, !dbg !1434
  br label %117, !dbg !1434

; <label>:117:                                    ; preds = %107, %98
  %118 = phi i32 [ %100, %98 ], [ %116, %107 ], !dbg !1435
  %119 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !1417
  %120 = icmp eq %struct.listNode* %119, null, !dbg !1419
  br i1 %120, label %121, label %98, !dbg !1419, !llvm.loop !1436

; <label>:121:                                    ; preds = %117, %94
  %122 = phi i32 [ 0, %94 ], [ %118, %117 ], !dbg !1439
  store i32 %122, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !1440, !tbaa !1441
  br label %123, !dbg !1442

; <label>:123:                                    ; preds = %83, %121
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %88) #7, !dbg !1442
  br label %124, !dbg !1443

; <label>:124:                                    ; preds = %31, %32, %35, %54, %48, %1, %123, %82
  %125 = phi i32 [ 0, %82 ], [ 0, %123 ], [ -1, %1 ], [ -1, %48 ], [ -1, %54 ], [ -1, %35 ], [ -1, %32 ], [ -1, %31 ], !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #7, !dbg !1445
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1445
  ret i32 %125, !dbg !1445
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @refreshGoodSlavesCount() local_unnamed_addr #0 !dbg !1397 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1446
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !1448, !tbaa !1409
  %4 = icmp ne i32 %3, 0, !dbg !1449
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1450
  %6 = icmp ne i32 %5, 0, !dbg !1451
  %7 = and i1 %4, %6, !dbg !1452
  br i1 %7, label %8, label %37, !dbg !1452

; <label>:8:                                      ; preds = %0
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1453, !tbaa !558
  call void @listRewind(%struct.list* %9, %struct.listIter* nonnull %1) #10, !dbg !1455
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !1456
  %11 = icmp eq %struct.listNode* %10, null, !dbg !1437
  br i1 %11, label %35, label %12, !dbg !1437

; <label>:12:                                     ; preds = %8, %31
  %13 = phi %struct.listNode* [ %33, %31 ], [ %10, %8 ]
  %14 = phi i32 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 2, !dbg !1458
  %16 = bitcast i8** %15 to %struct.client**, !dbg !1458
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !1458, !tbaa !794
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 23, !dbg !1460
  %19 = load i32, i32* %18, align 8, !dbg !1460, !tbaa !799
  %20 = icmp eq i32 %19, 9, !dbg !1461
  br i1 %20, label %21, label %31, !dbg !1462

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1463, !tbaa !1359
  %23 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 32, !dbg !1464
  %24 = load i64, i64* %23, align 8, !dbg !1464, !tbaa !1362
  %25 = sub nsw i64 %22, %24, !dbg !1465
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1467, !tbaa !1431
  %27 = sext i32 %26 to i64, !dbg !1468
  %28 = icmp sle i64 %25, %27, !dbg !1469
  %29 = zext i1 %28 to i32, !dbg !1470
  %30 = add nsw i32 %14, %29, !dbg !1470
  br label %31, !dbg !1470

; <label>:31:                                     ; preds = %21, %12
  %32 = phi i32 [ %14, %12 ], [ %30, %21 ], !dbg !1471
  %33 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !1456
  %34 = icmp eq %struct.listNode* %33, null, !dbg !1437
  br i1 %34, label %35, label %12, !dbg !1437, !llvm.loop !1436

; <label>:35:                                     ; preds = %31, %8
  %36 = phi i32 [ 0, %8 ], [ %32, %31 ], !dbg !1472
  store i32 %36, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !1473, !tbaa !1441
  br label %37, !dbg !1474

; <label>:37:                                     ; preds = %0, %35
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1474
  ret void, !dbg !1474
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startBgsaveForReplication(i32) local_unnamed_addr #0 !dbg !1475 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.rdbSaveInfo, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1500, !tbaa !1501
  %6 = icmp ne i32 %5, 0, !dbg !1502
  %7 = and i32 %0, 1, !dbg !1503
  %8 = icmp ne i32 %7, 0, !dbg !1504
  %9 = and i1 %8, %6, !dbg !1504
  %10 = bitcast %struct.listIter* %3 to i8*, !dbg !1505
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1505
  %11 = select i1 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), !dbg !1506
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* %11) #10, !dbg !1507
  %12 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !1508
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1508
  %13 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #10, !dbg !1510
  %14 = icmp eq %struct.rdbSaveInfo* %13, null, !dbg !1512
  br i1 %14, label %21, label %15, !dbg !1514

; <label>:15:                                     ; preds = %1
  br i1 %9, label %16, label %18, !dbg !1515

; <label>:16:                                     ; preds = %15
  %17 = call i32 @rdbSaveToSlavesSockets(%struct.rdbSaveInfo* nonnull %13) #10, !dbg !1517
  br label %22, !dbg !1520

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1521, !tbaa !1522
  %20 = call i32 @rdbSaveBackground(i8* %19, %struct.rdbSaveInfo* nonnull %13) #10, !dbg !1523
  br label %22

; <label>:21:                                     ; preds = %1
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !1524
  br label %25, !dbg !1526

; <label>:22:                                     ; preds = %16, %18
  %23 = phi i32 [ %17, %16 ], [ %20, %18 ], !dbg !1527
  %24 = icmp eq i32 %23, -1, !dbg !1528
  br i1 %24, label %25, label %47, !dbg !1526

; <label>:25:                                     ; preds = %21, %22
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !1529
  %26 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1530, !tbaa !558
  call void @listRewind(%struct.list* %26, %struct.listIter* nonnull %3) #10, !dbg !1532
  %27 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !1533
  %28 = icmp eq %struct.listNode* %27, null, !dbg !1535
  br i1 %28, label %87, label %29, !dbg !1535

; <label>:29:                                     ; preds = %25, %44
  %30 = phi %struct.listNode* [ %45, %44 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %30, i64 0, i32 2, !dbg !1536
  %32 = bitcast i8** %31 to %struct.client**, !dbg !1536
  %33 = load %struct.client*, %struct.client** %32, align 8, !dbg !1536, !tbaa !794
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 23, !dbg !1538
  %35 = load i32, i32* %34, align 8, !dbg !1538, !tbaa !799
  %36 = icmp eq i32 %35, 6, !dbg !1540
  br i1 %36, label %37, label %44, !dbg !1541

; <label>:37:                                     ; preds = %29
  store i32 0, i32* %34, align 8, !dbg !1542, !tbaa !799
  %38 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 21, !dbg !1544
  %39 = load i32, i32* %38, align 8, !dbg !1545, !tbaa !1082
  %40 = and i32 %39, -2, !dbg !1545
  store i32 %40, i32* %38, align 8, !dbg !1545, !tbaa !1082
  %41 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1546, !tbaa !558
  call void @listDelNode(%struct.list* %41, %struct.listNode* nonnull %30) #10, !dbg !1547
  call void @addReplyError(%struct.client* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !1548
  %42 = load i32, i32* %38, align 8, !dbg !1549, !tbaa !1082
  %43 = or i32 %42, 64, !dbg !1549
  store i32 %43, i32* %38, align 8, !dbg !1549, !tbaa !1082
  br label %44, !dbg !1550

; <label>:44:                                     ; preds = %37, %29
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !1533
  %46 = icmp eq %struct.listNode* %45, null, !dbg !1535
  br i1 %46, label %87, label %29, !dbg !1535, !llvm.loop !1551

; <label>:47:                                     ; preds = %22
  br i1 %9, label %81, label %48, !dbg !1553

; <label>:48:                                     ; preds = %47
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1554, !tbaa !558
  call void @listRewind(%struct.list* %49, %struct.listIter* nonnull %3) #10, !dbg !1555
  %50 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !1556
  %51 = icmp eq %struct.listNode* %50, null, !dbg !1557
  br i1 %51, label %81, label %52, !dbg !1557

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  br label %54, !dbg !1557

; <label>:54:                                     ; preds = %52, %78
  %55 = phi %struct.listNode* [ %50, %52 ], [ %79, %78 ]
  %56 = getelementptr inbounds %struct.listNode, %struct.listNode* %55, i64 0, i32 2, !dbg !1558
  %57 = bitcast i8** %56 to %struct.client**, !dbg !1558
  %58 = load %struct.client*, %struct.client** %57, align 8, !dbg !1558, !tbaa !794
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 23, !dbg !1560
  %60 = load i32, i32* %59, align 8, !dbg !1560, !tbaa !799
  %61 = icmp eq i32 %60, 6, !dbg !1561
  br i1 %61, label %62, label %78, !dbg !1562

; <label>:62:                                     ; preds = %54
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1563, !tbaa !524
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %53) #7, !dbg !1567
  %64 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 33, !dbg !1568
  store i64 %63, i64* %64, align 8, !dbg !1569, !tbaa !1254
  store i32 7, i32* %59, align 8, !dbg !1570, !tbaa !799
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1571, !tbaa !767
  %65 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 21, !dbg !1572
  %66 = load i32, i32* %65, align 8, !dbg !1572, !tbaa !1082
  %67 = and i32 %66, 65536, !dbg !1573
  %68 = icmp eq i32 %67, 0, !dbg !1573
  br i1 %68, label %69, label %77, !dbg !1574

; <label>:69:                                     ; preds = %62
  %70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %53, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %63) #10, !dbg !1575
  %71 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 1, !dbg !1577
  %72 = load i32, i32* %71, align 8, !dbg !1577, !tbaa !479
  %73 = sext i32 %70 to i64, !dbg !1578
  %74 = call i64 @write(i32 %72, i8* nonnull %53, i64 %73) #10, !dbg !1579
  %75 = icmp eq i64 %74, %73, !dbg !1580
  br i1 %75, label %77, label %76, !dbg !1581

; <label>:76:                                     ; preds = %69
  call void @freeClientAsync(%struct.client* nonnull %58) #10, !dbg !1582
  br label %77, !dbg !1583

; <label>:77:                                     ; preds = %62, %69, %76
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %53) #7, !dbg !1584
  br label %78, !dbg !1585

; <label>:78:                                     ; preds = %77, %54
  %79 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !1556
  %80 = icmp eq %struct.listNode* %79, null, !dbg !1557
  br i1 %80, label %81, label %54, !dbg !1557, !llvm.loop !1586

; <label>:81:                                     ; preds = %78, %48, %47
  %82 = icmp eq i32 %23, 0, !dbg !1588
  br i1 %82, label %83, label %87, !dbg !1590

; <label>:83:                                     ; preds = %81
  %84 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1591, !tbaa !1594
  call void @dictEmpty(%struct.dict* %84, void (i8*)* null) #10, !dbg !1595
  %85 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1596, !tbaa !1597
  call void @listRelease(%struct.list* %85) #10, !dbg !1598
  %86 = call %struct.list* @listCreate() #10, !dbg !1599
  store %struct.list* %86, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1600, !tbaa !1597
  br label %87, !dbg !1601

; <label>:87:                                     ; preds = %44, %25, %81, %83
  %88 = phi i32 [ %23, %81 ], [ 0, %83 ], [ -1, %25 ], [ -1, %44 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1602
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1602
  ret i32 %88, !dbg !1602
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
define dso_local void @replicationScriptCacheFlush() local_unnamed_addr #0 !dbg !1592 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1603, !tbaa !1594
  tail call void @dictEmpty(%struct.dict* %1, void (i8*)* null) #10, !dbg !1604
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1605, !tbaa !1597
  tail call void @listRelease(%struct.list* %2) #10, !dbg !1606
  %3 = tail call %struct.list* @listCreate() #10, !dbg !1607
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1608, !tbaa !1597
  ret void, !dbg !1609
}

; Function Attrs: noredzone nounwind
define dso_local void @syncCommand(%struct.client*) local_unnamed_addr #0 !dbg !1610 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1628
  %5 = load i32, i32* %4, align 8, !dbg !1628, !tbaa !1082
  %6 = and i32 %5, 1, !dbg !1630
  %7 = icmp eq i32 %6, 0, !dbg !1630
  br i1 %7, label %8, label %152, !dbg !1631

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1632, !tbaa !755
  %10 = icmp ne i8* %9, null, !dbg !1634
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !1635
  %12 = icmp ne i32 %11, 15, !dbg !1636
  %13 = and i1 %10, %12, !dbg !1637
  br i1 %13, label %14, label %16, !dbg !1637

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !1638
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %15) #10, !dbg !1640
  br label %152, !dbg !1641

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #10, !dbg !1642
  %18 = icmp eq i32 %17, 0, !dbg !1642
  br i1 %18, label %20, label %19, !dbg !1644

; <label>:19:                                     ; preds = %16
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !1645
  br label %152, !dbg !1647

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #12, !dbg !1648
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !1649
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1650
  %23 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1650, !tbaa !1289
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1651, !tbaa !776
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1652
  %26 = load i8*, i8** %25, align 8, !dbg !1652, !tbaa !638
  %27 = tail call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #13, !dbg !1653
  %28 = icmp eq i32 %27, 0, !dbg !1653
  br i1 %28, label %29, label %46, !dbg !1654

; <label>:29:                                     ; preds = %20
  %30 = tail call i32 @masterTryPartialResynchronization(%struct.client* nonnull %0) #12, !dbg !1655
  %31 = icmp eq i32 %30, 0, !dbg !1656
  br i1 %31, label %32, label %35, !dbg !1657

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1658, !tbaa !1660
  %34 = add nsw i64 %33, 1, !dbg !1658
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1658, !tbaa !1660
  br label %152, !dbg !1661

; <label>:35:                                     ; preds = %29
  %36 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1662, !tbaa !1289
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1, !dbg !1663
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !1663, !tbaa !776
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2, !dbg !1664
  %40 = load i8*, i8** %39, align 8, !dbg !1664, !tbaa !638
  %41 = load i8, i8* %40, align 1, !dbg !1666, !tbaa !470
  %42 = icmp eq i8 %41, 63, !dbg !1668
  br i1 %42, label %49, label %43, !dbg !1669

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1670, !tbaa !1671
  %45 = add nsw i64 %44, 1, !dbg !1670
  store i64 %45, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1670, !tbaa !1671
  br label %49, !dbg !1672

; <label>:46:                                     ; preds = %20
  %47 = load i32, i32* %4, align 8, !dbg !1673, !tbaa !1082
  %48 = or i32 %47, 65536, !dbg !1673
  store i32 %48, i32* %4, align 8, !dbg !1673, !tbaa !1082
  br label %49

; <label>:49:                                     ; preds = %43, %35, %46
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1675, !tbaa !1676
  %51 = add nsw i64 %50, 1, !dbg !1675
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1675, !tbaa !1676
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1677
  store i32 6, i32* %52, align 8, !dbg !1678, !tbaa !799
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 214), align 8, !dbg !1679, !tbaa !1681
  %54 = icmp eq i32 %53, 0, !dbg !1682
  br i1 %54, label %59, label %55, !dbg !1683

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1684
  %57 = load i32, i32* %56, align 8, !dbg !1684, !tbaa !479
  %58 = tail call i32 @anetDisableTcpNoDelay(i8* null, i32 %57) #10, !dbg !1685
  br label %59, !dbg !1685

; <label>:59:                                     ; preds = %49, %55
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !1686
  store i32 -1, i32* %60, align 8, !dbg !1687, !tbaa !1688
  %61 = load i32, i32* %4, align 8, !dbg !1689, !tbaa !1082
  %62 = or i32 %61, 1, !dbg !1689
  store i32 %62, i32* %4, align 8, !dbg !1689, !tbaa !1082
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1690, !tbaa !558
  %64 = bitcast %struct.client* %0 to i8*, !dbg !1691
  %65 = tail call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %64) #10, !dbg !1692
  %66 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1693, !tbaa !558
  %67 = getelementptr inbounds %struct.list, %struct.list* %66, i64 0, i32 5, !dbg !1693
  %68 = load i64, i64* %67, align 8, !dbg !1693, !tbaa !559
  %69 = icmp eq i64 %68, 1, !dbg !1695
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1696
  %71 = icmp eq i8* %70, null, !dbg !1697
  %72 = and i1 %69, %71, !dbg !1698
  br i1 %72, label %73, label %83, !dbg !1698

; <label>:73:                                     ; preds = %59
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #10, !dbg !1699
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1703, !tbaa !470
  %74 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #10, !dbg !1704
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1707, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1708, !tbaa !1308
  %75 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1709, !tbaa !511
  %76 = icmp eq i8* %75, null, !dbg !1709
  br i1 %76, label %78, label %77, !dbg !1709

; <label>:77:                                     ; preds = %73
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #10, !dbg !1709
  tail call void @_exit(i32 1) #11, !dbg !1709
  unreachable, !dbg !1709

; <label>:78:                                     ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1711, !tbaa !518
  %80 = tail call i8* @zmalloc(i64 %79) #10, !dbg !1712
  store i8* %80, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1713, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !1714, !tbaa !522
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1715, !tbaa !524
  %82 = add nsw i64 %81, 1, !dbg !1716
  store i64 %82, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1717, !tbaa !527
  br label %83, !dbg !1718

; <label>:83:                                     ; preds = %78, %59
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1719, !tbaa !1720
  %85 = icmp ne i32 %84, -1, !dbg !1721
  %86 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !1722
  %87 = icmp eq i32 %86, 1, !dbg !1723
  %88 = and i1 %85, %87, !dbg !1724
  br i1 %88, label %89, label %128, !dbg !1724

; <label>:89:                                     ; preds = %83
  %90 = bitcast %struct.listIter* %3 to i8*, !dbg !1725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1725
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1726, !tbaa !558
  call void @listRewind(%struct.list* %91, %struct.listIter* nonnull %3) #10, !dbg !1728
  br label %92, !dbg !1729

; <label>:92:                                     ; preds = %95, %89
  %93 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !1730
  %94 = icmp eq %struct.listNode* %93, null, !dbg !1729
  br i1 %94, label %126, label %95, !dbg !1729

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.listNode, %struct.listNode* %93, i64 0, i32 2, !dbg !1732
  %97 = bitcast i8** %96 to %struct.client**, !dbg !1732
  %98 = load %struct.client*, %struct.client** %97, align 8, !dbg !1732, !tbaa !794
  %99 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 23, !dbg !1735
  %100 = load i32, i32* %99, align 8, !dbg !1735, !tbaa !799
  %101 = icmp eq i32 %100, 7, !dbg !1737
  br i1 %101, label %102, label %92, !dbg !1738, !llvm.loop !1739

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1741
  %104 = load i32, i32* %103, align 8, !dbg !1741, !tbaa !1371
  %105 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 37, !dbg !1742
  %106 = load i32, i32* %105, align 8, !dbg !1742, !tbaa !1371
  %107 = and i32 %106, %104, !dbg !1743
  %108 = icmp eq i32 %107, %106, !dbg !1744
  br i1 %108, label %109, label %126, !dbg !1745

; <label>:109:                                    ; preds = %102
  call void @copyClientOutputBuffer(%struct.client* nonnull %0, %struct.client* nonnull %98) #10, !dbg !1746
  %110 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 33, !dbg !1747
  %111 = load i64, i64* %110, align 8, !dbg !1747, !tbaa !1254
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %112) #7, !dbg !1750
  %113 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1751
  store i64 %111, i64* %113, align 8, !dbg !1752, !tbaa !1254
  store i32 7, i32* %52, align 8, !dbg !1753, !tbaa !799
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1754, !tbaa !767
  %114 = load i32, i32* %4, align 8, !dbg !1755, !tbaa !1082
  %115 = and i32 %114, 65536, !dbg !1756
  %116 = icmp eq i32 %115, 0, !dbg !1756
  br i1 %116, label %117, label %125, !dbg !1757

; <label>:117:                                    ; preds = %109
  %118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %112, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %111) #10, !dbg !1758
  %119 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1760
  %120 = load i32, i32* %119, align 8, !dbg !1760, !tbaa !479
  %121 = sext i32 %118 to i64, !dbg !1761
  %122 = call i64 @write(i32 %120, i8* nonnull %112, i64 %121) #10, !dbg !1762
  %123 = icmp eq i64 %122, %121, !dbg !1763
  br i1 %123, label %125, label %124, !dbg !1764

; <label>:124:                                    ; preds = %117
  call void @freeClientAsync(%struct.client* nonnull %0) #10, !dbg !1765
  br label %125, !dbg !1766

; <label>:125:                                    ; preds = %109, %117, %124
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %112) #7, !dbg !1767
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !1768
  br label %127, !dbg !1769

; <label>:126:                                    ; preds = %92, %102
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !1770
  br label %127

; <label>:127:                                    ; preds = %126, %125
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1772
  br label %152, !dbg !1773

; <label>:128:                                    ; preds = %83
  %129 = icmp eq i32 %86, 2, !dbg !1774
  %130 = and i1 %85, %129, !dbg !1776
  br i1 %130, label %131, label %132, !dbg !1776

; <label>:131:                                    ; preds = %128
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !1777
  br label %152, !dbg !1779

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1780, !tbaa !1501
  %134 = icmp eq i32 %133, 0, !dbg !1783
  br i1 %134, label %144, label %135, !dbg !1784

; <label>:135:                                    ; preds = %132
  %136 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1785
  %137 = load i32, i32* %136, align 8, !dbg !1785, !tbaa !1371
  %138 = and i32 %137, 1, !dbg !1786
  %139 = icmp eq i32 %138, 0, !dbg !1786
  br i1 %139, label %144, label %140, !dbg !1787

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !1788, !tbaa !1791
  %142 = icmp eq i32 %141, 0, !dbg !1792
  br i1 %142, label %152, label %143, !dbg !1793

; <label>:143:                                    ; preds = %140
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !1794
  br label %152, !dbg !1794

; <label>:144:                                    ; preds = %135, %132
  %145 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1795, !tbaa !1798
  %146 = icmp eq i32 %145, -1, !dbg !1799
  br i1 %146, label %147, label %151, !dbg !1800

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1801
  %149 = load i32, i32* %148, align 8, !dbg !1801, !tbaa !1371
  %150 = tail call i32 @startBgsaveForReplication(i32 %149) #12, !dbg !1803
  br label %152, !dbg !1804

; <label>:151:                                    ; preds = %144
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !1805
  br label %152

; <label>:152:                                    ; preds = %140, %1, %127, %143, %151, %147, %131, %32, %19, %14
  ret void, !dbg !1807
}

; Function Attrs: noredzone
declare dso_local i32 @clientHasPendingReplies(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @changeReplicationId() local_unnamed_addr #0 !dbg !1700 {
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #10, !dbg !1808
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1809, !tbaa !470
  ret void, !dbg !1810
}

; Function Attrs: noredzone nounwind
define dso_local void @clearReplicationId2() local_unnamed_addr #0 !dbg !1705 {
  %1 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #10, !dbg !1811
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1812, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1813, !tbaa !1308
  ret void, !dbg !1814
}

; Function Attrs: noredzone
declare dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replconfCommand(%struct.client*) local_unnamed_addr #0 !dbg !1815 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1833
  %5 = load i32, i32* %4, align 8, !dbg !1833, !tbaa !1835
  %6 = and i32 %5, 1, !dbg !1836
  %7 = icmp eq i32 %6, 0, !dbg !1836
  br i1 %7, label %16, label %8, !dbg !1837

; <label>:8:                                      ; preds = %1
  %9 = icmp sgt i32 %5, 1, !dbg !1839
  br i1 %9, label %10, label %195, !dbg !1840

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %12 = bitcast i64* %2 to i8*
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 36, i64 0
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37
  br label %18, !dbg !1840

; <label>:16:                                     ; preds = %1
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1841, !tbaa !1843
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #10, !dbg !1845
  br label %197, !dbg !1846

; <label>:18:                                     ; preds = %10, %190
  %19 = phi i64 [ 1, %10 ], [ %191, %190 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !1847, !tbaa !1289
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !1848
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1848, !tbaa !776
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1849
  %24 = load i8*, i8** %23, align 8, !dbg !1849, !tbaa !638
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #13, !dbg !1850
  %26 = icmp eq i32 %25, 0, !dbg !1850
  br i1 %26, label %27, label %37, !dbg !1851

; <label>:27:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1852
  %28 = add nuw nsw i64 %19, 1, !dbg !1853
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %28, !dbg !1855
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !1855, !tbaa !776
  %31 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %30, i64* nonnull %2, i8* null) #10, !dbg !1857
  %32 = icmp eq i32 %31, 0, !dbg !1858
  br i1 %32, label %33, label %36, !dbg !1859

; <label>:33:                                     ; preds = %27
  %34 = load i64, i64* %2, align 8, !dbg !1860, !tbaa !676
  %35 = trunc i64 %34 to i32, !dbg !1860
  store i32 %35, i32* %13, align 4, !dbg !1861, !tbaa !498
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1862
  br label %190

; <label>:36:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1862
  br label %197

; <label>:37:                                     ; preds = %18
  %38 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0)) #13, !dbg !1863
  %39 = icmp eq i32 %38, 0, !dbg !1863
  br i1 %39, label %40, label %118, !dbg !1864

; <label>:40:                                     ; preds = %37
  %41 = add nuw nsw i64 %19, 1, !dbg !1865
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %41, !dbg !1866
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1866, !tbaa !776
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1867
  %45 = load i8*, i8** %44, align 8, !dbg !1867, !tbaa !638
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1872
  %47 = load i8, i8* %46, align 1, !dbg !1872, !tbaa !470
  %48 = trunc i8 %47 to i3, !dbg !1874
  switch i3 %48, label %92 [
    i3 -4, label %63
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 0, label %71
  ], !dbg !1874

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1875
  %51 = load i8, i8* %50, align 1, !dbg !1876, !tbaa !470
  %52 = zext i8 %51 to i64, !dbg !1875
  br label %67, !dbg !1877

; <label>:53:                                     ; preds = %40
  %54 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1878
  %55 = bitcast i8* %54 to i16*, !dbg !1879
  %56 = load i16, i16* %55, align 1, !dbg !1879, !tbaa !667
  %57 = zext i16 %56 to i64, !dbg !1878
  br label %67, !dbg !1880

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1881
  %60 = bitcast i8* %59 to i32*, !dbg !1882
  %61 = load i32, i32* %60, align 1, !dbg !1882, !tbaa !672
  %62 = zext i32 %61 to i64, !dbg !1881
  br label %67, !dbg !1883

; <label>:63:                                     ; preds = %40
  %64 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1884
  %65 = bitcast i8* %64 to i64*, !dbg !1885
  %66 = load i64, i64* %65, align 1, !dbg !1885, !tbaa !676
  br label %67, !dbg !1886

; <label>:67:                                     ; preds = %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], !dbg !1887
  %69 = icmp ult i64 %68, 46, !dbg !1888
  br i1 %69, label %70, label %96, !dbg !1889

; <label>:70:                                     ; preds = %67
  switch i3 %48, label %92 [
    i3 -4, label %88
    i3 1, label %74
    i3 2, label %78
    i3 3, label %83
  ], !dbg !1894

; <label>:71:                                     ; preds = %40
  %72 = lshr i8 %47, 3, !dbg !1895
  %73 = zext i8 %72 to i64, !dbg !1895
  br label %92, !dbg !1896

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1897
  %76 = load i8, i8* %75, align 1, !dbg !1898, !tbaa !470
  %77 = zext i8 %76 to i64, !dbg !1897
  br label %92, !dbg !1899

; <label>:78:                                     ; preds = %70
  %79 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1900
  %80 = bitcast i8* %79 to i16*, !dbg !1901
  %81 = load i16, i16* %80, align 1, !dbg !1901, !tbaa !667
  %82 = zext i16 %81 to i64, !dbg !1900
  br label %92, !dbg !1902

; <label>:83:                                     ; preds = %70
  %84 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1903
  %85 = bitcast i8* %84 to i32*, !dbg !1904
  %86 = load i32, i32* %85, align 1, !dbg !1904, !tbaa !672
  %87 = zext i32 %86 to i64, !dbg !1903
  br label %92, !dbg !1905

; <label>:88:                                     ; preds = %70
  %89 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1906
  %90 = bitcast i8* %89 to i64*, !dbg !1907
  %91 = load i64, i64* %90, align 1, !dbg !1907, !tbaa !676
  br label %92, !dbg !1908

; <label>:92:                                     ; preds = %40, %70, %71, %74, %78, %83, %88
  %93 = phi i64 [ %91, %88 ], [ %87, %83 ], [ %82, %78 ], [ %77, %74 ], [ %73, %71 ], [ 0, %70 ], [ 0, %40 ], !dbg !1909
  %94 = add i64 %93, 1, !dbg !1910
  %95 = call i8* @memcpy(i8* nonnull %14, i8* %45, i64 %94) #10, !dbg !1911
  br label %190

; <label>:96:                                     ; preds = %67
  %97 = trunc i8 %47 to i3, !dbg !1874
  switch i3 %97, label %116 [
    i3 -4, label %112
    i3 1, label %98
    i3 2, label %102
    i3 3, label %107
  ], !dbg !1916

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1917
  %100 = load i8, i8* %99, align 1, !dbg !1918, !tbaa !470
  %101 = zext i8 %100 to i64, !dbg !1917
  br label %116, !dbg !1919

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1920
  %104 = bitcast i8* %103 to i16*, !dbg !1921
  %105 = load i16, i16* %104, align 1, !dbg !1921, !tbaa !667
  %106 = zext i16 %105 to i64, !dbg !1920
  br label %116, !dbg !1922

; <label>:107:                                    ; preds = %96
  %108 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1923
  %109 = bitcast i8* %108 to i32*, !dbg !1924
  %110 = load i32, i32* %109, align 1, !dbg !1924, !tbaa !672
  %111 = zext i32 %110 to i64, !dbg !1923
  br label %116, !dbg !1925

; <label>:112:                                    ; preds = %96
  %113 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1926
  %114 = bitcast i8* %113 to i64*, !dbg !1927
  %115 = load i64, i64* %114, align 1, !dbg !1927, !tbaa !676
  br label %116, !dbg !1928

; <label>:116:                                    ; preds = %96, %98, %102, %107, %112
  %117 = phi i64 [ %115, %112 ], [ %111, %107 ], [ %106, %102 ], [ %101, %98 ], [ 0, %96 ], !dbg !1929
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.51, i64 0, i64 0), i64 %117) #10, !dbg !1930
  br label %197

; <label>:118:                                    ; preds = %37
  %119 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #13, !dbg !1931
  %120 = icmp eq i32 %119, 0, !dbg !1931
  br i1 %120, label %121, label %138, !dbg !1932

; <label>:121:                                    ; preds = %118
  %122 = add nuw nsw i64 %19, 1, !dbg !1933
  %123 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %122, !dbg !1936
  %124 = load %struct.redisObject*, %struct.redisObject** %123, align 8, !dbg !1936, !tbaa !776
  %125 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %124, i64 0, i32 2, !dbg !1937
  %126 = load i8*, i8** %125, align 8, !dbg !1937, !tbaa !638
  %127 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #13, !dbg !1938
  %128 = icmp eq i32 %127, 0, !dbg !1938
  br i1 %128, label %129, label %132, !dbg !1939

; <label>:129:                                    ; preds = %121
  %130 = load i32, i32* %15, align 8, !dbg !1940, !tbaa !1371
  %131 = or i32 %130, 1, !dbg !1940
  store i32 %131, i32* %15, align 8, !dbg !1940, !tbaa !1371
  br label %190, !dbg !1941

; <label>:132:                                    ; preds = %121
  %133 = call i32 @strcasecmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #13, !dbg !1942
  %134 = icmp eq i32 %133, 0, !dbg !1942
  br i1 %134, label %135, label %190, !dbg !1944

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %15, align 8, !dbg !1945, !tbaa !1371
  %137 = or i32 %136, 2, !dbg !1945
  store i32 %137, i32* %15, align 8, !dbg !1945, !tbaa !1371
  br label %190, !dbg !1946

; <label>:138:                                    ; preds = %118
  %139 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #13, !dbg !1947
  %140 = icmp eq i32 %139, 0, !dbg !1947
  br i1 %140, label %141, label %172, !dbg !1948

; <label>:141:                                    ; preds = %138
  %142 = bitcast i64* %3 to i8*, !dbg !1949
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %142) #7, !dbg !1949
  %143 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1950
  %144 = load i32, i32* %143, align 8, !dbg !1950, !tbaa !1082
  %145 = and i32 %144, 1, !dbg !1952
  %146 = icmp eq i32 %145, 0, !dbg !1952
  br i1 %146, label %171, label %147, !dbg !1953

; <label>:147:                                    ; preds = %141
  %148 = add i64 %19, 1, !dbg !1954
  %149 = and i64 %148, 4294967295, !dbg !1956
  %150 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %149, !dbg !1956
  %151 = load %struct.redisObject*, %struct.redisObject** %150, align 8, !dbg !1956, !tbaa !776
  %152 = call i32 @getLongLongFromObject(%struct.redisObject* %151, i64* nonnull %3) #10, !dbg !1958
  %153 = icmp eq i32 %152, 0, !dbg !1959
  br i1 %153, label %154, label %171, !dbg !1960

; <label>:154:                                    ; preds = %147
  %155 = load i64, i64* %3, align 8, !dbg !1961, !tbaa !522
  %156 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 31, !dbg !1963
  %157 = load i64, i64* %156, align 8, !dbg !1963, !tbaa !1964
  %158 = icmp sgt i64 %155, %157, !dbg !1965
  br i1 %158, label %159, label %160, !dbg !1966

; <label>:159:                                    ; preds = %154
  store i64 %155, i64* %156, align 8, !dbg !1967, !tbaa !1964
  br label %160, !dbg !1968

; <label>:160:                                    ; preds = %159, %154
  %161 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1969, !tbaa !1359
  %162 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !1970
  store i64 %161, i64* %162, align 8, !dbg !1971, !tbaa !1362
  %163 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1972
  %164 = load i32, i32* %163, align 4, !dbg !1972, !tbaa !1365
  %165 = icmp eq i32 %164, 0, !dbg !1974
  br i1 %165, label %171, label %166, !dbg !1975

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1976
  %168 = load i32, i32* %167, align 8, !dbg !1976, !tbaa !799
  %169 = icmp eq i32 %168, 9, !dbg !1977
  br i1 %169, label %170, label %171, !dbg !1978

; <label>:170:                                    ; preds = %166
  call void @putSlaveOnline(%struct.client* nonnull %0) #12, !dbg !1979
  br label %171, !dbg !1979

; <label>:171:                                    ; preds = %166, %170, %160, %147, %141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %142) #7, !dbg !1980
  br label %197

; <label>:172:                                    ; preds = %138
  %173 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #13, !dbg !1981
  %174 = icmp eq i32 %173, 0, !dbg !1981
  br i1 %174, label %175, label %189, !dbg !1983

; <label>:175:                                    ; preds = %172
  %176 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1984, !tbaa !755
  %177 = icmp ne i8* %176, null, !dbg !1987
  %178 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !1988
  %179 = icmp ne %struct.client* %178, null, !dbg !1989
  %180 = and i1 %177, %179, !dbg !1990
  br i1 %180, label %181, label %197, !dbg !1990

; <label>:181:                                    ; preds = %175
  %182 = getelementptr inbounds %struct.client, %struct.client* %178, i64 0, i32 21, !dbg !1996
  %183 = load i32, i32* %182, align 8, !dbg !1999, !tbaa !1082
  %184 = or i32 %183, 8192, !dbg !1999
  store i32 %184, i32* %182, align 8, !dbg !1999, !tbaa !1082
  call void @addReplyMultiBulkLen(%struct.client* nonnull %178, i64 3) #10, !dbg !2000
  call void @addReplyBulkCString(%struct.client* nonnull %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #10, !dbg !2001
  call void @addReplyBulkCString(%struct.client* nonnull %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #10, !dbg !2002
  %185 = getelementptr inbounds %struct.client, %struct.client* %178, i64 0, i32 30, !dbg !2003
  %186 = load i64, i64* %185, align 8, !dbg !2003, !tbaa !2004
  call void @addReplyBulkLongLong(%struct.client* nonnull %178, i64 %186) #10, !dbg !2005
  %187 = load i32, i32* %182, align 8, !dbg !2006, !tbaa !1082
  %188 = and i32 %187, -8193, !dbg !2006
  store i32 %188, i32* %182, align 8, !dbg !2006, !tbaa !1082
  br label %197, !dbg !2007

; <label>:189:                                    ; preds = %172
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i8* %24) #10, !dbg !2008
  br label %197, !dbg !2010

; <label>:190:                                    ; preds = %92, %33, %132, %135, %129
  %191 = add nuw i64 %19, 2, !dbg !2011
  %192 = load i32, i32* %4, align 8, !dbg !2012, !tbaa !1835
  %193 = trunc i64 %191 to i32, !dbg !1839
  %194 = icmp sgt i32 %192, %193, !dbg !1839
  br i1 %194, label %18, label %195, !dbg !1840, !llvm.loop !2013

; <label>:195:                                    ; preds = %190, %8
  %196 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2015, !tbaa !2016
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %196) #10, !dbg !2017
  br label %197, !dbg !2018

; <label>:197:                                    ; preds = %175, %181, %116, %36, %195, %189, %171, %16
  ret void, !dbg !2018
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @putSlaveOnline(%struct.client*) local_unnamed_addr #0 !dbg !2019 {
  %2 = alloca %struct.listIter, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2023
  store i32 9, i32* %3, align 8, !dbg !2024, !tbaa !799
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2025
  store i32 0, i32* %4, align 4, !dbg !2026, !tbaa !1365
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2027, !tbaa !1359
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !2028
  store i64 %5, i64* %6, align 8, !dbg !2029, !tbaa !1362
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2030, !tbaa !2032
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2033
  %9 = load i32, i32* %8, align 8, !dbg !2033, !tbaa !479
  %10 = bitcast %struct.client* %0 to i8*, !dbg !2034
  %11 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %7, i32 %9, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %10) #10, !dbg !2035
  %12 = icmp eq i32 %11, -1, !dbg !2036
  br i1 %12, label %13, label %17, !dbg !2037

; <label>:13:                                     ; preds = %1
  %14 = tail call i32* @__errno() #10, !dbg !2038
  %15 = load i32, i32* %14, align 4, !dbg !2038, !tbaa !672
  %16 = tail call i8* @strerror(i32 %15) #10, !dbg !2040
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.58, i64 0, i64 0), i8* %16) #10, !dbg !2041
  tail call void @freeClient(%struct.client* nonnull %0) #10, !dbg !2042
  br label %55, !dbg !2043

; <label>:17:                                     ; preds = %1
  %18 = bitcast %struct.listIter* %2 to i8*, !dbg !2044
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2044
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !2047, !tbaa !1409
  %20 = icmp ne i32 %19, 0, !dbg !2048
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !2049
  %22 = icmp ne i32 %21, 0, !dbg !2050
  %23 = and i1 %20, %22, !dbg !2051
  br i1 %23, label %24, label %53, !dbg !2051

; <label>:24:                                     ; preds = %17
  %25 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2052, !tbaa !558
  call void @listRewind(%struct.list* %25, %struct.listIter* nonnull %2) #10, !dbg !2054
  %26 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !2055
  %27 = icmp eq %struct.listNode* %26, null, !dbg !2057
  br i1 %27, label %51, label %28, !dbg !2057

; <label>:28:                                     ; preds = %24, %47
  %29 = phi %struct.listNode* [ %49, %47 ], [ %26, %24 ]
  %30 = phi i32 [ %48, %47 ], [ 0, %24 ]
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %29, i64 0, i32 2, !dbg !2058
  %32 = bitcast i8** %31 to %struct.client**, !dbg !2058
  %33 = load %struct.client*, %struct.client** %32, align 8, !dbg !2058, !tbaa !794
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 23, !dbg !2060
  %35 = load i32, i32* %34, align 8, !dbg !2060, !tbaa !799
  %36 = icmp eq i32 %35, 9, !dbg !2061
  br i1 %36, label %37, label %47, !dbg !2062

; <label>:37:                                     ; preds = %28
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2063, !tbaa !1359
  %39 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 32, !dbg !2064
  %40 = load i64, i64* %39, align 8, !dbg !2064, !tbaa !1362
  %41 = sub nsw i64 %38, %40, !dbg !2065
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !2067, !tbaa !1431
  %43 = sext i32 %42 to i64, !dbg !2068
  %44 = icmp sle i64 %41, %43, !dbg !2069
  %45 = zext i1 %44 to i32, !dbg !2070
  %46 = add nsw i32 %30, %45, !dbg !2070
  br label %47, !dbg !2070

; <label>:47:                                     ; preds = %37, %28
  %48 = phi i32 [ %30, %28 ], [ %46, %37 ], !dbg !2071
  %49 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !2055
  %50 = icmp eq %struct.listNode* %49, null, !dbg !2057
  br i1 %50, label %51, label %28, !dbg !2057, !llvm.loop !1436

; <label>:51:                                     ; preds = %47, %24
  %52 = phi i32 [ 0, %24 ], [ %48, %47 ], !dbg !2072
  store i32 %52, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !2073, !tbaa !1441
  br label %53, !dbg !2074

; <label>:53:                                     ; preds = %17, %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2074
  %54 = call i8* @replicationGetSlaveName(%struct.client* %0) #12, !dbg !2075
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !2076
  br label %55, !dbg !2077

; <label>:55:                                     ; preds = %53, %13
  ret void, !dbg !2077
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendAck() local_unnamed_addr #0 !dbg !1992 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2078, !tbaa !2079
  %2 = icmp eq %struct.client* %1, null, !dbg !2081
  br i1 %2, label %11, label %3, !dbg !2082

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !2083
  %5 = load i32, i32* %4, align 8, !dbg !2084, !tbaa !1082
  %6 = or i32 %5, 8192, !dbg !2084
  store i32 %6, i32* %4, align 8, !dbg !2084, !tbaa !1082
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %1, i64 3) #10, !dbg !2085
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #10, !dbg !2086
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #10, !dbg !2087
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 30, !dbg !2088
  %8 = load i64, i64* %7, align 8, !dbg !2088, !tbaa !2004
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %1, i64 %8) #10, !dbg !2089
  %9 = load i32, i32* %4, align 8, !dbg !2090, !tbaa !1082
  %10 = and i32 %9, -8193, !dbg !2090
  store i32 %10, i32* %4, align 8, !dbg !2090, !tbaa !1082
  br label %11, !dbg !2091

; <label>:11:                                     ; preds = %0, %3
  ret void, !dbg !2092
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
define dso_local void @sendBulkToSlave(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !2093 {
  %5 = alloca [16384 x i8], align 16
  %6 = bitcast i8* %2 to %struct.client*, !dbg !2107
  %7 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i64 0, i64 0, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2109
  %8 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !2111
  %9 = bitcast i8* %8 to i8**, !dbg !2111
  %10 = load i8*, i8** %9, align 8, !dbg !2111, !tbaa !2113
  %11 = icmp eq i8* %10, null, !dbg !2114
  br i1 %11, label %78, label %12, !dbg !2115

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !2119
  %14 = load i8, i8* %13, align 1, !dbg !2119, !tbaa !470
  %15 = trunc i8 %14 to i3, !dbg !2121
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !2121

; <label>:16:                                     ; preds = %12
  %17 = lshr i8 %14, 3, !dbg !2122
  %18 = zext i8 %17 to i64, !dbg !2122
  br label %37, !dbg !2123

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !2124
  %21 = load i8, i8* %20, align 1, !dbg !2125, !tbaa !470
  %22 = zext i8 %21 to i64, !dbg !2124
  br label %37, !dbg !2126

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !2127
  %25 = bitcast i8* %24 to i16*, !dbg !2128
  %26 = load i16, i16* %25, align 1, !dbg !2128, !tbaa !667
  %27 = zext i16 %26 to i64, !dbg !2127
  br label %37, !dbg !2129

; <label>:28:                                     ; preds = %12
  %29 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2130
  %30 = bitcast i8* %29 to i32*, !dbg !2131
  %31 = load i32, i32* %30, align 1, !dbg !2131, !tbaa !672
  %32 = zext i32 %31 to i64, !dbg !2130
  br label %37, !dbg !2132

; <label>:33:                                     ; preds = %12
  %34 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !2133
  %35 = bitcast i8* %34 to i64*, !dbg !2134
  %36 = load i64, i64* %35, align 1, !dbg !2134, !tbaa !676
  br label %37, !dbg !2135

; <label>:37:                                     ; preds = %12, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %12 ], !dbg !2136
  %39 = tail call i64 @write(i32 %1, i8* nonnull %10, i64 %38) #10, !dbg !2137
  %40 = icmp eq i64 %39, -1, !dbg !2139
  br i1 %40, label %41, label %45, !dbg !2141

; <label>:41:                                     ; preds = %37
  %42 = tail call i32* @__errno() #10, !dbg !2142
  %43 = load i32, i32* %42, align 4, !dbg !2142, !tbaa !672
  %44 = tail call i8* @strerror(i32 %43) #10, !dbg !2144
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* %44) #10, !dbg !2145
  tail call void @freeClient(%struct.client* %6) #10, !dbg !2146
  br label %124, !dbg !2147

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2148, !tbaa !2149
  %47 = add nsw i64 %46, %39, !dbg !2148
  store i64 %47, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2148, !tbaa !2149
  %48 = load i8*, i8** %9, align 8, !dbg !2150, !tbaa !2113
  tail call void @sdsrange(i8* %48, i64 %39, i64 -1) #10, !dbg !2151
  %49 = load i8*, i8** %9, align 8, !dbg !2152, !tbaa !2113
  %50 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !2156
  %51 = load i8, i8* %50, align 1, !dbg !2156, !tbaa !470
  %52 = trunc i8 %51 to i3, !dbg !2158
  switch i3 %52, label %77 [
    i3 0, label %53
    i3 1, label %56
    i3 2, label %60
    i3 3, label %65
    i3 -4, label %70
  ], !dbg !2158

; <label>:53:                                     ; preds = %45
  %54 = lshr i8 %51, 3, !dbg !2159
  %55 = zext i8 %54 to i64, !dbg !2159
  br label %74, !dbg !2160

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !2161
  %58 = load i8, i8* %57, align 1, !dbg !2162, !tbaa !470
  %59 = zext i8 %58 to i64, !dbg !2161
  br label %74, !dbg !2163

; <label>:60:                                     ; preds = %45
  %61 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !2164
  %62 = bitcast i8* %61 to i16*, !dbg !2165
  %63 = load i16, i16* %62, align 1, !dbg !2165, !tbaa !667
  %64 = zext i16 %63 to i64, !dbg !2164
  br label %74, !dbg !2166

; <label>:65:                                     ; preds = %45
  %66 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !2167
  %67 = bitcast i8* %66 to i32*, !dbg !2168
  %68 = load i32, i32* %67, align 1, !dbg !2168, !tbaa !672
  %69 = zext i32 %68 to i64, !dbg !2167
  br label %74, !dbg !2169

; <label>:70:                                     ; preds = %45
  %71 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !2170
  %72 = bitcast i8* %71 to i64*, !dbg !2171
  %73 = load i64, i64* %72, align 1, !dbg !2171, !tbaa !676
  br label %74, !dbg !2172

; <label>:74:                                     ; preds = %53, %56, %60, %65, %70
  %75 = phi i64 [ %73, %70 ], [ %69, %65 ], [ %64, %60 ], [ %59, %56 ], [ %55, %53 ], !dbg !2173
  %76 = icmp eq i64 %75, 0, !dbg !2174
  br i1 %76, label %77, label %124, !dbg !2175

; <label>:77:                                     ; preds = %45, %74
  tail call void @sdsfree(i8* %49) #10, !dbg !2176
  store i8* null, i8** %9, align 8, !dbg !2178, !tbaa !2113
  br label %78, !dbg !2179

; <label>:78:                                     ; preds = %4, %77
  %79 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !2180
  %80 = bitcast i8* %79 to i32*, !dbg !2180
  %81 = load i32, i32* %80, align 8, !dbg !2180, !tbaa !1688
  %82 = getelementptr inbounds i8, i8* %2, i64 184, !dbg !2181
  %83 = bitcast i8* %82 to i64*, !dbg !2181
  %84 = load i64, i64* %83, align 8, !dbg !2181, !tbaa !2182
  %85 = tail call i64 @lseek(i32 %81, i64 %84, i32 0) #10, !dbg !2183
  %86 = load i32, i32* %80, align 8, !dbg !2184, !tbaa !1688
  %87 = call i64 @read(i32 %86, i8* nonnull %7, i64 16384) #10, !dbg !2185
  %88 = icmp slt i64 %87, 1, !dbg !2187
  br i1 %88, label %89, label %97, !dbg !2189

; <label>:89:                                     ; preds = %78
  %90 = icmp eq i64 %87, 0, !dbg !2190
  br i1 %90, label %95, label %91, !dbg !2192

; <label>:91:                                     ; preds = %89
  %92 = call i32* @__errno() #10, !dbg !2193
  %93 = load i32, i32* %92, align 4, !dbg !2193, !tbaa !672
  %94 = call i8* @strerror(i32 %93) #10, !dbg !2194
  br label %95, !dbg !2192

; <label>:95:                                     ; preds = %89, %91
  %96 = phi i8* [ %94, %91 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), %89 ], !dbg !2192
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* %96) #10, !dbg !2195
  call void @freeClient(%struct.client* nonnull %6) #10, !dbg !2196
  br label %124, !dbg !2197

; <label>:97:                                     ; preds = %78
  %98 = call i64 @write(i32 %1, i8* nonnull %7, i64 %87) #10, !dbg !2198
  %99 = icmp eq i64 %98, -1, !dbg !2200
  br i1 %99, label %100, label %108, !dbg !2201

; <label>:100:                                    ; preds = %97
  %101 = call i32* @__errno() #10, !dbg !2202
  %102 = load i32, i32* %101, align 4, !dbg !2202, !tbaa !672
  %103 = icmp eq i32 %102, 11, !dbg !2205
  br i1 %103, label %124, label %104, !dbg !2206

; <label>:104:                                    ; preds = %100
  %105 = call i32* @__errno() #10, !dbg !2207
  %106 = load i32, i32* %105, align 4, !dbg !2207, !tbaa !672
  %107 = call i8* @strerror(i32 %106) #10, !dbg !2209
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0), i8* %107) #10, !dbg !2210
  call void @freeClient(%struct.client* nonnull %6) #10, !dbg !2211
  br label %124, !dbg !2212

; <label>:108:                                    ; preds = %97
  %109 = load i64, i64* %83, align 8, !dbg !2213, !tbaa !2182
  %110 = add nsw i64 %109, %98, !dbg !2213
  store i64 %110, i64* %83, align 8, !dbg !2213, !tbaa !2182
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2214, !tbaa !2149
  %112 = add nsw i64 %111, %98, !dbg !2214
  store i64 %112, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2214, !tbaa !2149
  %113 = getelementptr inbounds i8, i8* %2, i64 192, !dbg !2215
  %114 = bitcast i8* %113 to i64*, !dbg !2215
  %115 = load i64, i64* %114, align 8, !dbg !2215, !tbaa !2217
  %116 = icmp eq i64 %110, %115, !dbg !2218
  br i1 %116, label %117, label %124, !dbg !2219

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* %80, align 8, !dbg !2220, !tbaa !1688
  %119 = call i32 @close(i32 %118) #10, !dbg !2222
  store i32 -1, i32* %80, align 8, !dbg !2223, !tbaa !1688
  %120 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2224, !tbaa !2032
  %121 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2225
  %122 = bitcast i8* %121 to i32*, !dbg !2225
  %123 = load i32, i32* %122, align 8, !dbg !2225, !tbaa !479
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %120, i32 %123, i32 2) #10, !dbg !2226
  call void @putSlaveOnline(%struct.client* nonnull %6) #12, !dbg !2227
  br label %124, !dbg !2228

; <label>:124:                                    ; preds = %108, %117, %104, %100, %74, %95, %41
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2229
  ret void, !dbg !2229
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
define dso_local void @updateSlavesWaitingBgsave(i32, i32) local_unnamed_addr #0 !dbg !2230 {
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.stat, align 8
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !2287
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2287
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2288, !tbaa !558
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #10, !dbg !2290
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !2291
  %8 = icmp eq %struct.listNode* %7, null, !dbg !2293
  br i1 %8, label %82, label %9, !dbg !2293

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.stat* %4 to i8*
  %11 = icmp eq i32 %1, 2
  %12 = icmp eq i32 %0, 0
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 7
  br label %14, !dbg !2293

; <label>:14:                                     ; preds = %9, %73
  %15 = phi %struct.listNode* [ %7, %9 ], [ %76, %73 ]
  %16 = phi i32 [ 0, %9 ], [ %75, %73 ]
  %17 = phi i32 [ -1, %9 ], [ %74, %73 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !2294
  %19 = load i8*, i8** %18, align 8, !dbg !2294, !tbaa !794
  %20 = bitcast i8* %19 to %struct.client*, !dbg !2295
  %21 = getelementptr inbounds i8, i8* %19, i64 168, !dbg !2297
  %22 = bitcast i8* %21 to i32*, !dbg !2297
  %23 = load i32, i32* %22, align 8, !dbg !2297, !tbaa !799
  switch i32 %23, label %73 [
    i32 6, label %24
    i32 7, label %29
  ], !dbg !2298

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds i8, i8* %19, i64 344, !dbg !2299
  %26 = bitcast i8* %25 to i32*, !dbg !2299
  %27 = load i32, i32* %26, align 8, !dbg !2299, !tbaa !1371
  %28 = and i32 %27, %17, !dbg !2301
  br label %73, !dbg !2302

; <label>:29:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2303
  br i1 %11, label %30, label %37, !dbg !2304

; <label>:30:                                     ; preds = %29
  %31 = call i8* @replicationGetSlaveName(%struct.client* %20) #12, !dbg !2305
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !2308
  store i32 9, i32* %22, align 8, !dbg !2309, !tbaa !799
  %32 = getelementptr inbounds i8, i8* %19, i64 172, !dbg !2310
  %33 = bitcast i8* %32 to i32*, !dbg !2310
  store i32 1, i32* %33, align 4, !dbg !2311, !tbaa !1365
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2312, !tbaa !1359
  %35 = getelementptr inbounds i8, i8* %19, i64 232, !dbg !2313
  %36 = bitcast i8* %35 to i64*, !dbg !2313
  store i64 %34, i64* %36, align 8, !dbg !2314, !tbaa !1362
  br label %72, !dbg !2315

; <label>:37:                                     ; preds = %29
  br i1 %12, label %39, label %38, !dbg !2316

; <label>:38:                                     ; preds = %37
  call void @freeClient(%struct.client* %20) #10, !dbg !2318
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !2321
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2322
  br label %73

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2323, !tbaa !1522
  %41 = call i32 (i8*, i32, ...) @open(i8* %40, i32 0) #10, !dbg !2325
  %42 = getelementptr inbounds i8, i8* %19, i64 176, !dbg !2326
  %43 = bitcast i8* %42 to i32*, !dbg !2326
  store i32 %41, i32* %43, align 8, !dbg !2327, !tbaa !1688
  %44 = icmp eq i32 %41, -1, !dbg !2328
  br i1 %44, label %48, label %45, !dbg !2329

; <label>:45:                                     ; preds = %39
  %46 = call i32 @fstat(i32 %41, %struct.stat* nonnull %4) #10, !dbg !2331
  %47 = icmp eq i32 %46, -1, !dbg !2332
  br i1 %47, label %48, label %52, !dbg !2333

; <label>:48:                                     ; preds = %45, %39
  call void @freeClient(%struct.client* nonnull %20) #10, !dbg !2334
  %49 = call i32* @__errno() #10, !dbg !2336
  %50 = load i32, i32* %49, align 4, !dbg !2336, !tbaa !672
  %51 = call i8* @strerror(i32 %50) #10, !dbg !2337
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.66, i64 0, i64 0), i8* %51) #10, !dbg !2338
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2322
  br label %73

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds i8, i8* %19, i64 184, !dbg !2339
  %54 = bitcast i8* %53 to i64*, !dbg !2339
  store i64 0, i64* %54, align 8, !dbg !2340, !tbaa !2182
  %55 = load i64, i64* %13, align 8, !dbg !2341, !tbaa !2342
  %56 = getelementptr inbounds i8, i8* %19, i64 192, !dbg !2345
  %57 = bitcast i8* %56 to i64*, !dbg !2345
  store i64 %55, i64* %57, align 8, !dbg !2346, !tbaa !2217
  store i32 8, i32* %22, align 8, !dbg !2347, !tbaa !799
  %58 = call i8* @sdsempty() #10, !dbg !2348
  %59 = load i64, i64* %57, align 8, !dbg !2349, !tbaa !2217
  %60 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i64 %59) #10, !dbg !2350
  %61 = getelementptr inbounds i8, i8* %19, i64 200, !dbg !2351
  %62 = bitcast i8* %61 to i8**, !dbg !2351
  store i8* %60, i8** %62, align 8, !dbg !2352, !tbaa !2113
  %63 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2353, !tbaa !2032
  %64 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2354
  %65 = bitcast i8* %64 to i32*, !dbg !2354
  %66 = load i32, i32* %65, align 8, !dbg !2354, !tbaa !479
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %63, i32 %66, i32 2) #10, !dbg !2355
  %67 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2356, !tbaa !2032
  %68 = load i32, i32* %65, align 8, !dbg !2358, !tbaa !479
  %69 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %67, i32 %68, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendBulkToSlave, i8* nonnull %19) #10, !dbg !2359
  %70 = icmp eq i32 %69, -1, !dbg !2360
  br i1 %70, label %71, label %72, !dbg !2361

; <label>:71:                                     ; preds = %52
  call void @freeClient(%struct.client* nonnull %20) #10, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2322
  br label %73

; <label>:72:                                     ; preds = %30, %52
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2322
  br label %73

; <label>:73:                                     ; preds = %24, %14, %72, %71, %48, %38
  %74 = phi i32 [ %17, %38 ], [ %17, %48 ], [ %17, %71 ], [ %17, %72 ], [ %28, %24 ], [ %17, %14 ], !dbg !2364
  %75 = phi i32 [ %16, %38 ], [ %16, %48 ], [ %16, %71 ], [ %16, %72 ], [ 1, %24 ], [ %16, %14 ], !dbg !2364
  %76 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !2291
  %77 = icmp eq %struct.listNode* %76, null, !dbg !2293
  br i1 %77, label %78, label %14, !dbg !2293

; <label>:78:                                     ; preds = %73
  %79 = icmp eq i32 %75, 0, !dbg !2365
  br i1 %79, label %82, label %80, !dbg !2367

; <label>:80:                                     ; preds = %78
  %81 = call i32 @startBgsaveForReplication(i32 %74) #12, !dbg !2368
  br label %82, !dbg !2368

; <label>:82:                                     ; preds = %2, %78, %80
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2369
  ret void, !dbg !2369
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
define dso_local void @shiftReplicationId() local_unnamed_addr #0 !dbg !2370 {
  %1 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #10, !dbg !2371
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2372, !tbaa !524
  %3 = add nsw i64 %2, 1, !dbg !2373
  store i64 %3, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2374, !tbaa !1308
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #10, !dbg !2375
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !2377, !tbaa !470
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2378, !tbaa !1308
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %4, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #10, !dbg !2379
  ret void, !dbg !2380
}

; Function Attrs: norecurse noredzone nounwind readonly
define dso_local i32 @slaveIsInHandshakeState() local_unnamed_addr #5 !dbg !2381 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2384, !tbaa !2385
  %2 = add i32 %1, -3, !dbg !2386
  %3 = icmp ult i32 %2, 11, !dbg !2386
  %4 = zext i1 %3 to i32, !dbg !2386
  ret i32 %4, !dbg !2387
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendNewlineToMaster() local_unnamed_addr #0 !dbg !305 {
  %1 = tail call i64 @time(i64* null) #10, !dbg !2388
  %2 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2390, !tbaa !676
  %3 = icmp eq i64 %1, %2, !dbg !2391
  br i1 %3, label %8, label %4, !dbg !2392

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @time(i64* null) #10, !dbg !2393
  store i64 %5, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2395, !tbaa !676
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2396, !tbaa !2398
  %7 = tail call i64 @write(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #10, !dbg !2399
  br label %8, !dbg !2400

; <label>:8:                                      ; preds = %0, %4
  ret void, !dbg !2401
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationEmptyDbCallback(i8* nocapture readnone) #0 !dbg !2402 {
  %2 = tail call i64 @time(i64* null) #10, !dbg !2406
  %3 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2408, !tbaa !676
  %4 = icmp eq i64 %2, %3, !dbg !2409
  br i1 %4, label %9, label %5, !dbg !2410

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #10, !dbg !2411
  store i64 %6, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2412, !tbaa !676
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2413, !tbaa !2398
  %8 = tail call i64 @write(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #10, !dbg !2414
  br label %9, !dbg !2415

; <label>:9:                                      ; preds = %1, %5
  ret void, !dbg !2416
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCreateMasterClient(i32, i32) local_unnamed_addr #0 !dbg !2417 {
  %3 = tail call %struct.client* @createClient(i32 %0) #10, !dbg !2423
  store %struct.client* %3, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2424, !tbaa !2079
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !2425
  %5 = load i32, i32* %4, align 8, !dbg !2426, !tbaa !1082
  %6 = or i32 %5, 2, !dbg !2426
  store i32 %6, i32* %4, align 8, !dbg !2426, !tbaa !1082
  %7 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !2427
  store i32 1, i32* %7, align 4, !dbg !2428, !tbaa !2429
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2430, !tbaa !2431
  %9 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 30, !dbg !2432
  store i64 %8, i64* %9, align 8, !dbg !2433, !tbaa !2004
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 29, !dbg !2434
  store i64 %8, i64* %10, align 8, !dbg !2435, !tbaa !2436
  %11 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 34, i64 0, !dbg !2437
  %12 = tail call i8* @memcpy(i8* nonnull %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #10, !dbg !2438
  %13 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2439, !tbaa !2079
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 30, !dbg !2441
  %15 = load i64, i64* %14, align 8, !dbg !2441, !tbaa !2004
  %16 = icmp eq i64 %15, -1, !dbg !2442
  br i1 %16, label %17, label %21, !dbg !2443

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 21, !dbg !2444
  %19 = load i32, i32* %18, align 8, !dbg !2445, !tbaa !1082
  %20 = or i32 %19, 65536, !dbg !2445
  store i32 %20, i32* %18, align 8, !dbg !2445, !tbaa !1082
  br label %21, !dbg !2446

; <label>:21:                                     ; preds = %17, %2
  %22 = icmp eq i32 %1, -1, !dbg !2447
  br i1 %22, label %25, label %23, !dbg !2449

; <label>:23:                                     ; preds = %21
  %24 = tail call i32 @selectDb(%struct.client* %13, i32 %1) #10, !dbg !2450
  br label %25, !dbg !2450

; <label>:25:                                     ; preds = %21, %23
  ret void, !dbg !2451
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @restartAOFAfterSYNC() local_unnamed_addr #0 !dbg !2452 {
  %1 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %2 = icmp eq i32 %1, 0, !dbg !2463
  br i1 %2, label %9, label %3, !dbg !2464

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %4 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %5 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %6 = icmp eq i32 %5, 0, !dbg !2463
  br i1 %6, label %9, label %10, !dbg !2464

; <label>:7:                                      ; preds = %38
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %8 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.71, i64 0, i64 0)) #10, !dbg !2467
  tail call void @exit(i32 1) #11, !dbg !2470
  unreachable, !dbg !2470

; <label>:9:                                      ; preds = %0, %3, %10, %14, %18, %22, %26, %30, %34, %38
  ret void, !dbg !2471

; <label>:10:                                     ; preds = %3
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %11 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %12 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %13 = icmp eq i32 %12, 0, !dbg !2463
  br i1 %13, label %9, label %14, !dbg !2464

; <label>:14:                                     ; preds = %10
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %15 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %16 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %17 = icmp eq i32 %16, 0, !dbg !2463
  br i1 %17, label %9, label %18, !dbg !2464

; <label>:18:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %19 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %20 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %21 = icmp eq i32 %20, 0, !dbg !2463
  br i1 %21, label %9, label %22, !dbg !2464

; <label>:22:                                     ; preds = %18
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %23 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %24 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %25 = icmp eq i32 %24, 0, !dbg !2463
  br i1 %25, label %9, label %26, !dbg !2464

; <label>:26:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %27 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %28 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %29 = icmp eq i32 %28, 0, !dbg !2463
  br i1 %29, label %9, label %30, !dbg !2464

; <label>:30:                                     ; preds = %26
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %31 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %32 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %33 = icmp eq i32 %32, 0, !dbg !2463
  br i1 %33, label %9, label %34, !dbg !2464

; <label>:34:                                     ; preds = %30
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %35 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %36 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %37 = icmp eq i32 %36, 0, !dbg !2463
  br i1 %37, label %9, label %38, !dbg !2464

; <label>:38:                                     ; preds = %34
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2465
  %39 = tail call i32 @sleep(i32 1) #10, !dbg !2466
  %40 = tail call i32 @startAppendOnly() #10, !dbg !2458
  %41 = icmp eq i32 %40, 0, !dbg !2463
  br i1 %41, label %9, label %7, !dbg !2464
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
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !2476
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2476
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2478, !tbaa !2480
  %9 = icmp eq i64 %8, -1, !dbg !2481
  br i1 %9, label %10, label %40, !dbg !2482

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2483, !tbaa !2486
  %12 = mul nsw i32 %11, 1000, !dbg !2487
  %13 = sext i32 %12 to i64, !dbg !2488
  %14 = call i64 @syncReadLine(i32 %1, i8* nonnull %7, i64 1024, i64 %13) #10, !dbg !2489
  %15 = icmp eq i64 %14, -1, !dbg !2490
  br i1 %15, label %16, label %20, !dbg !2491

; <label>:16:                                     ; preds = %10
  %17 = call i32* @__errno() #10, !dbg !2492
  %18 = load i32, i32* %17, align 4, !dbg !2492, !tbaa !672
  %19 = call i8* @strerror(i32 %18) #10, !dbg !2494
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i64 0, i64 0), i8* %19) #10, !dbg !2495
  br label %246, !dbg !2496

; <label>:20:                                     ; preds = %10
  %21 = load i8, i8* %7, align 16, !dbg !2497, !tbaa !470
  switch i8 %21, label %26 [
    i8 45, label %22
    i8 0, label %24
    i8 36, label %27
  ], !dbg !2499

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2500
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %23) #10, !dbg !2502
  br label %246, !dbg !2503

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2504, !tbaa !1359
  store i64 %25, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2507, !tbaa !2508
  br label %257, !dbg !2509

; <label>:26:                                     ; preds = %20
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %7) #10, !dbg !2510
  br label %246, !dbg !2513

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2514
  %29 = call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 4) #10, !dbg !2516
  %30 = icmp eq i32 %29, 0, !dbg !2517
  br i1 %30, label %31, label %38, !dbg !2518

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 5, !dbg !2519
  %33 = call i64 @strlen(i8* nonnull %32) #10, !dbg !2520
  %34 = icmp ugt i64 %33, 39, !dbg !2521
  br i1 %34, label %35, label %38, !dbg !2522

; <label>:35:                                     ; preds = %31
  store i1 true, i1* @readSyncBulkPayload.usemark, align 4
  %36 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i8* nonnull %32, i64 40) #10, !dbg !2523
  %37 = call i8* @memset(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i32 0, i64 40) #10, !dbg !2525
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2526, !tbaa !2480
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2527
  br label %257, !dbg !2528

; <label>:38:                                     ; preds = %31, %27
  store i1 false, i1* @readSyncBulkPayload.usemark, align 4
  %39 = call i64 @strtol(i8* nonnull %28, i8** null, i32 10) #10, !dbg !2529
  store i64 %39, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2531, !tbaa !2480
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.77, i64 0, i64 0), i64 %39) #10, !dbg !2532
  br label %257

; <label>:40:                                     ; preds = %4
  %41 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %41, label %47, label %42, !dbg !2533

; <label>:42:                                     ; preds = %40
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2534, !tbaa !2537
  %44 = sub nsw i64 %8, %43, !dbg !2538
  %45 = icmp slt i64 %44, 4096, !dbg !2540
  %46 = select i1 %45, i64 %44, i64 4096, !dbg !2541
  br label %47

; <label>:47:                                     ; preds = %40, %42
  %48 = phi i64 [ %46, %42 ], [ 4096, %40 ], !dbg !2543
  %49 = call i64 @read(i32 %1, i8* nonnull %7, i64 %48) #10, !dbg !2544
  %50 = icmp slt i64 %49, 1, !dbg !2546
  br i1 %50, label %51, label %69, !dbg !2548

; <label>:51:                                     ; preds = %47
  %52 = icmp eq i64 %49, -1, !dbg !2549
  br i1 %52, label %53, label %57, !dbg !2551

; <label>:53:                                     ; preds = %51
  %54 = call i32* @__errno() #10, !dbg !2552
  %55 = load i32, i32* %54, align 4, !dbg !2552, !tbaa !672
  %56 = call i8* @strerror(i32 %55) #10, !dbg !2553
  br label %57, !dbg !2551

; <label>:57:                                     ; preds = %51, %53
  %58 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), %51 ], !dbg !2551
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i8* %58) #10, !dbg !2554
  %59 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2555, !tbaa !2385
  switch i32 %59, label %61 [
    i32 14, label %60
    i32 2, label %64
  ], !dbg !2559

; <label>:60:                                     ; preds = %57
  call void @replicationAbortSyncTransfer() #10, !dbg !2560
  br label %68, !dbg !2562

; <label>:61:                                     ; preds = %57
  %62 = add i32 %59, -3, !dbg !2563
  %63 = icmp ugt i32 %62, 10, !dbg !2563
  br i1 %63, label %257, label %64, !dbg !2566

; <label>:64:                                     ; preds = %61, %57
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2567, !tbaa !2398
  %66 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2574, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %66, i32 %65, i32 3) #10, !dbg !2575
  %67 = call i32 @close(i32 %65) #10, !dbg !2576
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2577, !tbaa !2398
  br label %68

; <label>:68:                                     ; preds = %64, %60
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2578, !tbaa !2385
  br label %257, !dbg !2579

; <label>:69:                                     ; preds = %47
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2580, !tbaa !2581
  %71 = add nsw i64 %70, %49, !dbg !2580
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2580, !tbaa !2581
  %72 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %72, label %73, label %91, !dbg !2583

; <label>:73:                                     ; preds = %69
  %74 = icmp sgt i64 %49, 39, !dbg !2584
  br i1 %74, label %75, label %79, !dbg !2585

; <label>:75:                                     ; preds = %73
  %76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 %49, !dbg !2586
  %77 = getelementptr inbounds i8, i8* %76, i64 -40, !dbg !2588
  %78 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %77, i64 40) #10, !dbg !2589
  br label %87, !dbg !2590

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %49, !dbg !2591
  %81 = shl i64 %49, 32, !dbg !2592
  %82 = sub i64 171798691840, %81, !dbg !2592
  %83 = ashr exact i64 %82, 32, !dbg !2592
  %84 = call i8* @memmove(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %80, i64 %83) #10, !dbg !2593
  %85 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %83, !dbg !2594
  %86 = call i8* @memcpy(i8* nonnull %85, i8* nonnull %7, i64 %49) #10, !dbg !2595
  br label %87

; <label>:87:                                     ; preds = %79, %75
  %88 = call i32 @memcmp(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i64 40) #10, !dbg !2596
  %89 = icmp eq i32 %88, 0, !dbg !2598
  %90 = zext i1 %89 to i32, !dbg !2599
  br label %91, !dbg !2599

; <label>:91:                                     ; preds = %87, %69
  %92 = phi i32 [ 0, %69 ], [ %90, %87 ], !dbg !2600
  %93 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2601, !tbaa !1359
  store i64 %93, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2602, !tbaa !2508
  %94 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2603, !tbaa !2605
  %95 = call i64 @write(i32 %94, i8* nonnull %7, i64 %49) #10, !dbg !2606
  %96 = icmp eq i64 %95, %49, !dbg !2608
  br i1 %96, label %105, label %97, !dbg !2609

; <label>:97:                                     ; preds = %91
  %98 = icmp eq i64 %95, -1, !dbg !2610
  br i1 %98, label %99, label %103, !dbg !2612

; <label>:99:                                     ; preds = %97
  %100 = call i32* @__errno() #10, !dbg !2613
  %101 = load i32, i32* %100, align 4, !dbg !2613, !tbaa !672
  %102 = call i8* @strerror(i32 %101) #10, !dbg !2614
  br label %103, !dbg !2612

; <label>:103:                                    ; preds = %97, %99
  %104 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), %97 ], !dbg !2612
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.80, i64 0, i64 0), i8* %104) #10, !dbg !2615
  br label %246, !dbg !2616

; <label>:105:                                    ; preds = %91
  %106 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2617, !tbaa !2537
  %107 = add nsw i64 %106, %49, !dbg !2617
  store i64 %107, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2617, !tbaa !2537
  %108 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  %109 = icmp ne i32 %92, 0, !dbg !2618
  %110 = and i1 %109, %108, !dbg !2620
  br i1 %110, label %111, label %122, !dbg !2620

; <label>:111:                                    ; preds = %105
  %112 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2621, !tbaa !2605
  %113 = add nsw i64 %107, -40, !dbg !2624
  %114 = call i32 @ftruncate(i32 %112, i64 %113) #10, !dbg !2625
  %115 = icmp eq i32 %114, -1, !dbg !2626
  br i1 %115, label %118, label %116, !dbg !2627

; <label>:116:                                    ; preds = %111
  %117 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2628, !tbaa !2537
  br label %122, !dbg !2627

; <label>:118:                                    ; preds = %111
  %119 = call i32* @__errno() #10, !dbg !2629
  %120 = load i32, i32* %119, align 4, !dbg !2629, !tbaa !672
  %121 = call i8* @strerror(i32 %120) #10, !dbg !2631
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.82, i64 0, i64 0), i8* %121) #10, !dbg !2632
  br label %246, !dbg !2633

; <label>:122:                                    ; preds = %116, %105
  %123 = phi i64 [ %117, %116 ], [ %107, %105 ], !dbg !2628
  %124 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2634, !tbaa !2635
  %125 = add nsw i64 %124, 8388608, !dbg !2636
  %126 = icmp slt i64 %123, %125, !dbg !2637
  br i1 %126, label %133, label %127, !dbg !2638

; <label>:127:                                    ; preds = %122
  %128 = sub i64 %123, %124, !dbg !2639
  %129 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2641, !tbaa !2605
  %130 = call i32 @fsync(i32 %129) #10, !dbg !2641
  %131 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2642, !tbaa !2635
  %132 = add nsw i64 %128, %131, !dbg !2642
  store i64 %132, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2642, !tbaa !2635
  br label %133, !dbg !2643

; <label>:133:                                    ; preds = %122, %127
  %134 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %134, label %141, label %135, !dbg !2644

; <label>:135:                                    ; preds = %133
  %136 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2645, !tbaa !2537
  %137 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2649, !tbaa !2480
  %138 = icmp ne i64 %136, %137, !dbg !2650
  %139 = icmp eq i32 %92, 0, !dbg !2651
  %140 = and i1 %139, %138
  br i1 %140, label %257, label %143

; <label>:141:                                    ; preds = %133
  %142 = icmp eq i32 %92, 0, !dbg !2651
  br i1 %142, label %257, label %143, !dbg !2652

; <label>:143:                                    ; preds = %135, %141
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2653, !tbaa !2654
  %145 = icmp ne i32 %144, 0, !dbg !2655
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2656, !tbaa !1720
  %147 = icmp eq i32 %146, -1, !dbg !2658
  br i1 %147, label %153, label %148, !dbg !2659

; <label>:148:                                    ; preds = %143
  %149 = sext i32 %146 to i64, !dbg !2660
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.83, i64 0, i64 0), i64 %149) #10, !dbg !2662
  %150 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2663, !tbaa !1720
  %151 = call i32 @kill(i32 %150, i32 10) #10, !dbg !2664
  %152 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2665, !tbaa !1720
  call void @rdbRemoveTempFile(i32 %152) #10, !dbg !2666
  br label %153, !dbg !2667

; <label>:153:                                    ; preds = %143, %148
  %154 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2668, !tbaa !2670
  %155 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2671, !tbaa !1522
  %156 = call i32 @rename(i8* %154, i8* %155) #10, !dbg !2672
  %157 = icmp eq i32 %156, -1, !dbg !2673
  br i1 %157, label %158, label %172, !dbg !2674

; <label>:158:                                    ; preds = %153
  %159 = call i32* @__errno() #10, !dbg !2675
  %160 = load i32, i32* %159, align 4, !dbg !2675, !tbaa !672
  %161 = call i8* @strerror(i32 %160) #10, !dbg !2677
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.84, i64 0, i64 0), i8* %161) #10, !dbg !2678
  %162 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2679, !tbaa !2385
  switch i32 %162, label %164 [
    i32 14, label %163
    i32 2, label %167
  ], !dbg !2681

; <label>:163:                                    ; preds = %158
  call void @replicationAbortSyncTransfer() #10, !dbg !2682
  br label %171, !dbg !2683

; <label>:164:                                    ; preds = %158
  %165 = add i32 %162, -3, !dbg !2684
  %166 = icmp ugt i32 %165, 10, !dbg !2684
  br i1 %166, label %257, label %167, !dbg !2686

; <label>:167:                                    ; preds = %164, %158
  %168 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2687, !tbaa !2398
  %169 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2690, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %169, i32 %168, i32 3) #10, !dbg !2691
  %170 = call i32 @close(i32 %168) #10, !dbg !2692
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2693, !tbaa !2398
  br label %171

; <label>:171:                                    ; preds = %167, %163
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2694, !tbaa !2385
  br label %257, !dbg !2695

; <label>:172:                                    ; preds = %153
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !2696
  br i1 %145, label %173, label %174, !dbg !2697

; <label>:173:                                    ; preds = %172
  call void @stopAppendOnly() #10, !dbg !2698
  br label %174, !dbg !2698

; <label>:174:                                    ; preds = %173, %172
  call void @signalFlushedDb(i32 -1) #10, !dbg !2700
  %175 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 220), align 8, !dbg !2701, !tbaa !2702
  %176 = icmp ne i32 %175, 0, !dbg !2703
  %177 = zext i1 %176 to i32, !dbg !2703
  %178 = call i64 @emptyDb(i32 -1, i32 %177, void (i8*)* nonnull @replicationEmptyDbCallback) #10, !dbg !2704
  %179 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2705, !tbaa !2032
  %180 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2706, !tbaa !2398
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %179, i32 %180, i32 1) #10, !dbg !2707
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0)) #10, !dbg !2708
  %181 = bitcast %struct.rdbSaveInfo* %6 to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %181) #7, !dbg !2709
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %181, i8* align 8 bitcast (%struct.rdbSaveInfo* @readSyncBulkPayload.rsi to i8*), i64 64, i1 false), !dbg !2710
  %182 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2711, !tbaa !1522
  %183 = call i32 @rdbLoad(i8* %182, %struct.rdbSaveInfo* nonnull %6) #10, !dbg !2713
  %184 = icmp eq i32 %183, 0, !dbg !2714
  br i1 %184, label %198, label %185, !dbg !2715

; <label>:185:                                    ; preds = %174
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i64 0, i64 0)) #10, !dbg !2716
  %186 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2718, !tbaa !2385
  switch i32 %186, label %188 [
    i32 14, label %187
    i32 2, label %191
  ], !dbg !2720

; <label>:187:                                    ; preds = %185
  call void @replicationAbortSyncTransfer() #10, !dbg !2721
  br label %195, !dbg !2722

; <label>:188:                                    ; preds = %185
  %189 = add i32 %186, -3, !dbg !2723
  %190 = icmp ugt i32 %189, 10, !dbg !2723
  br i1 %190, label %196, label %191, !dbg !2725

; <label>:191:                                    ; preds = %188, %185
  %192 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2726, !tbaa !2398
  %193 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2729, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %193, i32 %192, i32 3) #10, !dbg !2730
  %194 = call i32 @close(i32 %192) #10, !dbg !2731
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2732, !tbaa !2398
  br label %195

; <label>:195:                                    ; preds = %191, %187
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2733, !tbaa !2385
  br label %196, !dbg !2734

; <label>:196:                                    ; preds = %188, %195
  br i1 %145, label %197, label %245, !dbg !2735

; <label>:197:                                    ; preds = %196
  call void @restartAOFAfterSYNC() #12, !dbg !2736
  br label %245, !dbg !2736

; <label>:198:                                    ; preds = %174
  %199 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2738, !tbaa !2670
  call void @zfree(i8* %199) #10, !dbg !2739
  %200 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2740, !tbaa !2605
  %201 = call i32 @close(i32 %200) #10, !dbg !2741
  %202 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2742, !tbaa !2398
  %203 = getelementptr inbounds %struct.rdbSaveInfo, %struct.rdbSaveInfo* %6, i64 0, i32 0, !dbg !2743
  %204 = load i32, i32* %203, align 8, !dbg !2743, !tbaa !2744
  %205 = call %struct.client* @createClient(i32 %202) #10, !dbg !2749
  store %struct.client* %205, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2750, !tbaa !2079
  %206 = getelementptr inbounds %struct.client, %struct.client* %205, i64 0, i32 21, !dbg !2751
  %207 = load i32, i32* %206, align 8, !dbg !2752, !tbaa !1082
  %208 = or i32 %207, 2, !dbg !2752
  store i32 %208, i32* %206, align 8, !dbg !2752, !tbaa !1082
  %209 = getelementptr inbounds %struct.client, %struct.client* %205, i64 0, i32 22, !dbg !2753
  store i32 1, i32* %209, align 4, !dbg !2754, !tbaa !2429
  %210 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2755, !tbaa !2431
  %211 = getelementptr inbounds %struct.client, %struct.client* %205, i64 0, i32 30, !dbg !2756
  store i64 %210, i64* %211, align 8, !dbg !2757, !tbaa !2004
  %212 = getelementptr inbounds %struct.client, %struct.client* %205, i64 0, i32 29, !dbg !2758
  store i64 %210, i64* %212, align 8, !dbg !2759, !tbaa !2436
  %213 = getelementptr inbounds %struct.client, %struct.client* %205, i64 0, i32 34, i64 0, !dbg !2760
  %214 = call i8* @memcpy(i8* nonnull %213, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #10, !dbg !2761
  %215 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2762, !tbaa !2079
  %216 = getelementptr inbounds %struct.client, %struct.client* %215, i64 0, i32 30, !dbg !2763
  %217 = load i64, i64* %216, align 8, !dbg !2763, !tbaa !2004
  %218 = icmp eq i64 %217, -1, !dbg !2764
  br i1 %218, label %219, label %223, !dbg !2765

; <label>:219:                                    ; preds = %198
  %220 = getelementptr inbounds %struct.client, %struct.client* %215, i64 0, i32 21, !dbg !2766
  %221 = load i32, i32* %220, align 8, !dbg !2767, !tbaa !1082
  %222 = or i32 %221, 65536, !dbg !2767
  store i32 %222, i32* %220, align 8, !dbg !2767, !tbaa !1082
  br label %223, !dbg !2768

; <label>:223:                                    ; preds = %219, %198
  %224 = icmp eq i32 %204, -1, !dbg !2769
  br i1 %224, label %228, label %225, !dbg !2770

; <label>:225:                                    ; preds = %223
  %226 = call i32 @selectDb(%struct.client* %215, i32 %204) #10, !dbg !2771
  %227 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2772, !tbaa !2079
  br label %228, !dbg !2771

; <label>:228:                                    ; preds = %223, %225
  %229 = phi %struct.client* [ %215, %223 ], [ %227, %225 ], !dbg !2772
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2773, !tbaa !2385
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !2774, !tbaa !2775
  %230 = getelementptr inbounds %struct.client, %struct.client* %229, i64 0, i32 34, i64 0, !dbg !2776
  %231 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %230, i64 41) #10, !dbg !2777
  %232 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2778, !tbaa !2079
  %233 = getelementptr inbounds %struct.client, %struct.client* %232, i64 0, i32 30, !dbg !2779
  %234 = load i64, i64* %233, align 8, !dbg !2779, !tbaa !2004
  store i64 %234, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2780, !tbaa !524
  %235 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #10, !dbg !2781
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !2783, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2784, !tbaa !1308
  %236 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2785, !tbaa !511
  %237 = icmp eq i8* %236, null, !dbg !2787
  br i1 %237, label %238, label %243, !dbg !2788

; <label>:238:                                    ; preds = %228
  %239 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !2789, !tbaa !518
  %240 = call i8* @zmalloc(i64 %239) #10, !dbg !2791
  store i8* %240, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2792, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !2793, !tbaa !522
  %241 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2794, !tbaa !524
  %242 = add nsw i64 %241, 1, !dbg !2795
  store i64 %242, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !2796, !tbaa !527
  br label %243, !dbg !2797

; <label>:243:                                    ; preds = %238, %228
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i64 0, i64 0)) #10, !dbg !2798
  br i1 %145, label %244, label %245, !dbg !2799

; <label>:244:                                    ; preds = %243
  call void @restartAOFAfterSYNC() #12, !dbg !2800
  br label %245, !dbg !2800

; <label>:245:                                    ; preds = %243, %244, %196, %197
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %181) #7, !dbg !2802
  br label %257

; <label>:246:                                    ; preds = %118, %103, %26, %22, %16
  %247 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2803, !tbaa !2385
  switch i32 %247, label %249 [
    i32 14, label %248
    i32 2, label %252
  ], !dbg !2805

; <label>:248:                                    ; preds = %246
  call void @replicationAbortSyncTransfer() #10, !dbg !2806
  br label %256, !dbg !2807

; <label>:249:                                    ; preds = %246
  %250 = add i32 %247, -3, !dbg !2808
  %251 = icmp ugt i32 %250, 10, !dbg !2808
  br i1 %251, label %257, label %252, !dbg !2810

; <label>:252:                                    ; preds = %249, %246
  %253 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2811, !tbaa !2398
  %254 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2814, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %254, i32 %253, i32 3) #10, !dbg !2815
  %255 = call i32 @close(i32 %253) #10, !dbg !2816
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2817, !tbaa !2398
  br label %256

; <label>:256:                                    ; preds = %252, %248
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2818, !tbaa !2385
  br label %257, !dbg !2819

; <label>:257:                                    ; preds = %135, %256, %249, %171, %164, %68, %61, %245, %141, %35, %38, %24
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2820
  ret void, !dbg !2820
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
define dso_local i32 @cancelReplicationHandshake() local_unnamed_addr #0 !dbg !2557 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2821, !tbaa !2385
  switch i32 %1, label %3 [
    i32 14, label %2
    i32 2, label %6
  ], !dbg !2822

; <label>:2:                                      ; preds = %0
  tail call void @replicationAbortSyncTransfer() #12, !dbg !2823
  br label %10, !dbg !2824

; <label>:3:                                      ; preds = %0
  %4 = add i32 %1, -3, !dbg !2825
  %5 = icmp ugt i32 %4, 10, !dbg !2825
  br i1 %5, label %11, label %6, !dbg !2827

; <label>:6:                                      ; preds = %0, %3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2828, !tbaa !2398
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2831, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %8, i32 %7, i32 3) #10, !dbg !2832
  %9 = tail call i32 @close(i32 %7) #10, !dbg !2833
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2834, !tbaa !2398
  br label %10

; <label>:10:                                     ; preds = %6, %2
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2835, !tbaa !2385
  br label %11, !dbg !2836

; <label>:11:                                     ; preds = %3, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %3 ], !dbg !2837
  ret i32 %12, !dbg !2839
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
define dso_local i8* @sendSynchronousCommand(i32, i32, ...) local_unnamed_addr #0 !dbg !2840 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [256 x i8], align 16
  %5 = and i32 %0, 2, !dbg !2873
  %6 = icmp eq i32 %5, 0, !dbg !2873
  br i1 %6, label %77, label %7, !dbg !2874

; <label>:7:                                      ; preds = %2
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2875
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2875
  %9 = tail call i8* @sdsempty() #10, !dbg !2877
  %10 = tail call i8* @sdsempty() #10, !dbg !2879
  call void @llvm.va_start(i8* nonnull %8), !dbg !2882
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  br label %14, !dbg !2883

; <label>:14:                                     ; preds = %32, %7
  %15 = phi i8* [ %10, %7 ], [ %34, %32 ], !dbg !2884
  %16 = phi i64 [ 0, %7 ], [ %35, %32 ], !dbg !2884
  %17 = load i32, i32* %11, align 16, !dbg !2886
  %18 = icmp ult i32 %17, 41, !dbg !2886
  br i1 %18, label %19, label %24, !dbg !2886

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %12, align 16, !dbg !2886
  %21 = sext i32 %17 to i64, !dbg !2886
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !2886
  %23 = add i32 %17, 8, !dbg !2886
  store i32 %23, i32* %11, align 16, !dbg !2886
  br label %27, !dbg !2886

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %13, align 8, !dbg !2886
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !2886
  store i8* %26, i8** %13, align 8, !dbg !2886
  br label %27, !dbg !2886

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i8* [ %22, %19 ], [ %25, %24 ]
  %29 = bitcast i8* %28 to i8**, !dbg !2886
  %30 = load i8*, i8** %29, align 8, !dbg !2886
  %31 = icmp eq i8* %30, null, !dbg !2888
  br i1 %31, label %36, label %32, !dbg !2890

; <label>:32:                                     ; preds = %27
  %33 = call i64 @strlen(i8* nonnull %30) #10, !dbg !2891
  %34 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i64 %33, i8* nonnull %30) #10, !dbg !2892
  %35 = add i64 %16, 1, !dbg !2893
  br label %14, !dbg !2883, !llvm.loop !2894

; <label>:36:                                     ; preds = %27
  call void @llvm.va_end(i8* nonnull %8), !dbg !2896
  %37 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i64 %16) #10, !dbg !2897
  %38 = call i8* @sdscatsds(i8* %37, i8* %15) #10, !dbg !2898
  call void @sdsfree(i8* %15) #10, !dbg !2899
  %39 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !2903
  %40 = load i8, i8* %39, align 1, !dbg !2903, !tbaa !470
  %41 = trunc i8 %40 to i3, !dbg !2905
  switch i3 %41, label %63 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !2905

; <label>:42:                                     ; preds = %36
  %43 = lshr i8 %40, 3, !dbg !2906
  %44 = zext i8 %43 to i64, !dbg !2906
  br label %63, !dbg !2907

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds i8, i8* %38, i64 -3, !dbg !2908
  %47 = load i8, i8* %46, align 1, !dbg !2909, !tbaa !470
  %48 = zext i8 %47 to i64, !dbg !2908
  br label %63, !dbg !2910

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds i8, i8* %38, i64 -5, !dbg !2911
  %51 = bitcast i8* %50 to i16*, !dbg !2912
  %52 = load i16, i16* %51, align 1, !dbg !2912, !tbaa !667
  %53 = zext i16 %52 to i64, !dbg !2911
  br label %63, !dbg !2913

; <label>:54:                                     ; preds = %36
  %55 = getelementptr inbounds i8, i8* %38, i64 -9, !dbg !2914
  %56 = bitcast i8* %55 to i32*, !dbg !2915
  %57 = load i32, i32* %56, align 1, !dbg !2915, !tbaa !672
  %58 = zext i32 %57 to i64, !dbg !2914
  br label %63, !dbg !2916

; <label>:59:                                     ; preds = %36
  %60 = getelementptr inbounds i8, i8* %38, i64 -17, !dbg !2917
  %61 = bitcast i8* %60 to i64*, !dbg !2918
  %62 = load i64, i64* %61, align 1, !dbg !2918, !tbaa !676
  br label %63, !dbg !2919

; <label>:63:                                     ; preds = %36, %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], [ 0, %36 ], !dbg !2920
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2921, !tbaa !2486
  %66 = mul nsw i32 %65, 1000, !dbg !2922
  %67 = sext i32 %66 to i64, !dbg !2923
  %68 = call i64 @syncWrite(i32 %1, i8* %38, i64 %64, i64 %67) #10, !dbg !2924
  %69 = icmp eq i64 %68, -1, !dbg !2925
  call void @sdsfree(i8* %38) #10, !dbg !2926
  br i1 %69, label %71, label %70, !dbg !2927

; <label>:70:                                     ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2928
  br label %77

; <label>:71:                                     ; preds = %63
  %72 = call i8* @sdsempty() #10, !dbg !2929
  %73 = call i32* @__errno() #10, !dbg !2931
  %74 = load i32, i32* %73, align 4, !dbg !2931, !tbaa !672
  %75 = call i8* @strerror(i32 %74) #10, !dbg !2932
  %76 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %75) #10, !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2928
  br label %98

; <label>:77:                                     ; preds = %70, %2
  %78 = and i32 %0, 1, !dbg !2934
  %79 = icmp eq i32 %78, 0, !dbg !2934
  br i1 %79, label %98, label %80, !dbg !2935

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %81) #7, !dbg !2936
  %82 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2938, !tbaa !2486
  %83 = mul nsw i32 %82, 1000, !dbg !2940
  %84 = sext i32 %83 to i64, !dbg !2941
  %85 = call i64 @syncReadLine(i32 %1, i8* nonnull %81, i64 256, i64 %84) #10, !dbg !2942
  %86 = icmp eq i64 %85, -1, !dbg !2943
  br i1 %86, label %87, label %93, !dbg !2944

; <label>:87:                                     ; preds = %80
  %88 = call i8* @sdsempty() #10, !dbg !2945
  %89 = call i32* @__errno() #10, !dbg !2947
  %90 = load i32, i32* %89, align 4, !dbg !2947, !tbaa !672
  %91 = call i8* @strerror(i32 %90) #10, !dbg !2948
  %92 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i64 0, i64 0), i8* %91) #10, !dbg !2949
  br label %96, !dbg !2950

; <label>:93:                                     ; preds = %80
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2951, !tbaa !1359
  store i64 %94, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2952, !tbaa !2508
  %95 = call i8* @sdsnew(i8* nonnull %81) #10, !dbg !2953
  br label %96, !dbg !2954

; <label>:96:                                     ; preds = %93, %87
  %97 = phi i8* [ %92, %87 ], [ %95, %93 ], !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %81) #7, !dbg !2956
  br label %98

; <label>:98:                                     ; preds = %71, %77, %96
  %99 = phi i8* [ %97, %96 ], [ %76, %71 ], [ null, %77 ], !dbg !2957
  ret i8* %99, !dbg !2958
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
define dso_local i32 @slaveTryPartialResynchronization(i32, i32) local_unnamed_addr #0 !dbg !2959 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !2984
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !2984
  %6 = icmp eq i32 %1, 0, !dbg !2986
  br i1 %6, label %7, label %24, !dbg !2988

; <label>:7:                                      ; preds = %2
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2989, !tbaa !2431
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !2991, !tbaa !2993
  %9 = icmp eq %struct.client* %8, null, !dbg !2994
  br i1 %9, label %16, label %10, !dbg !2995

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 34, i64 0, !dbg !2996
  %12 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 30, !dbg !2999
  %13 = load i64, i64* %12, align 8, !dbg !2999, !tbaa !2004
  %14 = add nsw i64 %13, 1, !dbg !3000
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 %14) #10, !dbg !3001
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %11, i8* nonnull %5) #10, !dbg !3002
  br label %18, !dbg !3003

; <label>:16:                                     ; preds = %7
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.95, i64 0, i64 0)) #10, !dbg !3004
  %17 = call i8* @memcpy(i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i64 3) #10, !dbg !3006
  br label %18

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), %16 ], !dbg !3007
  %20 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %19, i8* nonnull %5, i8* null) #12, !dbg !3008
  %21 = icmp eq i8* %20, null, !dbg !3010
  br i1 %21, label %150, label %22, !dbg !3012

; <label>:22:                                     ; preds = %18
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %20) #10, !dbg !3013
  call void @sdsfree(i8* nonnull %20) #10, !dbg !3015
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3016, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1) #10, !dbg !3017
  br label %150, !dbg !3018

; <label>:24:                                     ; preds = %2
  %25 = tail call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %0, i8* null) #12, !dbg !3019
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !3023
  %27 = load i8, i8* %26, align 1, !dbg !3023, !tbaa !470
  %28 = trunc i8 %27 to i3, !dbg !3025
  switch i3 %28, label %53 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !3025

; <label>:29:                                     ; preds = %24
  %30 = lshr i8 %27, 3, !dbg !3026
  %31 = zext i8 %30 to i64, !dbg !3026
  br label %50, !dbg !3027

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !3028
  %34 = load i8, i8* %33, align 1, !dbg !3029, !tbaa !470
  %35 = zext i8 %34 to i64, !dbg !3028
  br label %50, !dbg !3030

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !3031
  %38 = bitcast i8* %37 to i16*, !dbg !3032
  %39 = load i16, i16* %38, align 1, !dbg !3032, !tbaa !667
  %40 = zext i16 %39 to i64, !dbg !3031
  br label %50, !dbg !3033

; <label>:41:                                     ; preds = %24
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !3034
  %43 = bitcast i8* %42 to i32*, !dbg !3035
  %44 = load i32, i32* %43, align 1, !dbg !3035, !tbaa !672
  %45 = zext i32 %44 to i64, !dbg !3034
  br label %50, !dbg !3036

; <label>:46:                                     ; preds = %24
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !3037
  %48 = bitcast i8* %47 to i64*, !dbg !3038
  %49 = load i64, i64* %48, align 1, !dbg !3038, !tbaa !676
  br label %50, !dbg !3039

; <label>:50:                                     ; preds = %29, %32, %36, %41, %46
  %51 = phi i64 [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], !dbg !3040
  %52 = icmp eq i64 %51, 0, !dbg !3041
  br i1 %52, label %53, label %54, !dbg !3042

; <label>:53:                                     ; preds = %24, %50
  tail call void @sdsfree(i8* %25) #10, !dbg !3043
  br label %150, !dbg !3045

; <label>:54:                                     ; preds = %50
  %55 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3046, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %55, i32 %0, i32 1) #10, !dbg !3047
  %56 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i64 11) #10, !dbg !3048
  %57 = icmp eq i32 %56, 0, !dbg !3048
  br i1 %57, label %58, label %87, !dbg !3049

; <label>:58:                                     ; preds = %54
  %59 = tail call i8* @strchr(i8* %25, i32 32) #10, !dbg !3052
  %60 = icmp eq i8* %59, null, !dbg !3053
  br i1 %60, label %73, label %61, !dbg !3055

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !3056
  %63 = tail call i8* @strchr(i8* nonnull %62, i32 32) #10, !dbg !3058
  %64 = icmp eq i8* %63, null, !dbg !3059
  %65 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !3061
  %66 = select i1 %64, i8* null, i8* %65, !dbg !3062
  br i1 %64, label %73, label %67, !dbg !3063

; <label>:67:                                     ; preds = %61
  %68 = ptrtoint i8* %66 to i64, !dbg !3065
  %69 = ptrtoint i8* %62 to i64, !dbg !3065
  %70 = xor i64 %69, -1, !dbg !3066
  %71 = add i64 %68, %70, !dbg !3066
  %72 = icmp eq i64 %71, 40, !dbg !3067
  br i1 %72, label %75, label %73, !dbg !3068

; <label>:73:                                     ; preds = %61, %58, %67
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.101, i64 0, i64 0)) #10, !dbg !3069
  %74 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i32 0, i64 41) #10, !dbg !3071
  br label %78, !dbg !3072

; <label>:75:                                     ; preds = %67
  %76 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i8* nonnull %62, i64 40) #10, !dbg !3073
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 40), align 8, !dbg !3075, !tbaa !470
  %77 = tail call i64 @strtoll(i8* nonnull %66, i8** null, i32 10) #10, !dbg !3076
  store i64 %77, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3077, !tbaa !2431
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 %77) #10, !dbg !3078
  br label %78

; <label>:78:                                     ; preds = %75, %73
  %79 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3079, !tbaa !2993
  %80 = icmp eq %struct.client* %79, null, !dbg !3083
  br i1 %80, label %86, label %81, !dbg !3084

; <label>:81:                                     ; preds = %78
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #10, !dbg !3085
  %82 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3086, !tbaa !2993
  %83 = getelementptr inbounds %struct.client, %struct.client* %82, i64 0, i32 21, !dbg !3087
  %84 = load i32, i32* %83, align 8, !dbg !3088, !tbaa !1082
  %85 = and i32 %84, -3, !dbg !3088
  store i32 %85, i32* %83, align 8, !dbg !3088, !tbaa !1082
  tail call void @freeClient(%struct.client* %82) #10, !dbg !3089
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3090, !tbaa !2993
  br label %86, !dbg !3091

; <label>:86:                                     ; preds = %78, %81
  tail call void @sdsfree(i8* %25) #10, !dbg !3092
  br label %150

; <label>:87:                                     ; preds = %54
  %88 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), i64 9) #10, !dbg !3093
  %89 = icmp eq i32 %88, 0, !dbg !3093
  br i1 %89, label %90, label %130, !dbg !3094

; <label>:90:                                     ; preds = %87
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.104, i64 0, i64 0)) #10, !dbg !3095
  %91 = getelementptr inbounds i8, i8* %25, i64 10, !dbg !3096
  %92 = getelementptr inbounds i8, i8* %25, i64 9, !dbg !3098
  br label %93, !dbg !3100

; <label>:93:                                     ; preds = %96, %90
  %94 = phi i8* [ %92, %90 ], [ %97, %96 ], !dbg !3101
  %95 = load i8, i8* %94, align 1, !dbg !3102, !tbaa !470
  switch i8 %95, label %96 [
    i8 13, label %98
    i8 10, label %98
    i8 0, label %98
  ], !dbg !3103

; <label>:96:                                     ; preds = %93
  %97 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !3104
  br label %93, !dbg !3100, !llvm.loop !3105

; <label>:98:                                     ; preds = %93, %93, %93
  %99 = ptrtoint i8* %94 to i64, !dbg !3106
  %100 = ptrtoint i8* %91 to i64, !dbg !3106
  %101 = sub i64 %99, %100, !dbg !3106
  %102 = icmp eq i64 %101, 40, !dbg !3107
  br i1 %102, label %103, label %122, !dbg !3108

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %104) #7, !dbg !3109
  %105 = call i8* @memcpy(i8* nonnull %104, i8* nonnull %91, i64 40) #10, !dbg !3111
  %106 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !3112
  store i8 0, i8* %106, align 8, !dbg !3113, !tbaa !470
  %107 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3114, !tbaa !2993
  %108 = getelementptr inbounds %struct.client, %struct.client* %107, i64 0, i32 34, i64 0, !dbg !3116
  %109 = call i32 @strcmp(i8* nonnull %104, i8* nonnull %108) #10, !dbg !3117
  %110 = icmp eq i32 %109, 0, !dbg !3117
  br i1 %110, label %121, label %111, !dbg !3118

; <label>:111:                                    ; preds = %103
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %104) #10, !dbg !3119
  %112 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3121, !tbaa !2993
  %113 = getelementptr inbounds %struct.client, %struct.client* %112, i64 0, i32 34, i64 0, !dbg !3122
  %114 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* nonnull %113, i64 41) #10, !dbg !3123
  %115 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3124, !tbaa !524
  %116 = add nsw i64 %115, 1, !dbg !3125
  store i64 %116, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3126, !tbaa !1308
  %117 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %104, i64 41) #10, !dbg !3127
  %118 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3128, !tbaa !2993
  %119 = getelementptr inbounds %struct.client, %struct.client* %118, i64 0, i32 34, i64 0, !dbg !3129
  %120 = call i8* @memcpy(i8* nonnull %119, i8* nonnull %104, i64 41) #10, !dbg !3130
  call void @disconnectSlaves() #10, !dbg !3131
  br label %121, !dbg !3132

; <label>:121:                                    ; preds = %103, %111
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %104) #7, !dbg !3133
  br label %122, !dbg !3134

; <label>:122:                                    ; preds = %121, %98
  call void @sdsfree(i8* %25) #10, !dbg !3135
  call void @replicationResurrectCachedMaster(i32 %0) #12, !dbg !3136
  %123 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3137, !tbaa !511
  %124 = icmp eq i8* %123, null, !dbg !3139
  br i1 %124, label %125, label %150, !dbg !3140

; <label>:125:                                    ; preds = %122
  %126 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !3141, !tbaa !518
  %127 = call i8* @zmalloc(i64 %126) #10, !dbg !3143
  store i8* %127, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3144, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !3145, !tbaa !522
  %128 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3146, !tbaa !524
  %129 = add nsw i64 %128, 1, !dbg !3147
  store i64 %129, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !3148, !tbaa !527
  br label %150, !dbg !3149

; <label>:130:                                    ; preds = %87
  %131 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i64 13) #10, !dbg !3150
  %132 = icmp eq i32 %131, 0, !dbg !3150
  br i1 %132, label %136, label %133, !dbg !3152

; <label>:133:                                    ; preds = %130
  %134 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0), i64 8) #10, !dbg !3153
  %135 = icmp eq i32 %134, 0, !dbg !3153
  br i1 %135, label %136, label %137, !dbg !3154

; <label>:136:                                    ; preds = %133, %130
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.108, i64 0, i64 0), i8* %25) #10, !dbg !3155
  tail call void @sdsfree(i8* %25) #10, !dbg !3157
  br label %150, !dbg !3158

; <label>:137:                                    ; preds = %133
  %138 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #10, !dbg !3159
  %139 = icmp eq i32 %138, 0, !dbg !3159
  br i1 %139, label %141, label %140, !dbg !3161

; <label>:140:                                    ; preds = %137
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i64 0, i64 0), i8* %25) #10, !dbg !3162
  br label %142, !dbg !3164

; <label>:141:                                    ; preds = %137
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.111, i64 0, i64 0), i8* %25) #10, !dbg !3165
  br label %142

; <label>:142:                                    ; preds = %141, %140
  tail call void @sdsfree(i8* %25) #10, !dbg !3167
  %143 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3168, !tbaa !2993
  %144 = icmp eq %struct.client* %143, null, !dbg !3170
  br i1 %144, label %150, label %145, !dbg !3171

; <label>:145:                                    ; preds = %142
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #10, !dbg !3172
  %146 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3173, !tbaa !2993
  %147 = getelementptr inbounds %struct.client, %struct.client* %146, i64 0, i32 21, !dbg !3174
  %148 = load i32, i32* %147, align 8, !dbg !3175, !tbaa !1082
  %149 = and i32 %148, -3, !dbg !3175
  store i32 %149, i32* %147, align 8, !dbg !3175, !tbaa !1082
  tail call void @freeClient(%struct.client* %146) #10, !dbg !3176
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3177, !tbaa !2993
  br label %150, !dbg !3178

; <label>:150:                                    ; preds = %145, %142, %122, %125, %18, %136, %86, %53, %22
  %151 = phi i32 [ 1, %53 ], [ 5, %136 ], [ 3, %86 ], [ 0, %22 ], [ 1, %18 ], [ 2, %125 ], [ 2, %122 ], [ 4, %142 ], [ 4, %145 ], !dbg !3179
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3180
  ret i32 %151, !dbg !3180
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationDiscardCachedMaster() local_unnamed_addr #0 !dbg !3081 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3181, !tbaa !2993
  %2 = icmp eq %struct.client* %1, null, !dbg !3182
  br i1 %2, label %8, label %3, !dbg !3183

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #10, !dbg !3184
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3185, !tbaa !2993
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !3186
  %6 = load i32, i32* %5, align 8, !dbg !3187, !tbaa !1082
  %7 = and i32 %6, -3, !dbg !3187
  store i32 %7, i32* %5, align 8, !dbg !3187, !tbaa !1082
  tail call void @freeClient(%struct.client* %4) #10, !dbg !3188
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3189, !tbaa !2993
  br label %8, !dbg !3190

; <label>:8:                                      ; preds = %0, %3
  ret void, !dbg !3190
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @disconnectSlaves() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationResurrectCachedMaster(i32) local_unnamed_addr #0 !dbg !3191 {
  %2 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3197, !tbaa !2993
  store i64 %2, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3198, !tbaa !2079
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3199, !tbaa !2993
  %3 = inttoptr i64 %2 to %struct.client*, !dbg !3200
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 1, !dbg !3201
  store i32 %0, i32* %4, align 8, !dbg !3202, !tbaa !479
  %5 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !3203
  %6 = load i32, i32* %5, align 8, !dbg !3204, !tbaa !1082
  %7 = and i32 %6, -1089, !dbg !3204
  store i32 %7, i32* %5, align 8, !dbg !3204, !tbaa !1082
  %8 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !3205
  store i32 1, i32* %8, align 4, !dbg !3206, !tbaa !2429
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3207, !tbaa !1359
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 19, !dbg !3208
  store i64 %9, i64* %10, align 8, !dbg !3209, !tbaa !3210
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3211, !tbaa !2385
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3212, !tbaa !2775
  tail call void @linkClient(%struct.client* %3) #10, !dbg !3213
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3214, !tbaa !2032
  %12 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3216, !tbaa !2079
  %13 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %11, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #10, !dbg !3217
  %14 = icmp eq i32 %13, 0, !dbg !3217
  br i1 %14, label %20, label %15, !dbg !3218

; <label>:15:                                     ; preds = %1
  %16 = tail call i32* @__errno() #10, !dbg !3219
  %17 = load i32, i32* %16, align 4, !dbg !3219, !tbaa !672
  %18 = tail call i8* @strerror(i32 %17) #10, !dbg !3221
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.160, i64 0, i64 0), i8* %18) #10, !dbg !3222
  %19 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3223, !tbaa !2079
  tail call void @freeClientAsync(%struct.client* %19) #10, !dbg !3224
  br label %20, !dbg !3225

; <label>:20:                                     ; preds = %1, %15
  %21 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3226, !tbaa !2079
  %22 = tail call i32 @clientHasPendingReplies(%struct.client* %21) #10, !dbg !3228
  %23 = icmp eq i32 %22, 0, !dbg !3228
  br i1 %23, label %34, label %24, !dbg !3229

; <label>:24:                                     ; preds = %20
  %25 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3230, !tbaa !2032
  %26 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3233, !tbaa !2079
  %27 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %25, i32 %0, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %26) #10, !dbg !3234
  %28 = icmp eq i32 %27, 0, !dbg !3234
  br i1 %28, label %34, label %29, !dbg !3235

; <label>:29:                                     ; preds = %24
  %30 = tail call i32* @__errno() #10, !dbg !3236
  %31 = load i32, i32* %30, align 4, !dbg !3236, !tbaa !672
  %32 = tail call i8* @strerror(i32 %31) #10, !dbg !3238
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.161, i64 0, i64 0), i8* %32) #10, !dbg !3239
  %33 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3240, !tbaa !2079
  tail call void @freeClientAsync(%struct.client* %33) #10, !dbg !3241
  br label %34, !dbg !3242

; <label>:34:                                     ; preds = %24, %20, %29
  ret void, !dbg !3243
}

; Function Attrs: noredzone nounwind
define dso_local void @syncWithMaster(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !3244 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3268
  %9 = bitcast i32* %6 to i8*, !dbg !3273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3273
  store i32 0, i32* %6, align 4, !dbg !3274, !tbaa !672
  %10 = bitcast i32* %7 to i8*, !dbg !3275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3275
  store i32 4, i32* %7, align 4, !dbg !3276, !tbaa !672
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3277, !tbaa !2385
  %12 = icmp eq i32 %11, 0, !dbg !3279
  br i1 %12, label %13, label %15, !dbg !3280

; <label>:13:                                     ; preds = %4
  %14 = tail call i32 @close(i32 %1) #10, !dbg !3281
  br label %170, !dbg !3283

; <label>:15:                                     ; preds = %4
  %16 = call i32 @getsockopt(i32 %1, i32 4095, i32 4103, i8* nonnull %9, i32* nonnull %7) #10, !dbg !3284
  %17 = icmp eq i32 %16, -1, !dbg !3286
  br i1 %17, label %18, label %21, !dbg !3287

; <label>:18:                                     ; preds = %15
  %19 = call i32* @__errno() #10, !dbg !3288
  %20 = load i32, i32* %19, align 4, !dbg !3288, !tbaa !672
  store i32 %20, i32* %6, align 4, !dbg !3289, !tbaa !672
  br label %23, !dbg !3290

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %6, align 4, !dbg !3291, !tbaa !672
  br label %23, !dbg !3291

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %20, %18 ], !dbg !3291
  %25 = icmp eq i32 %24, 0, !dbg !3291
  br i1 %25, label %28, label %26, !dbg !3293

; <label>:26:                                     ; preds = %23
  %27 = call i8* @strerror(i32 %24) #10, !dbg !3294
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0), i8* %27) #10, !dbg !3296
  br label %158, !dbg !3297

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3298, !tbaa !2385
  switch i32 %29, label %76 [
    i32 2, label %30
    i32 3, label %34
    i32 4, label %46
    i32 5, label %53
    i32 6, label %60
    i32 7, label %70
  ], !dbg !3300

; <label>:30:                                     ; preds = %28
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.113, i64 0, i64 0)) #10, !dbg !3301
  %31 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3303, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %31, i32 %1, i32 2) #10, !dbg !3304
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3305, !tbaa !2385
  %32 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i8* null) #12, !dbg !3306
  %33 = icmp eq i8* %32, null, !dbg !3307
  br i1 %33, label %170, label %168, !dbg !3309

; <label>:34:                                     ; preds = %28
  %35 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #12, !dbg !3310
  %36 = load i8, i8* %35, align 1, !dbg !3313, !tbaa !470
  %37 = icmp eq i8 %36, 43, !dbg !3315
  br i1 %37, label %45, label %38, !dbg !3316

; <label>:38:                                     ; preds = %34
  %39 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i64 7) #10, !dbg !3317
  %40 = icmp eq i32 %39, 0, !dbg !3318
  br i1 %40, label %45, label %41, !dbg !3319

; <label>:41:                                     ; preds = %38
  %42 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i64 0, i64 0), i64 28) #10, !dbg !3320
  %43 = icmp eq i32 %42, 0, !dbg !3321
  br i1 %43, label %45, label %44, !dbg !3322

; <label>:44:                                     ; preds = %41
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* %35) #10, !dbg !3323
  call void @sdsfree(i8* %35) #10, !dbg !3325
  br label %158, !dbg !3326

; <label>:45:                                     ; preds = %34, %38, %41
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.118, i64 0, i64 0)) #10, !dbg !3327
  call void @sdsfree(i8* %35) #10, !dbg !3329
  store i32 4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3330, !tbaa !2385
  br label %46, !dbg !3331

; <label>:46:                                     ; preds = %28, %45
  %47 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 195), align 8, !dbg !3332, !tbaa !3336
  %48 = icmp eq i8* %47, null, !dbg !3337
  br i1 %48, label %59, label %49, !dbg !3338

; <label>:49:                                     ; preds = %46
  %50 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %47, i8* null) #12, !dbg !3339
  %51 = icmp eq i8* %50, null, !dbg !3341
  br i1 %51, label %52, label %168, !dbg !3343

; <label>:52:                                     ; preds = %49
  store i32 5, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3344, !tbaa !2385
  br label %170, !dbg !3345

; <label>:53:                                     ; preds = %28
  %54 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #12, !dbg !3346
  %55 = load i8, i8* %54, align 1, !dbg !3349, !tbaa !470
  %56 = icmp eq i8 %55, 45, !dbg !3351
  br i1 %56, label %57, label %58, !dbg !3352

; <label>:57:                                     ; preds = %53
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.120, i64 0, i64 0), i8* %54) #10, !dbg !3353
  call void @sdsfree(i8* %54) #10, !dbg !3355
  br label %158, !dbg !3356

; <label>:58:                                     ; preds = %53
  call void @sdsfree(i8* %54) #10, !dbg !3357
  br label %59, !dbg !3358

; <label>:59:                                     ; preds = %46, %58
  store i32 6, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3359, !tbaa !2385
  br label %60, !dbg !3361

; <label>:60:                                     ; preds = %59, %28
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 216), align 8, !dbg !3361, !tbaa !3362
  %62 = icmp eq i32 %61, 0, !dbg !3363
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 27), align 8, !dbg !3364
  %64 = select i1 %62, i32 %63, i32 %61, !dbg !3363
  %65 = sext i32 %64 to i64, !dbg !3363
  %66 = call i8* @sdsfromlonglong(i64 %65) #10, !dbg !3365
  %67 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* %66, i8* null) #12, !dbg !3367
  call void @sdsfree(i8* %66) #10, !dbg !3368
  %68 = icmp eq i8* %67, null, !dbg !3369
  br i1 %68, label %69, label %168, !dbg !3371

; <label>:69:                                     ; preds = %60
  call void @sdsfree(i8* null) #10, !dbg !3372
  store i32 7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3373, !tbaa !2385
  br label %170

; <label>:70:                                     ; preds = %28
  %71 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #12, !dbg !3374
  %72 = load i8, i8* %71, align 1, !dbg !3377, !tbaa !470
  %73 = icmp eq i8 %72, 45, !dbg !3379
  br i1 %73, label %74, label %75, !dbg !3380

; <label>:74:                                     ; preds = %70
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.122, i64 0, i64 0), i8* %71) #10, !dbg !3381
  br label %75, !dbg !3383

; <label>:75:                                     ; preds = %74, %70
  call void @sdsfree(i8* %71) #10, !dbg !3384
  store i32 8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3385, !tbaa !2385
  br label %76, !dbg !3386

; <label>:76:                                     ; preds = %28, %75
  %77 = phi i32 [ 8, %75 ], [ %29, %28 ], !dbg !3387
  %78 = icmp eq i32 %77, 8, !dbg !3389
  %79 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 217), align 8, !dbg !3390
  %80 = icmp eq i8* %79, null, !dbg !3391
  %81 = and i1 %78, %80, !dbg !3392
  br i1 %81, label %93, label %82, !dbg !3392

; <label>:82:                                     ; preds = %76
  switch i32 %77, label %110 [
    i32 8, label %83
    i32 9, label %87
    i32 10, label %94
    i32 11, label %98
    i32 12, label %104
    i32 13, label %111
  ], !dbg !3393

; <label>:83:                                     ; preds = %82
  %84 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i8* %79, i8* null) #12, !dbg !3394
  %85 = icmp eq i8* %84, null, !dbg !3397
  br i1 %85, label %86, label %168, !dbg !3399

; <label>:86:                                     ; preds = %83
  call void @sdsfree(i8* null) #10, !dbg !3400
  store i32 9, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3401, !tbaa !2385
  br label %170, !dbg !3402

; <label>:87:                                     ; preds = %82
  %88 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #12, !dbg !3403
  %89 = load i8, i8* %88, align 1, !dbg !3406, !tbaa !470
  %90 = icmp eq i8 %89, 45, !dbg !3408
  br i1 %90, label %91, label %92, !dbg !3409

; <label>:91:                                     ; preds = %87
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), i8* %88) #10, !dbg !3410
  br label %92, !dbg !3412

; <label>:92:                                     ; preds = %91, %87
  call void @sdsfree(i8* %88) #10, !dbg !3413
  br label %93, !dbg !3414

; <label>:93:                                     ; preds = %76, %92
  store i32 10, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3415, !tbaa !2385
  br label %94, !dbg !3417

; <label>:94:                                     ; preds = %93, %82
  %95 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* null) #12, !dbg !3417
  %96 = icmp eq i8* %95, null, !dbg !3420
  br i1 %96, label %97, label %168, !dbg !3422

; <label>:97:                                     ; preds = %94
  call void @sdsfree(i8* null) #10, !dbg !3423
  store i32 11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3424, !tbaa !2385
  br label %170, !dbg !3425

; <label>:98:                                     ; preds = %82
  %99 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #12, !dbg !3426
  %100 = load i8, i8* %99, align 1, !dbg !3429, !tbaa !470
  %101 = icmp eq i8 %100, 45, !dbg !3431
  br i1 %101, label %102, label %103, !dbg !3432

; <label>:102:                                    ; preds = %98
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.124, i64 0, i64 0), i8* %99) #10, !dbg !3433
  br label %103, !dbg !3435

; <label>:103:                                    ; preds = %98, %102
  call void @sdsfree(i8* %99) #10, !dbg !3436
  store i32 12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3437, !tbaa !2385
  br label %104, !dbg !3438

; <label>:104:                                    ; preds = %82, %103
  %105 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 0) #12, !dbg !3439
  %106 = icmp eq i32 %105, 0, !dbg !3443
  br i1 %106, label %107, label %109, !dbg !3444

; <label>:107:                                    ; preds = %104
  %108 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.125, i64 0, i64 0)) #10, !dbg !3445
  br label %168, !dbg !3447

; <label>:109:                                    ; preds = %104
  store i32 13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3448, !tbaa !2385
  br label %170, !dbg !3449

; <label>:110:                                    ; preds = %82
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.126, i64 0, i64 0), i32 %77) #10, !dbg !3450
  br label %158, !dbg !3453

; <label>:111:                                    ; preds = %82
  %112 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 1) #12, !dbg !3454
  switch i32 %112, label %114 [
    i32 1, label %170
    i32 5, label %158
    i32 2, label %113
  ], !dbg !3456

; <label>:113:                                    ; preds = %111
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.127, i64 0, i64 0)) #10, !dbg !3457
  br label %170, !dbg !3460

; <label>:114:                                    ; preds = %111
  call void @disconnectSlaves() #10, !dbg !3461
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3462, !tbaa !558
  %116 = getelementptr inbounds %struct.list, %struct.list* %115, i64 0, i32 5, !dbg !3462
  %117 = load i64, i64* %116, align 8, !dbg !3462, !tbaa !559
  %118 = icmp eq i64 %117, 0, !dbg !3462
  br i1 %118, label %120, label %119, !dbg !3462

; <label>:119:                                    ; preds = %114
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #10, !dbg !3462
  call void @_exit(i32 1) #11, !dbg !3462
  unreachable, !dbg !3462

; <label>:120:                                    ; preds = %114
  %121 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3464, !tbaa !511
  call void @zfree(i8* %121) #10, !dbg !3465
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3466, !tbaa !511
  %122 = icmp eq i32 %112, 4, !dbg !3467
  br i1 %122, label %123, label %133, !dbg !3469

; <label>:123:                                    ; preds = %120
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i64 0, i64 0)) #10, !dbg !3470
  %124 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !3472, !tbaa !2486
  %125 = mul nsw i32 %124, 1000, !dbg !3474
  %126 = sext i32 %125 to i64, !dbg !3475
  %127 = call i64 @syncWrite(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0), i64 6, i64 %126) #10, !dbg !3476
  %128 = icmp eq i64 %127, -1, !dbg !3477
  br i1 %128, label %129, label %133, !dbg !3478

; <label>:129:                                    ; preds = %123
  %130 = call i32* @__errno() #10, !dbg !3479
  %131 = load i32, i32* %130, align 4, !dbg !3479, !tbaa !672
  %132 = call i8* @strerror(i32 %131) #10, !dbg !3481
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.130, i64 0, i64 0), i8* %132) #10, !dbg !3482
  br label %158, !dbg !3483

; <label>:133:                                    ; preds = %123, %120
  %134 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3484, !tbaa !1359
  %135 = trunc i64 %134 to i32, !dbg !3486
  %136 = call i32 @getpid() #10, !dbg !3487
  %137 = sext i32 %136 to i64, !dbg !3488
  %138 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %135, i64 %137) #10, !dbg !3489
  %139 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #10, !dbg !3490
  %140 = icmp eq i32 %139, -1, !dbg !3491
  br i1 %140, label %141, label %150, !dbg !3493

; <label>:141:                                    ; preds = %133
  %142 = call i32 @sleep(i32 1) #10, !dbg !3494
  %143 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3484, !tbaa !1359
  %144 = trunc i64 %143 to i32, !dbg !3486
  %145 = call i32 @getpid() #10, !dbg !3487
  %146 = sext i32 %145 to i64, !dbg !3488
  %147 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %144, i64 %146) #10, !dbg !3489
  %148 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #10, !dbg !3490
  %149 = icmp eq i32 %148, -1, !dbg !3491
  br i1 %149, label %171, label %150, !dbg !3493

; <label>:150:                                    ; preds = %189, %180, %171, %141, %133
  %151 = phi i32 [ %139, %133 ], [ %148, %141 ], [ %178, %171 ], [ %187, %180 ], [ %196, %189 ], !dbg !3490
  %152 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3495, !tbaa !2032
  %153 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %152, i32 %1, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readSyncBulkPayload, i8* null) #10, !dbg !3497
  %154 = icmp eq i32 %153, -1, !dbg !3498
  br i1 %154, label %160, label %155, !dbg !3499

; <label>:155:                                    ; preds = %150
  store i32 14, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3500, !tbaa !2385
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203) to <2 x i64>*), align 8, !dbg !3501, !tbaa !676
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !3502, !tbaa !2635
  store i32 %151, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3503, !tbaa !2605
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3504, !tbaa !1359
  store i64 %156, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3505, !tbaa !2508
  %157 = call i8* @zstrdup(i8* nonnull %8) #10, !dbg !3506
  store i8* %157, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3507, !tbaa !2670
  br label %170, !dbg !3508

; <label>:158:                                    ; preds = %26, %168, %44, %57, %110, %129, %198, %111
  %159 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3509, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %159, i32 %1, i32 3) #10, !dbg !3510
  br label %166, !dbg !3511

; <label>:160:                                    ; preds = %150
  %161 = call i32* @__errno() #10, !dbg !3512
  %162 = load i32, i32* %161, align 4, !dbg !3512, !tbaa !672
  %163 = call i8* @strerror(i32 %162) #10, !dbg !3514
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.133, i64 0, i64 0), i8* %163, i32 %1) #10, !dbg !3515
  %164 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3509, !tbaa !2032
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %164, i32 %1, i32 3) #10, !dbg !3510
  %165 = call i32 @close(i32 %151) #10, !dbg !3516
  br label %166, !dbg !3516

; <label>:166:                                    ; preds = %158, %160
  %167 = call i32 @close(i32 %1) #10, !dbg !3518
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3519, !tbaa !2398
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3520, !tbaa !2385
  br label %170, !dbg !3521

; <label>:168:                                    ; preds = %60, %30, %49, %83, %94, %107
  %169 = phi i8* [ %32, %30 ], [ %50, %49 ], [ %84, %83 ], [ %95, %94 ], [ %108, %107 ], [ %67, %60 ], !dbg !3522
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.134, i64 0, i64 0), i8* %169) #10, !dbg !3523
  call void @sdsfree(i8* %169) #10, !dbg !3524
  br label %158, !dbg !3525

; <label>:170:                                    ; preds = %111, %69, %30, %166, %155, %113, %109, %97, %86, %52, %13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3526
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3526
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3526
  ret void, !dbg !3526

; <label>:171:                                    ; preds = %141
  %172 = call i32 @sleep(i32 1) #10, !dbg !3494
  %173 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3484, !tbaa !1359
  %174 = trunc i64 %173 to i32, !dbg !3486
  %175 = call i32 @getpid() #10, !dbg !3487
  %176 = sext i32 %175 to i64, !dbg !3488
  %177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %174, i64 %176) #10, !dbg !3489
  %178 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #10, !dbg !3490
  %179 = icmp eq i32 %178, -1, !dbg !3491
  br i1 %179, label %180, label %150, !dbg !3493

; <label>:180:                                    ; preds = %171
  %181 = call i32 @sleep(i32 1) #10, !dbg !3494
  %182 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3484, !tbaa !1359
  %183 = trunc i64 %182 to i32, !dbg !3486
  %184 = call i32 @getpid() #10, !dbg !3487
  %185 = sext i32 %184 to i64, !dbg !3488
  %186 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %183, i64 %185) #10, !dbg !3489
  %187 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #10, !dbg !3490
  %188 = icmp eq i32 %187, -1, !dbg !3491
  br i1 %188, label %189, label %150, !dbg !3493

; <label>:189:                                    ; preds = %180
  %190 = call i32 @sleep(i32 1) #10, !dbg !3494
  %191 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3484, !tbaa !1359
  %192 = trunc i64 %191 to i32, !dbg !3486
  %193 = call i32 @getpid() #10, !dbg !3487
  %194 = sext i32 %193 to i64, !dbg !3488
  %195 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %192, i64 %194) #10, !dbg !3489
  %196 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #10, !dbg !3490
  %197 = icmp eq i32 %196, -1, !dbg !3491
  br i1 %197, label %198, label %150, !dbg !3493

; <label>:198:                                    ; preds = %189
  %199 = call i32 @sleep(i32 1) #10, !dbg !3494
  %200 = call i32* @__errno() #10, !dbg !3527
  %201 = load i32, i32* %200, align 4, !dbg !3527, !tbaa !672
  %202 = call i8* @strerror(i32 %201) #10, !dbg !3530
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.132, i64 0, i64 0), i8* %202) #10, !dbg !3531
  br label %158, !dbg !3532
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
define dso_local i32 @connectWithMaster() local_unnamed_addr #0 !dbg !3533 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3536, !tbaa !755
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3537, !tbaa !3538
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !3539, !tbaa !3540
  %4 = icmp eq i32 %3, 0, !dbg !3539
  %5 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 29, i64 0), align 8, !dbg !3539
  %6 = select i1 %4, i8* null, i8* %5, !dbg !3539
  %7 = tail call i32 @anetTcpNonBlockBestEffortBindConnect(i8* null, i8* %1, i32 %2, i8* %6) #10, !dbg !3541
  %8 = icmp eq i32 %7, -1, !dbg !3543
  br i1 %8, label %9, label %13, !dbg !3545

; <label>:9:                                      ; preds = %0
  %10 = tail call i32* @__errno() #10, !dbg !3546
  %11 = load i32, i32* %10, align 4, !dbg !3546, !tbaa !672
  %12 = tail call i8* @strerror(i32 %11) #10, !dbg !3548
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.135, i64 0, i64 0), i8* %12) #10, !dbg !3549
  br label %21, !dbg !3550

; <label>:13:                                     ; preds = %0
  %14 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3551, !tbaa !2032
  %15 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %14, i32 %7, i32 3, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @syncWithMaster, i8* null) #10, !dbg !3553
  %16 = icmp eq i32 %15, -1, !dbg !3554
  br i1 %16, label %17, label %19, !dbg !3555

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @close(i32 %7) #10, !dbg !3556
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.136, i64 0, i64 0)) #10, !dbg !3558
  br label %21, !dbg !3559

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3560, !tbaa !1359
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3561, !tbaa !2508
  store i32 %7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3562, !tbaa !2398
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3563, !tbaa !2385
  br label %21, !dbg !3564

; <label>:21:                                     ; preds = %19, %17, %9
  %22 = phi i32 [ -1, %9 ], [ -1, %17 ], [ 0, %19 ], !dbg !3565
  ret i32 %22, !dbg !3566
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @undoConnectWithMaster() local_unnamed_addr #0 !dbg !2568 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3567, !tbaa !2398
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3569, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %2, i32 %1, i32 3) #10, !dbg !3570
  %3 = tail call i32 @close(i32 %1) #10, !dbg !3571
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3572, !tbaa !2398
  ret void, !dbg !3573
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationAbortSyncTransfer() local_unnamed_addr #0 !dbg !3574 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3575, !tbaa !2385
  %2 = icmp eq i32 %1, 14, !dbg !3575
  br i1 %2, label %4, label %3, !dbg !3575

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 1951) #10, !dbg !3575
  tail call void @_exit(i32 1) #11, !dbg !3575
  unreachable, !dbg !3575

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3576, !tbaa !2398
  %6 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3579, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %6, i32 %5, i32 3) #10, !dbg !3580
  %7 = tail call i32 @close(i32 %5) #10, !dbg !3581
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3582, !tbaa !2398
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3583, !tbaa !2605
  %9 = tail call i32 @close(i32 %8) #10, !dbg !3584
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3585, !tbaa !2670
  %11 = tail call i32 @unlink(i8* %10) #10, !dbg !3586
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3587, !tbaa !2670
  tail call void @zfree(i8* %12) #10, !dbg !3588
  ret void, !dbg !3589
}

; Function Attrs: noredzone
declare dso_local i32 @unlink(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationSetMaster(i8*, i32) local_unnamed_addr #0 !dbg !3590 {
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3599, !tbaa !755
  %4 = icmp eq i8* %3, null, !dbg !3600
  tail call void @sdsfree(i8* %3) #10, !dbg !3601
  %5 = tail call i8* @sdsnew(i8* %0) #10, !dbg !3602
  store i8* %5, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3603, !tbaa !755
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3604, !tbaa !3538
  %6 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3605, !tbaa !2079
  %7 = icmp eq %struct.client* %6, null, !dbg !3607
  br i1 %7, label %9, label %8, !dbg !3608

; <label>:8:                                      ; preds = %2
  tail call void @freeClient(%struct.client* nonnull %6) #10, !dbg !3609
  br label %9, !dbg !3611

; <label>:9:                                      ; preds = %2, %8
  tail call void @disconnectAllBlockedClients() #10, !dbg !3612
  tail call void @disconnectSlaves() #10, !dbg !3613
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3614, !tbaa !2385
  switch i32 %10, label %12 [
    i32 14, label %11
    i32 2, label %15
  ], !dbg !3616

; <label>:11:                                     ; preds = %9
  tail call void @replicationAbortSyncTransfer() #10, !dbg !3617
  br label %19, !dbg !3618

; <label>:12:                                     ; preds = %9
  %13 = add i32 %10, -3, !dbg !3619
  %14 = icmp ugt i32 %13, 10, !dbg !3619
  br i1 %14, label %20, label %15, !dbg !3621

; <label>:15:                                     ; preds = %12, %9
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3622, !tbaa !2398
  %17 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3625, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %17, i32 %16, i32 3) #10, !dbg !3626
  %18 = tail call i32 @close(i32 %16) #10, !dbg !3627
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3628, !tbaa !2398
  br label %19

; <label>:19:                                     ; preds = %15, %11
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3629, !tbaa !2385
  br label %20, !dbg !3630

; <label>:20:                                     ; preds = %12, %19
  br i1 %4, label %21, label %22, !dbg !3631

; <label>:21:                                     ; preds = %20
  tail call void @replicationCacheMasterUsingMyself() #12, !dbg !3632
  br label %22, !dbg !3632

; <label>:22:                                     ; preds = %21, %20
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3634, !tbaa !2385
  ret void, !dbg !3635
}

; Function Attrs: noredzone
declare dso_local void @disconnectAllBlockedClients() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationCacheMasterUsingMyself() local_unnamed_addr #0 !dbg !3636 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3637, !tbaa !524
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3638, !tbaa !2431
  %2 = tail call %struct.client* @createClient(i32 -1) #10, !dbg !3642
  store %struct.client* %2, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3643, !tbaa !2079
  %3 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 21, !dbg !3644
  %4 = load i32, i32* %3, align 8, !dbg !3645, !tbaa !1082
  %5 = or i32 %4, 2, !dbg !3645
  store i32 %5, i32* %3, align 8, !dbg !3645, !tbaa !1082
  %6 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 22, !dbg !3646
  store i32 1, i32* %6, align 4, !dbg !3647, !tbaa !2429
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3648, !tbaa !2431
  %8 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 30, !dbg !3649
  store i64 %7, i64* %8, align 8, !dbg !3650, !tbaa !2004
  %9 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 29, !dbg !3651
  store i64 %7, i64* %9, align 8, !dbg !3652, !tbaa !2436
  %10 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 34, i64 0, !dbg !3653
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #10, !dbg !3654
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3655, !tbaa !2079
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 30, !dbg !3656
  %14 = load i64, i64* %13, align 8, !dbg !3656, !tbaa !2004
  %15 = icmp eq i64 %14, -1, !dbg !3657
  br i1 %15, label %16, label %20, !dbg !3658

; <label>:16:                                     ; preds = %0
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 21, !dbg !3659
  %18 = load i32, i32* %17, align 8, !dbg !3660, !tbaa !1082
  %19 = or i32 %18, 65536, !dbg !3660
  store i32 %19, i32* %17, align 8, !dbg !3660, !tbaa !1082
  br label %20, !dbg !3661

; <label>:20:                                     ; preds = %0, %16
  %21 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 34, i64 0, !dbg !3662
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #10, !dbg !3663
  %23 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3664, !tbaa !2079
  tail call void @unlinkClient(%struct.client* %23) #10, !dbg !3665
  %24 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3666, !tbaa !2079
  store i64 %24, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3667, !tbaa !2993
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3668, !tbaa !2079
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.158, i64 0, i64 0)) #10, !dbg !3669
  ret void, !dbg !3670
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationUnsetMaster() local_unnamed_addr #0 !dbg !3671 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3672, !tbaa !755
  %2 = icmp eq i8* %1, null, !dbg !3674
  br i1 %2, label %32, label %3, !dbg !3675

; <label>:3:                                      ; preds = %0
  tail call void @sdsfree(i8* nonnull %1) #10, !dbg !3676
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3677, !tbaa !755
  %4 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #10, !dbg !3678
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3680, !tbaa !524
  %6 = add nsw i64 %5, 1, !dbg !3681
  store i64 %6, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3682, !tbaa !1308
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #10, !dbg !3683
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !3685, !tbaa !470
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3686, !tbaa !1308
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %7, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #10, !dbg !3687
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3688, !tbaa !2079
  %9 = icmp eq %struct.client* %8, null, !dbg !3690
  br i1 %9, label %11, label %10, !dbg !3691

; <label>:10:                                     ; preds = %3
  tail call void @freeClient(%struct.client* nonnull %8) #10, !dbg !3692
  br label %11, !dbg !3692

; <label>:11:                                     ; preds = %3, %10
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3693, !tbaa !2993
  %13 = icmp eq %struct.client* %12, null, !dbg !3695
  br i1 %13, label %19, label %14, !dbg !3696

; <label>:14:                                     ; preds = %11
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #10, !dbg !3697
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3698, !tbaa !2993
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 21, !dbg !3699
  %17 = load i32, i32* %16, align 8, !dbg !3700, !tbaa !1082
  %18 = and i32 %17, -3, !dbg !3700
  store i32 %18, i32* %16, align 8, !dbg !3700, !tbaa !1082
  tail call void @freeClient(%struct.client* %15) #10, !dbg !3701
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3702, !tbaa !2993
  br label %19, !dbg !3703

; <label>:19:                                     ; preds = %11, %14
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3704, !tbaa !2385
  switch i32 %20, label %22 [
    i32 14, label %21
    i32 2, label %25
  ], !dbg !3706

; <label>:21:                                     ; preds = %19
  tail call void @replicationAbortSyncTransfer() #10, !dbg !3707
  br label %29, !dbg !3708

; <label>:22:                                     ; preds = %19
  %23 = add i32 %20, -3, !dbg !3709
  %24 = icmp ugt i32 %23, 10, !dbg !3709
  br i1 %24, label %30, label %25, !dbg !3711

; <label>:25:                                     ; preds = %22, %19
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3712, !tbaa !2398
  %27 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3715, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %27, i32 %26, i32 3) #10, !dbg !3716
  %28 = tail call i32 @close(i32 %26) #10, !dbg !3717
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3718, !tbaa !2398
  br label %29

; <label>:29:                                     ; preds = %25, %21
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3719, !tbaa !2385
  br label %30, !dbg !3720

; <label>:30:                                     ; preds = %22, %29
  tail call void @disconnectSlaves() #10, !dbg !3721
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3722, !tbaa !2385
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !3723, !tbaa !767
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3724, !tbaa !1359
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !3725, !tbaa !3726
  br label %32, !dbg !3727

; <label>:32:                                     ; preds = %0, %30
  ret void, !dbg !3727
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationHandleMasterDisconnection() local_unnamed_addr #8 !dbg !3728 {
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3729, !tbaa !2079
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3730, !tbaa !2385
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3731, !tbaa !1359
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3732, !tbaa !2775
  ret void, !dbg !3733
}

; Function Attrs: noredzone nounwind
define dso_local void @replicaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !3734 {
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3746, !tbaa !3748
  %4 = icmp eq i32 %3, 0, !dbg !3749
  br i1 %4, label %6, label %5, !dbg !3750

; <label>:5:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.138, i64 0, i64 0)) #10, !dbg !3751
  br label %68, !dbg !3753

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3754
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3754, !tbaa !1289
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3755
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3755, !tbaa !776
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3756
  %12 = load i8*, i8** %11, align 8, !dbg !3756, !tbaa !638
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0)) #13, !dbg !3757
  %14 = icmp eq i32 %13, 0, !dbg !3757
  br i1 %14, label %15, label %28, !dbg !3758

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3759
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3759, !tbaa !776
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !3760
  %19 = load i8*, i8** %18, align 8, !dbg !3760, !tbaa !638
  %20 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0)) #13, !dbg !3761
  %21 = icmp eq i32 %20, 0, !dbg !3761
  br i1 %21, label %22, label %28, !dbg !3762

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3763, !tbaa !755
  %24 = icmp eq i8* %23, null, !dbg !3764
  br i1 %24, label %66, label %25, !dbg !3765

; <label>:25:                                     ; preds = %22
  tail call void @replicationUnsetMaster() #12, !dbg !3766
  %26 = tail call i8* @sdsempty() #10, !dbg !3767
  %27 = tail call i8* @catClientInfoString(i8* %26, %struct.client* nonnull %0) #10, !dbg !3768
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.141, i64 0, i64 0), i8* %27) #10, !dbg !3770
  tail call void @sdsfree(i8* %27) #10, !dbg !3771
  br label %66, !dbg !3772

; <label>:28:                                     ; preds = %15, %6
  %29 = bitcast i64* %2 to i8*, !dbg !3773
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3773
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3774
  %31 = load i32, i32* %30, align 8, !dbg !3774, !tbaa !1082
  %32 = and i32 %31, 1, !dbg !3776
  %33 = icmp eq i32 %32, 0, !dbg !3776
  br i1 %33, label %35, label %34, !dbg !3777

; <label>:34:                                     ; preds = %28
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.142, i64 0, i64 0)) #10, !dbg !3778
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3780
  br label %68

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3781
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3781, !tbaa !776
  %38 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %37, i64* nonnull %2, i8* null) #10, !dbg !3784
  %39 = icmp eq i32 %38, 0, !dbg !3785
  br i1 %39, label %40, label %65, !dbg !3786

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3787, !tbaa !755
  %42 = icmp eq i8* %41, null, !dbg !3789
  %43 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3790, !tbaa !1289
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 1
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !3790, !tbaa !776
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %45, i64 0, i32 2
  %47 = load i8*, i8** %46, align 8, !dbg !3790, !tbaa !638
  br i1 %42, label %58, label %48, !dbg !3791

; <label>:48:                                     ; preds = %40
  %49 = call i32 @strcasecmp(i8* nonnull %41, i8* %47) #13, !dbg !3792
  %50 = icmp eq i32 %49, 0, !dbg !3792
  br i1 %50, label %51, label %58, !dbg !3793

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3794, !tbaa !3538
  %53 = sext i32 %52 to i64, !dbg !3795
  %54 = load i64, i64* %2, align 8, !dbg !3796, !tbaa !676
  %55 = icmp eq i64 %54, %53, !dbg !3797
  br i1 %55, label %56, label %58, !dbg !3798

; <label>:56:                                     ; preds = %51
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.143, i64 0, i64 0)) #10, !dbg !3799
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.144, i64 0, i64 0)) #10, !dbg !3801
  call void @addReplySds(%struct.client* nonnull %0, i8* %57) #10, !dbg !3802
  br label %65, !dbg !3803

; <label>:58:                                     ; preds = %40, %48, %51
  %59 = load i64, i64* %2, align 8, !dbg !3804, !tbaa !676
  %60 = trunc i64 %59 to i32, !dbg !3804
  call void @replicationSetMaster(i8* %47, i32 %60) #12, !dbg !3805
  %61 = call i8* @sdsempty() #10, !dbg !3806
  %62 = call i8* @catClientInfoString(i8* %61, %struct.client* nonnull %0) #10, !dbg !3807
  %63 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3809, !tbaa !755
  %64 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3810, !tbaa !3538
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.145, i64 0, i64 0), i8* %63, i32 %64, i8* %62) #10, !dbg !3811
  call void @sdsfree(i8* %62) #10, !dbg !3812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3780
  br label %66

; <label>:65:                                     ; preds = %35, %56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3780
  br label %68

; <label>:66:                                     ; preds = %58, %22, %25
  %67 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3813, !tbaa !2016
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %67) #10, !dbg !3814
  br label %68, !dbg !3815

; <label>:68:                                     ; preds = %65, %34, %66, %5
  ret void, !dbg !3815
}

; Function Attrs: noredzone
declare dso_local i8* @catClientInfoString(i8*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @roleCommand(%struct.client*) local_unnamed_addr #0 !dbg !3816 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca [46 x i8], align 16
  %4 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3832, !tbaa !755
  %5 = icmp eq i8* %4, null, !dbg !3833
  br i1 %5, label %6, label %48, !dbg !3834

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.listIter* %2 to i8*, !dbg !3835
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3835
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #10, !dbg !3837
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 6) #10, !dbg !3838
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3839, !tbaa !524
  tail call void @addReplyLongLong(%struct.client* %0, i64 %8) #10, !dbg !3840
  %9 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #10, !dbg !3841
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3843, !tbaa !558
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #10, !dbg !3845
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !3846
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3848
  br i1 %12, label %45, label %13, !dbg !3848

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  br label %15, !dbg !3848

; <label>:15:                                     ; preds = %13, %41
  %16 = phi %struct.listNode* [ %11, %13 ], [ %43, %41 ]
  %17 = phi i32 [ 0, %13 ], [ %42, %41 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 2, !dbg !3849
  %19 = bitcast i8** %18 to %struct.client**, !dbg !3849
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !3849, !tbaa !794
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %14) #7, !dbg !3851
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 36, i64 0, !dbg !3853
  %22 = load i8, i8* %21, align 1, !dbg !3855, !tbaa !470
  %23 = icmp eq i8 %22, 0, !dbg !3857
  br i1 %23, label %24, label %29, !dbg !3858

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 1, !dbg !3859
  %26 = load i32, i32* %25, align 8, !dbg !3859, !tbaa !479
  %27 = call i32 @anetPeerToString(i32 %26, i8* nonnull %14, i64 46, i32* null) #10, !dbg !3862
  %28 = icmp eq i32 %27, -1, !dbg !3863
  br i1 %28, label %41, label %29, !dbg !3864, !llvm.loop !3865

; <label>:29:                                     ; preds = %24, %15
  %30 = phi i8* [ %21, %15 ], [ %14, %24 ], !dbg !3867
  %31 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 23, !dbg !3868
  %32 = load i32, i32* %31, align 8, !dbg !3868, !tbaa !799
  %33 = icmp eq i32 %32, 9, !dbg !3870
  br i1 %33, label %34, label %41, !dbg !3871, !llvm.loop !3865

; <label>:34:                                     ; preds = %29
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #10, !dbg !3872
  call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %30) #10, !dbg !3873
  %35 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 35, !dbg !3874
  %36 = load i32, i32* %35, align 4, !dbg !3874, !tbaa !498
  %37 = sext i32 %36 to i64, !dbg !3875
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %37) #10, !dbg !3876
  %38 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 31, !dbg !3877
  %39 = load i64, i64* %38, align 8, !dbg !3877, !tbaa !1964
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %39) #10, !dbg !3878
  %40 = add nsw i32 %17, 1, !dbg !3879
  br label %41, !dbg !3866

; <label>:41:                                     ; preds = %29, %24, %34
  %42 = phi i32 [ %40, %34 ], [ %17, %24 ], [ %17, %29 ], !dbg !3867
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %14) #7, !dbg !3866
  %43 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !3846
  %44 = icmp eq %struct.listNode* %43, null, !dbg !3848
  br i1 %44, label %45, label %15, !dbg !3848

; <label>:45:                                     ; preds = %41, %6
  %46 = phi i32 [ 0, %6 ], [ %42, %41 ], !dbg !3836
  %47 = sext i32 %46 to i64, !dbg !3880
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %9, i64 %47) #10, !dbg !3881
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3882
  br label %70, !dbg !3883

; <label>:48:                                     ; preds = %1
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 5) #10, !dbg !3885
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0), i64 5) #10, !dbg !3886
  %49 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3887, !tbaa !755
  tail call void @addReplyBulkCString(%struct.client* %0, i8* %49) #10, !dbg !3888
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3889, !tbaa !3538
  %51 = sext i32 %50 to i64, !dbg !3890
  tail call void @addReplyLongLong(%struct.client* %0, i64 %51) #10, !dbg !3891
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3892, !tbaa !2385
  %53 = add i32 %52, -3, !dbg !3895
  %54 = icmp ugt i32 %53, 10, !dbg !3895
  br i1 %54, label %55, label %61, !dbg !3896

; <label>:55:                                     ; preds = %48
  switch i32 %52, label %60 [
    i32 0, label %61
    i32 1, label %56
    i32 2, label %57
    i32 14, label %58
    i32 15, label %59
  ], !dbg !3897

; <label>:56:                                     ; preds = %55
  br label %61, !dbg !3899

; <label>:57:                                     ; preds = %55
  br label %61, !dbg !3901

; <label>:58:                                     ; preds = %55
  br label %61, !dbg !3902

; <label>:59:                                     ; preds = %55
  br label %61, !dbg !3903

; <label>:60:                                     ; preds = %55
  br label %61, !dbg !3904

; <label>:61:                                     ; preds = %55, %48, %56, %57, %58, %59, %60
  %62 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i64 0, i64 0), %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i64 0, i64 0), %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), %58 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i64 0, i64 0), %57 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0), %56 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0), %48 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), %55 ], !dbg !3905
  tail call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %62) #10, !dbg !3906
  %63 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3907, !tbaa !2079
  %64 = icmp eq %struct.client* %63, null, !dbg !3908
  br i1 %64, label %68, label %65, !dbg !3908

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.client, %struct.client* %63, i64 0, i32 30, !dbg !3909
  %67 = load i64, i64* %66, align 8, !dbg !3909, !tbaa !2004
  br label %68, !dbg !3908

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i64 [ %67, %65 ], [ -1, %61 ], !dbg !3908
  tail call void @addReplyLongLong(%struct.client* %0, i64 %69) #10, !dbg !3910
  br label %70

; <label>:70:                                     ; preds = %68, %45
  ret void, !dbg !3911
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
define dso_local void @replicationCacheMaster(%struct.client*) local_unnamed_addr #0 !dbg !3912 {
  %2 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3916, !tbaa !2079
  %3 = icmp ne %struct.client* %2, null, !dbg !3916
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3916
  %5 = icmp eq %struct.client* %4, null, !dbg !3916
  %6 = and i1 %3, %5, !dbg !3916
  br i1 %6, label %8, label %7, !dbg !3916

; <label>:7:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2192) #10, !dbg !3916
  tail call void @_exit(i32 1) #11, !dbg !3916
  unreachable, !dbg !3916

; <label>:8:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i64 0, i64 0)) #10, !dbg !3917
  tail call void @unlinkClient(%struct.client* %0) #10, !dbg !3918
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3919, !tbaa !2079
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i64 0, i32 4, !dbg !3920
  %11 = load i8*, i8** %10, align 8, !dbg !3920, !tbaa !3921
  tail call void @sdsclear(i8* %11) #10, !dbg !3922
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3923, !tbaa !2079
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 6, !dbg !3924
  %14 = load i8*, i8** %13, align 8, !dbg !3924, !tbaa !3925
  tail call void @sdsclear(i8* %14) #10, !dbg !3926
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3927, !tbaa !2079
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 30, !dbg !3928
  %17 = load i64, i64* %16, align 8, !dbg !3928, !tbaa !2004
  %18 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 29, !dbg !3929
  store i64 %17, i64* %18, align 8, !dbg !3930, !tbaa !2436
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3931
  %20 = load i32, i32* %19, align 8, !dbg !3931, !tbaa !1082
  %21 = and i32 %20, 8, !dbg !3933
  %22 = icmp eq i32 %21, 0, !dbg !3933
  br i1 %22, label %24, label %23, !dbg !3934

; <label>:23:                                     ; preds = %8
  tail call void @discardTransaction(%struct.client* nonnull %0) #10, !dbg !3935
  br label %24, !dbg !3935

; <label>:24:                                     ; preds = %8, %23
  %25 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !3936
  %26 = load %struct.list*, %struct.list** %25, align 8, !dbg !3936, !tbaa !3937
  tail call void @listEmpty(%struct.list* %26) #10, !dbg !3938
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !3939
  %28 = bitcast i64* %27 to <2 x i64>*, !dbg !3940
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !dbg !3940, !tbaa !470
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !3941
  store i32 0, i32* %29, align 8, !dbg !3942, !tbaa !3943
  tail call void @resetClient(%struct.client* nonnull %0) #10, !dbg !3944
  %30 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3945, !tbaa !2079
  store i64 %30, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3946, !tbaa !2993
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !3947
  %32 = load i8*, i8** %31, align 8, !dbg !3947, !tbaa !3949
  %33 = icmp eq i8* %32, null, !dbg !3950
  br i1 %33, label %35, label %34, !dbg !3951

; <label>:34:                                     ; preds = %24
  tail call void @sdsfree(i8* nonnull %32) #10, !dbg !3952
  store i8* null, i8** %31, align 8, !dbg !3954, !tbaa !3949
  br label %35, !dbg !3955

; <label>:35:                                     ; preds = %24, %34
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3956, !tbaa !2079
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3958, !tbaa !2385
  %36 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3959, !tbaa !1359
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3960, !tbaa !2775
  ret void, !dbg !3961
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
define dso_local void @replicationScriptCacheInit() local_unnamed_addr #0 !dbg !3962 {
  store i32 10000, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !3963, !tbaa !3964
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @replScriptCacheDictType, i8* null) #10, !dbg !3965
  store %struct.dict* %1, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !3966, !tbaa !1594
  %2 = tail call %struct.list* @listCreate() #10, !dbg !3967
  store %struct.list* %2, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !3968, !tbaa !1597
  ret void, !dbg !3969
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
define dso_local void @replicationScriptCacheAdd(i8*) local_unnamed_addr #0 !dbg !3970 {
  %2 = tail call i8* @sdsdup(i8* %0) #10, !dbg !3982
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !3984, !tbaa !1597
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !3984
  %5 = load i64, i64* %4, align 8, !dbg !3984, !tbaa !559
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !3985, !tbaa !3964
  %7 = zext i32 %6 to i64, !dbg !3986
  %8 = icmp eq i64 %5, %7, !dbg !3987
  br i1 %8, label %9, label %20, !dbg !3988

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 1, !dbg !3989
  %11 = load %struct.listNode*, %struct.listNode** %10, align 8, !dbg !3989, !tbaa !3990
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !3992
  %13 = load i8*, i8** %12, align 8, !dbg !3992, !tbaa !794
  %14 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !3994, !tbaa !1594
  %15 = tail call i32 @dictDelete(%struct.dict* %14, i8* %13) #10, !dbg !3995
  %16 = icmp eq i32 %15, 0, !dbg !3997
  br i1 %16, label %18, label %17, !dbg !3997

; <label>:17:                                     ; preds = %9
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2391) #10, !dbg !3997
  tail call void @_exit(i32 1) #11, !dbg !3997
  unreachable, !dbg !3997

; <label>:18:                                     ; preds = %9
  %19 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !3998, !tbaa !1597
  tail call void @listDelNode(%struct.list* %19, %struct.listNode* %11) #10, !dbg !3999
  br label %20, !dbg !4000

; <label>:20:                                     ; preds = %18, %1
  %21 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4001, !tbaa !1594
  %22 = tail call i32 @dictAdd(%struct.dict* %21, i8* %2, i8* null) #10, !dbg !4002
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4003, !tbaa !1597
  %24 = tail call %struct.list* @listAddNodeHead(%struct.list* %23, i8* %2) #10, !dbg !4004
  %25 = icmp eq i32 %22, 0, !dbg !4005
  br i1 %25, label %27, label %26, !dbg !4005

; <label>:26:                                     ; preds = %20
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2398) #10, !dbg !4005
  tail call void @_exit(i32 1) #11, !dbg !4005
  unreachable, !dbg !4005

; <label>:27:                                     ; preds = %20
  ret void, !dbg !4006
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
define dso_local i32 @replicationScriptCacheExists(i8*) local_unnamed_addr #0 !dbg !4007 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4013, !tbaa !1594
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %0) #10, !dbg !4014
  %4 = icmp ne %struct.dictEntry* %3, null, !dbg !4015
  %5 = zext i1 %4 to i32, !dbg !4015
  ret i32 %5, !dbg !4016
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationRequestAckFromSlaves() local_unnamed_addr #8 !dbg !4017 {
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4018, !tbaa !4019
  ret void, !dbg !4020
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationCountAcksByOffset(i64) local_unnamed_addr #0 !dbg !4021 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4032
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4034, !tbaa !558
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #10, !dbg !4036
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4037
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4039
  br i1 %6, label %26, label %7, !dbg !4039

; <label>:7:                                      ; preds = %1, %22
  %8 = phi %struct.listNode* [ %24, %22 ], [ %5, %1 ]
  %9 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !4040
  %11 = bitcast i8** %10 to %struct.client**, !dbg !4040
  %12 = load %struct.client*, %struct.client** %11, align 8, !dbg !4040, !tbaa !794
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 23, !dbg !4042
  %14 = load i32, i32* %13, align 8, !dbg !4042, !tbaa !799
  %15 = icmp eq i32 %14, 9, !dbg !4044
  br i1 %15, label %16, label %22, !dbg !4045, !llvm.loop !4046

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 31, !dbg !4048
  %18 = load i64, i64* %17, align 8, !dbg !4048, !tbaa !1964
  %19 = icmp sge i64 %18, %0, !dbg !4050
  %20 = zext i1 %19 to i32, !dbg !4051
  %21 = add nsw i32 %9, %20, !dbg !4051
  br label %22, !dbg !4047

; <label>:22:                                     ; preds = %7, %16
  %23 = phi i32 [ %21, %16 ], [ %9, %7 ], !dbg !4052
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4037
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4039
  br i1 %25, label %26, label %7, !dbg !4039

; <label>:26:                                     ; preds = %22, %1
  %27 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !4033
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4053
  ret i32 %27, !dbg !4054
}

; Function Attrs: noredzone nounwind
define dso_local void @waitCommand(%struct.client*) local_unnamed_addr #0 !dbg !4055 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !4063
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4063
  %6 = bitcast i64* %4 to i8*, !dbg !4064
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4064
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 41, !dbg !4065
  %8 = load i64, i64* %7, align 8, !dbg !4065, !tbaa !4066
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4068, !tbaa !755
  %10 = icmp eq i8* %9, null, !dbg !4070
  br i1 %10, label %12, label %11, !dbg !4071

; <label>:11:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.163, i64 0, i64 0)) #10, !dbg !4072
  br label %70, !dbg !4074

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4075
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4075, !tbaa !1289
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !4077
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4077, !tbaa !776
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %4, i8* null) #10, !dbg !4079
  %18 = icmp eq i32 %17, 0, !dbg !4080
  br i1 %18, label %19, label %70, !dbg !4081

; <label>:19:                                     ; preds = %12
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4082, !tbaa !1289
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4084
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4084, !tbaa !776
  %23 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, i64* nonnull %3, i32 1) #10, !dbg !4086
  %24 = icmp eq i32 %23, 0, !dbg !4087
  br i1 %24, label %25, label %70, !dbg !4088

; <label>:25:                                     ; preds = %19
  %26 = load i64, i64* %7, align 8, !dbg !4089, !tbaa !4066
  %27 = bitcast %struct.listIter* %2 to i8*, !dbg !4092
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4092
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4094, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %2) #10, !dbg !4096
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4097
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4099
  br i1 %30, label %50, label %31, !dbg !4099

; <label>:31:                                     ; preds = %25, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %25 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4100
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4100
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4100, !tbaa !794
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4102
  %38 = load i32, i32* %37, align 8, !dbg !4102, !tbaa !799
  %39 = icmp eq i32 %38, 9, !dbg !4103
  br i1 %39, label %40, label %46, !dbg !4104, !llvm.loop !4046

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4105
  %42 = load i64, i64* %41, align 8, !dbg !4105, !tbaa !1964
  %43 = icmp sge i64 %42, %26, !dbg !4106
  %44 = zext i1 %43 to i32, !dbg !4107
  %45 = add nsw i32 %33, %44, !dbg !4107
  br label %46, !dbg !4108

; <label>:46:                                     ; preds = %40, %31
  %47 = phi i32 [ %45, %40 ], [ %33, %31 ], !dbg !4109
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4097
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4099
  br i1 %49, label %50, label %31, !dbg !4099

; <label>:50:                                     ; preds = %46, %25
  %51 = phi i32 [ 0, %25 ], [ %47, %46 ], !dbg !4093
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4110
  %52 = sext i32 %51 to i64, !dbg !4111
  %53 = load i64, i64* %4, align 8, !dbg !4113, !tbaa !676
  %54 = icmp sgt i64 %53, %52, !dbg !4115
  br i1 %54, label %55, label %60, !dbg !4116

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4117
  %57 = load i32, i32* %56, align 8, !dbg !4117, !tbaa !1082
  %58 = and i32 %57, 8, !dbg !4118
  %59 = icmp eq i32 %58, 0, !dbg !4118
  br i1 %59, label %61, label %60, !dbg !4119

; <label>:60:                                     ; preds = %55, %50
  call void @addReplyLongLong(%struct.client* %0, i64 %52) #10, !dbg !4120
  br label %70, !dbg !4122

; <label>:61:                                     ; preds = %55
  %62 = load i64, i64* %3, align 8, !dbg !4123, !tbaa !522
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 0, !dbg !4124
  store i64 %62, i64* %63, align 8, !dbg !4125, !tbaa !4126
  %64 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 10, !dbg !4127
  store i64 %8, i64* %64, align 8, !dbg !4128, !tbaa !4129
  %65 = trunc i64 %53 to i32, !dbg !4130
  %66 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 9, !dbg !4131
  store i32 %65, i32* %66, align 4, !dbg !4132, !tbaa !4133
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4134, !tbaa !4135
  %68 = bitcast %struct.client* %0 to i8*, !dbg !4136
  %69 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %68) #10, !dbg !4137
  call void @blockClient(%struct.client* nonnull %0, i32 2) #10, !dbg !4138
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4139, !tbaa !4019
  br label %70, !dbg !4141

; <label>:70:                                     ; preds = %19, %12, %61, %60, %11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4141
  ret void, !dbg !4141
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockClient(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @unblockClientWaitingReplicas(%struct.client*) local_unnamed_addr #0 !dbg !4142 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4147, !tbaa !4135
  %3 = bitcast %struct.client* %0 to i8*, !dbg !4148
  %4 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %3) #10, !dbg !4149
  %5 = icmp eq %struct.listNode* %4, null, !dbg !4151
  br i1 %5, label %6, label %7, !dbg !4151

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2502) #10, !dbg !4151
  tail call void @_exit(i32 1) #11, !dbg !4151
  unreachable, !dbg !4151

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4152, !tbaa !4135
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %4) #10, !dbg !4153
  ret void, !dbg !4154
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processClientsWaitingReplicas() local_unnamed_addr #0 !dbg !4155 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4168
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4168
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4169, !tbaa !4135
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #10, !dbg !4171
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4172
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4174
  br i1 %6, label %63, label %7, !dbg !4174

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*
  br label %9, !dbg !4174

; <label>:9:                                      ; preds = %7, %58
  %10 = phi %struct.listNode* [ %5, %7 ], [ %61, %58 ]
  %11 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %12 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !4175
  %14 = bitcast i8** %13 to %struct.client**, !dbg !4175
  %15 = load %struct.client*, %struct.client** %14, align 8, !dbg !4175, !tbaa !794
  %16 = icmp ne i64 %11, 0, !dbg !4177
  %17 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 10
  %18 = load i64, i64* %17, align 8, !dbg !4178, !tbaa !4129
  %19 = icmp sgt i64 %11, %18, !dbg !4179
  %20 = and i1 %16, %19, !dbg !4180
  br i1 %20, label %21, label %27, !dbg !4180

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4181
  %23 = load i32, i32* %22, align 4, !dbg !4181, !tbaa !4133
  %24 = icmp sgt i32 %12, %23, !dbg !4182
  br i1 %24, label %25, label %27, !dbg !4183

; <label>:25:                                     ; preds = %21
  call void @unblockClient(%struct.client* nonnull %15) #10, !dbg !4184
  %26 = sext i32 %12 to i64, !dbg !4186
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %26) #10, !dbg !4187
  br label %58, !dbg !4188

; <label>:27:                                     ; preds = %9, %21
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4191
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4193, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %1) #10, !dbg !4195
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4196
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4198
  br i1 %30, label %50, label %31, !dbg !4198

; <label>:31:                                     ; preds = %27, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %27 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %27 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4199
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4199
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4199, !tbaa !794
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4201
  %38 = load i32, i32* %37, align 8, !dbg !4201, !tbaa !799
  %39 = icmp eq i32 %38, 9, !dbg !4202
  br i1 %39, label %40, label %46, !dbg !4203, !llvm.loop !4046

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4204
  %42 = load i64, i64* %41, align 8, !dbg !4204, !tbaa !1964
  %43 = icmp sge i64 %42, %18, !dbg !4205
  %44 = zext i1 %43 to i32, !dbg !4206
  %45 = add nsw i32 %33, %44, !dbg !4206
  br label %46, !dbg !4207

; <label>:46:                                     ; preds = %40, %31
  %47 = phi i32 [ %45, %40 ], [ %33, %31 ], !dbg !4208
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4196
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4198
  br i1 %49, label %50, label %31, !dbg !4198

; <label>:50:                                     ; preds = %46, %27
  %51 = phi i32 [ 0, %27 ], [ %47, %46 ], !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4209
  %52 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4211
  %53 = load i32, i32* %52, align 4, !dbg !4211, !tbaa !4133
  %54 = icmp slt i32 %51, %53, !dbg !4213
  br i1 %54, label %58, label %55, !dbg !4214

; <label>:55:                                     ; preds = %50
  %56 = load i64, i64* %17, align 8, !dbg !4215, !tbaa !4129
  call void @unblockClient(%struct.client* nonnull %15) #10, !dbg !4217
  %57 = sext i32 %51 to i64, !dbg !4218
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %57) #10, !dbg !4219
  br label %58, !dbg !4220

; <label>:58:                                     ; preds = %55, %50, %25
  %59 = phi i32 [ %12, %25 ], [ %51, %55 ], [ %12, %50 ], !dbg !4221
  %60 = phi i64 [ %11, %25 ], [ %56, %55 ], [ %11, %50 ], !dbg !4221
  %61 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4172
  %62 = icmp eq %struct.listNode* %61, null, !dbg !4174
  br i1 %62, label %63, label %9, !dbg !4174, !llvm.loop !4222

; <label>:63:                                     ; preds = %58, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4224
  ret void, !dbg !4224
}

; Function Attrs: noredzone
declare dso_local void @unblockClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @replicationGetSlaveOffset() local_unnamed_addr #9 !dbg !4225 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4229, !tbaa !755
  %2 = icmp eq i8* %1, null, !dbg !4231
  br i1 %2, label %15, label %3, !dbg !4232

; <label>:3:                                      ; preds = %0
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4233, !tbaa !2079
  %5 = icmp eq %struct.client* %4, null, !dbg !4236
  br i1 %5, label %6, label %9, !dbg !4237

; <label>:6:                                      ; preds = %3
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !4238, !tbaa !2993
  %8 = icmp eq %struct.client* %7, null, !dbg !4240
  br i1 %8, label %15, label %9, !dbg !4241

; <label>:9:                                      ; preds = %6, %3
  %10 = phi %struct.client* [ %4, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 30, !dbg !4242
  %12 = load i64, i64* %11, align 8, !dbg !4244, !tbaa !2004
  %13 = icmp sgt i64 %12, 0, !dbg !4245
  %14 = select i1 %13, i64 %12, i64 0, !dbg !4245
  ret i64 %14, !dbg !4245

; <label>:15:                                     ; preds = %0, %6
  ret i64 0, !dbg !4246
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCron() local_unnamed_addr #0 !dbg !417 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = alloca [1 x %struct.redisObject*], align 8
  %4 = alloca %struct.listIter, align 8
  %5 = alloca %struct.listIter, align 8
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4247, !tbaa !755
  %7 = icmp eq i8* %6, null, !dbg !4249
  br i1 %7, label %32, label %8, !dbg !4250

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4251, !tbaa !2385
  %10 = icmp ne i32 %9, 2, !dbg !4252
  %11 = add i32 %9, -3, !dbg !4253
  %12 = icmp ugt i32 %11, 10, !dbg !4253
  %13 = and i1 %10, %12, !dbg !4255
  br i1 %13, label %32, label %14, !dbg !4255

; <label>:14:                                     ; preds = %8
  %15 = tail call i64 @time(i64* null) #10, !dbg !4256
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4257, !tbaa !2508
  %17 = sub nsw i64 %15, %16, !dbg !4258
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4259, !tbaa !4260
  %19 = sext i32 %18 to i64, !dbg !4261
  %20 = icmp sgt i64 %17, %19, !dbg !4262
  br i1 %20, label %21, label %32, !dbg !4263

; <label>:21:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.165, i64 0, i64 0)) #10, !dbg !4264
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4266, !tbaa !2385
  switch i32 %22, label %24 [
    i32 14, label %23
    i32 2, label %27
  ], !dbg !4268

; <label>:23:                                     ; preds = %21
  tail call void @replicationAbortSyncTransfer() #10, !dbg !4269
  br label %31, !dbg !4270

; <label>:24:                                     ; preds = %21
  %25 = add i32 %22, -3, !dbg !4271
  %26 = icmp ugt i32 %25, 10, !dbg !4271
  br i1 %26, label %32, label %27, !dbg !4273

; <label>:27:                                     ; preds = %24, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4274, !tbaa !2398
  %29 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4277, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %29, i32 %28, i32 3) #10, !dbg !4278
  %30 = tail call i32 @close(i32 %28) #10, !dbg !4279
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4280, !tbaa !2398
  br label %31

; <label>:31:                                     ; preds = %27, %23
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4281, !tbaa !2385
  br label %32, !dbg !4282

; <label>:32:                                     ; preds = %8, %31, %24, %0, %14
  %33 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4283, !tbaa !755
  %34 = icmp ne i8* %33, null, !dbg !4285
  %35 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4286
  %36 = icmp eq i32 %35, 14, !dbg !4287
  %37 = and i1 %34, %36, !dbg !4288
  br i1 %37, label %38, label %58, !dbg !4288

; <label>:38:                                     ; preds = %32
  %39 = tail call i64 @time(i64* null) #10, !dbg !4289
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4290, !tbaa !2508
  %41 = sub nsw i64 %39, %40, !dbg !4291
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4292, !tbaa !4260
  %43 = sext i32 %42 to i64, !dbg !4293
  %44 = icmp sgt i64 %41, %43, !dbg !4294
  br i1 %44, label %47, label %45, !dbg !4295

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4296
  br label %58, !dbg !4295

; <label>:47:                                     ; preds = %38
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.166, i64 0, i64 0)) #10, !dbg !4298
  %48 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4300, !tbaa !2385
  switch i32 %48, label %50 [
    i32 14, label %49
    i32 2, label %53
  ], !dbg !4302

; <label>:49:                                     ; preds = %47
  tail call void @replicationAbortSyncTransfer() #10, !dbg !4303
  br label %57, !dbg !4304

; <label>:50:                                     ; preds = %47
  %51 = add i32 %48, -3, !dbg !4305
  %52 = icmp ugt i32 %51, 10, !dbg !4305
  br i1 %52, label %58, label %53, !dbg !4307

; <label>:53:                                     ; preds = %50, %47
  %54 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4308, !tbaa !2398
  %55 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4311, !tbaa !2032
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %55, i32 %54, i32 3) #10, !dbg !4312
  %56 = tail call i32 @close(i32 %54) #10, !dbg !4313
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4314, !tbaa !2398
  br label %57

; <label>:57:                                     ; preds = %53, %49
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4315, !tbaa !2385
  br label %80, !dbg !4316

; <label>:58:                                     ; preds = %45, %50, %32
  %59 = phi i32 [ %46, %45 ], [ %48, %50 ], [ %35, %32 ], !dbg !4296
  %60 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4317, !tbaa !755
  %61 = icmp ne i8* %60, null, !dbg !4318
  %62 = icmp eq i32 %59, 15, !dbg !4319
  %63 = and i1 %61, %62, !dbg !4320
  br i1 %63, label %64, label %77, !dbg !4320

; <label>:64:                                     ; preds = %58
  %65 = tail call i64 @time(i64* null) #10, !dbg !4321
  %66 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4322, !tbaa !2079
  %67 = getelementptr inbounds %struct.client, %struct.client* %66, i64 0, i32 19, !dbg !4323
  %68 = load i64, i64* %67, align 8, !dbg !4323, !tbaa !3210
  %69 = sub nsw i64 %65, %68, !dbg !4324
  %70 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4325, !tbaa !4260
  %71 = sext i32 %70 to i64, !dbg !4326
  %72 = icmp sgt i64 %69, %71, !dbg !4327
  br i1 %72, label %73, label %75, !dbg !4328

; <label>:73:                                     ; preds = %64
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.167, i64 0, i64 0)) #10, !dbg !4329
  %74 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4331, !tbaa !2079
  tail call void @freeClient(%struct.client* %74) #10, !dbg !4332
  br label %75, !dbg !4333

; <label>:75:                                     ; preds = %64, %73
  %76 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4334, !tbaa !2385
  br label %77, !dbg !4334

; <label>:77:                                     ; preds = %75, %58
  %78 = phi i32 [ %76, %75 ], [ %59, %58 ], !dbg !4334
  %79 = icmp eq i32 %78, 1, !dbg !4336
  br i1 %79, label %80, label %86, !dbg !4316

; <label>:80:                                     ; preds = %57, %77
  %81 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4337, !tbaa !755
  %82 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !4339, !tbaa !3538
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.168, i64 0, i64 0), i8* %81, i32 %82) #10, !dbg !4340
  %83 = tail call i32 @connectWithMaster() #12, !dbg !4341
  %84 = icmp eq i32 %83, 0, !dbg !4343
  br i1 %84, label %85, label %86, !dbg !4344

; <label>:85:                                     ; preds = %80
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i64 0, i64 0)) #10, !dbg !4345
  br label %86, !dbg !4347

; <label>:86:                                     ; preds = %80, %85, %77
  %87 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4348, !tbaa !755
  %88 = icmp ne i8* %87, null, !dbg !4350
  %89 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4351
  %90 = icmp ne %struct.client* %89, null, !dbg !4352
  %91 = and i1 %88, %90, !dbg !4353
  br i1 %91, label %92, label %103, !dbg !4353

; <label>:92:                                     ; preds = %86
  %93 = getelementptr inbounds %struct.client, %struct.client* %89, i64 0, i32 21, !dbg !4354
  %94 = load i32, i32* %93, align 8, !dbg !4354, !tbaa !1082
  %95 = and i32 %94, 65536, !dbg !4355
  %96 = icmp eq i32 %95, 0, !dbg !4355
  br i1 %96, label %97, label %103, !dbg !4356

; <label>:97:                                     ; preds = %92
  %98 = or i32 %94, 8192, !dbg !4359
  store i32 %98, i32* %93, align 8, !dbg !4359, !tbaa !1082
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %89, i64 3) #10, !dbg !4360
  tail call void @addReplyBulkCString(%struct.client* nonnull %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #10, !dbg !4361
  tail call void @addReplyBulkCString(%struct.client* nonnull %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #10, !dbg !4362
  %99 = getelementptr inbounds %struct.client, %struct.client* %89, i64 0, i32 30, !dbg !4363
  %100 = load i64, i64* %99, align 8, !dbg !4363, !tbaa !2004
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %89, i64 %100) #10, !dbg !4364
  %101 = load i32, i32* %93, align 8, !dbg !4365, !tbaa !1082
  %102 = and i32 %101, -8193, !dbg !4365
  store i32 %102, i32* %93, align 8, !dbg !4365, !tbaa !1082
  br label %103, !dbg !4366

; <label>:103:                                    ; preds = %92, %97, %86
  %104 = bitcast %struct.listIter* %2 to i8*, !dbg !4367
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #7, !dbg !4367
  %105 = bitcast [1 x %struct.redisObject*]* %3 to i8*, !dbg !4368
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %105) #7, !dbg !4368
  %106 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4370, !tbaa !522
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 182), align 4, !dbg !4371, !tbaa !4372
  %108 = sext i32 %107 to i64, !dbg !4373
  %109 = srem i64 %106, %108, !dbg !4374
  %110 = icmp eq i64 %109, 0, !dbg !4375
  br i1 %110, label %111, label %132, !dbg !4376

; <label>:111:                                    ; preds = %103
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4377, !tbaa !558
  %113 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 5, !dbg !4377
  %114 = load i64, i64* %113, align 8, !dbg !4377, !tbaa !559
  %115 = icmp eq i64 %114, 0, !dbg !4377
  br i1 %115, label %132, label %116, !dbg !4378

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !4379, !tbaa !3748
  %118 = icmp eq i32 %117, 0, !dbg !4380
  br i1 %118, label %127, label %119, !dbg !4381

; <label>:119:                                    ; preds = %116
  %120 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4382, !tbaa !4383
  %121 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %120, i64 0, i32 17, !dbg !4384
  %122 = load i64, i64* %121, align 8, !dbg !4384, !tbaa !4385
  %123 = icmp eq i64 %122, 0, !dbg !4387
  br i1 %123, label %127, label %124, !dbg !4388

; <label>:124:                                    ; preds = %119
  %125 = tail call i32 @clientsArePaused() #10, !dbg !4389
  %126 = icmp eq i32 %125, 0, !dbg !4388
  br i1 %126, label %127, label %132, !dbg !4390

; <label>:127:                                    ; preds = %124, %116, %119
  %128 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i64 4) #10, !dbg !4391
  %129 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %3, i64 0, i64 0, !dbg !4394
  store %struct.redisObject* %128, %struct.redisObject** %129, align 8, !dbg !4395, !tbaa !776
  %130 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4396, !tbaa !558
  %131 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !4397, !tbaa !767
  call void @replicationFeedSlaves(%struct.list* %130, i32 %131, %struct.redisObject** nonnull %129, i32 1) #12, !dbg !4398
  tail call void @decrRefCount(%struct.redisObject* %128) #10, !dbg !4399
  br label %132, !dbg !4400

; <label>:132:                                    ; preds = %124, %127, %111, %103
  %133 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4401, !tbaa !558
  call void @listRewind(%struct.list* %133, %struct.listIter* nonnull %2) #10, !dbg !4403
  %134 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4404
  %135 = icmp eq %struct.listNode* %134, null, !dbg !4406
  br i1 %135, label %156, label %136, !dbg !4406

; <label>:136:                                    ; preds = %132, %153
  %137 = phi %struct.listNode* [ %154, %153 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.listNode, %struct.listNode* %137, i64 0, i32 2, !dbg !4407
  %139 = bitcast i8** %138 to %struct.client**, !dbg !4407
  %140 = load %struct.client*, %struct.client** %139, align 8, !dbg !4407, !tbaa !794
  %141 = getelementptr inbounds %struct.client, %struct.client* %140, i64 0, i32 23, !dbg !4409
  %142 = load i32, i32* %141, align 8, !dbg !4409, !tbaa !799
  %143 = icmp eq i32 %142, 6, !dbg !4410
  br i1 %143, label %149, label %144, !dbg !4411

; <label>:144:                                    ; preds = %136
  %145 = icmp eq i32 %142, 7, !dbg !4412
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !4413
  %147 = icmp ne i32 %146, 2, !dbg !4414
  %148 = and i1 %145, %147, !dbg !4415
  br i1 %148, label %149, label %153, !dbg !4416

; <label>:149:                                    ; preds = %136, %144
  %150 = getelementptr inbounds %struct.client, %struct.client* %140, i64 0, i32 1, !dbg !4417
  %151 = load i32, i32* %150, align 8, !dbg !4417, !tbaa !479
  %152 = call i64 @write(i32 %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #10, !dbg !4421
  br label %153, !dbg !4422

; <label>:153:                                    ; preds = %149, %144
  %154 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4404
  %155 = icmp eq %struct.listNode* %154, null, !dbg !4406
  br i1 %155, label %156, label %136, !dbg !4406, !llvm.loop !4423

; <label>:156:                                    ; preds = %153, %132
  %157 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4425, !tbaa !558
  %158 = getelementptr inbounds %struct.list, %struct.list* %157, i64 0, i32 5, !dbg !4425
  %159 = load i64, i64* %158, align 8, !dbg !4425, !tbaa !559
  %160 = icmp eq i64 %159, 0, !dbg !4425
  br i1 %160, label %195, label %161, !dbg !4426

; <label>:161:                                    ; preds = %156
  %162 = bitcast %struct.listIter* %4 to i8*, !dbg !4427
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %162) #7, !dbg !4427
  call void @listRewind(%struct.list* %157, %struct.listIter* nonnull %4) #10, !dbg !4429
  %163 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #10, !dbg !4430
  %164 = icmp eq %struct.listNode* %163, null, !dbg !4432
  br i1 %164, label %191, label %165, !dbg !4432

; <label>:165:                                    ; preds = %161, %188
  %166 = phi %struct.listNode* [ %189, %188 ], [ %163, %161 ]
  %167 = getelementptr inbounds %struct.listNode, %struct.listNode* %166, i64 0, i32 2, !dbg !4433
  %168 = bitcast i8** %167 to %struct.client**, !dbg !4433
  %169 = load %struct.client*, %struct.client** %168, align 8, !dbg !4433, !tbaa !794
  %170 = getelementptr inbounds %struct.client, %struct.client* %169, i64 0, i32 23, !dbg !4435
  %171 = load i32, i32* %170, align 8, !dbg !4435, !tbaa !799
  %172 = icmp eq i32 %171, 9, !dbg !4437
  br i1 %172, label %173, label %188, !dbg !4438, !llvm.loop !4439

; <label>:173:                                    ; preds = %165
  %174 = getelementptr inbounds %struct.client, %struct.client* %169, i64 0, i32 21, !dbg !4441
  %175 = load i32, i32* %174, align 8, !dbg !4441, !tbaa !1082
  %176 = and i32 %175, 65536, !dbg !4443
  %177 = icmp eq i32 %176, 0, !dbg !4443
  br i1 %177, label %178, label %188, !dbg !4444, !llvm.loop !4439

; <label>:178:                                    ; preds = %173
  %179 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4445, !tbaa !1359
  %180 = getelementptr inbounds %struct.client, %struct.client* %169, i64 0, i32 32, !dbg !4447
  %181 = load i64, i64* %180, align 8, !dbg !4447, !tbaa !1362
  %182 = sub nsw i64 %179, %181, !dbg !4448
  %183 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4449, !tbaa !4260
  %184 = sext i32 %183 to i64, !dbg !4450
  %185 = icmp sgt i64 %182, %184, !dbg !4451
  br i1 %185, label %186, label %188, !dbg !4452

; <label>:186:                                    ; preds = %178
  %187 = call i8* @replicationGetSlaveName(%struct.client* nonnull %169) #12, !dbg !4453
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.170, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #10, !dbg !4455
  call void @freeClient(%struct.client* nonnull %169) #10, !dbg !4456
  br label %188, !dbg !4457

; <label>:188:                                    ; preds = %178, %186, %173, %165
  %189 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #10, !dbg !4430
  %190 = icmp eq %struct.listNode* %189, null, !dbg !4432
  br i1 %190, label %191, label %165, !dbg !4432

; <label>:191:                                    ; preds = %188, %161
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %162) #7, !dbg !4458
  %192 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4459, !tbaa !558
  %193 = getelementptr inbounds %struct.list, %struct.list* %192, i64 0, i32 5
  %194 = load i64, i64* %193, align 8, !dbg !4459, !tbaa !559
  br label %195, !dbg !4460

; <label>:195:                                    ; preds = %156, %191
  %196 = phi i64 [ 0, %156 ], [ %194, %191 ], !dbg !4459
  %197 = icmp eq i64 %196, 0, !dbg !4461
  %198 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4462
  %199 = icmp ne i64 %198, 0, !dbg !4463
  %200 = and i1 %197, %199, !dbg !4464
  %201 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4465
  %202 = icmp ne i8* %201, null, !dbg !4466
  %203 = and i1 %200, %202, !dbg !4464
  %204 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4467
  %205 = icmp eq i8* %204, null, !dbg !4468
  %206 = and i1 %203, %205, !dbg !4464
  br i1 %206, label %207, label %226, !dbg !4464

; <label>:207:                                    ; preds = %195
  %208 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4469, !tbaa !1359
  %209 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !4470, !tbaa !3726
  %210 = sub nsw i64 %208, %209, !dbg !4471
  %211 = icmp sgt i64 %210, %198, !dbg !4473
  br i1 %211, label %212, label %226, !dbg !4475

; <label>:212:                                    ; preds = %207
  call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #10, !dbg !4476
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !4479, !tbaa !470
  %213 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #10, !dbg !4480
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !4482, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !4483, !tbaa !1308
  %214 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4484, !tbaa !558
  %215 = getelementptr inbounds %struct.list, %struct.list* %214, i64 0, i32 5, !dbg !4484
  %216 = load i64, i64* %215, align 8, !dbg !4484, !tbaa !559
  %217 = icmp eq i64 %216, 0, !dbg !4484
  br i1 %217, label %219, label %218, !dbg !4484

; <label>:218:                                    ; preds = %212
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #10, !dbg !4484
  call void @_exit(i32 1) #11, !dbg !4484
  unreachable, !dbg !4484

; <label>:219:                                    ; preds = %212
  %220 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4486, !tbaa !511
  call void @zfree(i8* %220) #10, !dbg !4487
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4488, !tbaa !511
  %221 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4489, !tbaa !4490
  %222 = trunc i64 %221 to i32, !dbg !4491
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.171, i64 0, i64 0), i32 %222) #10, !dbg !4492
  %223 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4493, !tbaa !558
  %224 = getelementptr inbounds %struct.list, %struct.list* %223, i64 0, i32 5
  %225 = load i64, i64* %224, align 8, !dbg !4493, !tbaa !559
  br label %226, !dbg !4495

; <label>:226:                                    ; preds = %207, %219, %195
  %227 = phi i64 [ 0, %207 ], [ %225, %219 ], [ %196, %195 ], !dbg !4493
  %228 = icmp eq i64 %227, 0, !dbg !4496
  %229 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4497
  %230 = icmp eq i32 %229, 0, !dbg !4498
  %231 = and i1 %228, %230, !dbg !4499
  br i1 %231, label %232, label %241, !dbg !4499

; <label>:232:                                    ; preds = %226
  %233 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4500, !tbaa !1597
  %234 = getelementptr inbounds %struct.list, %struct.list* %233, i64 0, i32 5, !dbg !4500
  %235 = load i64, i64* %234, align 8, !dbg !4500, !tbaa !559
  %236 = icmp eq i64 %235, 0, !dbg !4501
  br i1 %236, label %241, label %237, !dbg !4502

; <label>:237:                                    ; preds = %232
  %238 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4503, !tbaa !1594
  call void @dictEmpty(%struct.dict* %238, void (i8*)* null) #10, !dbg !4506
  %239 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4507, !tbaa !1597
  call void @listRelease(%struct.list* %239) #10, !dbg !4508
  %240 = call %struct.list* @listCreate() #10, !dbg !4509
  store %struct.list* %240, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4510, !tbaa !1597
  br label %241, !dbg !4511

; <label>:241:                                    ; preds = %232, %237, %226
  %242 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4512, !tbaa !1720
  %243 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4513
  %244 = and i32 %243, %242, !dbg !4514
  %245 = icmp eq i32 %244, -1, !dbg !4514
  br i1 %245, label %246, label %291, !dbg !4514

; <label>:246:                                    ; preds = %241
  %247 = bitcast %struct.listIter* %5 to i8*, !dbg !4518
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %247) #7, !dbg !4518
  %248 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4519, !tbaa !558
  call void @listRewind(%struct.list* %248, %struct.listIter* nonnull %5) #10, !dbg !4521
  %249 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !4522
  %250 = icmp eq %struct.listNode* %249, null, !dbg !4524
  br i1 %250, label %290, label %251, !dbg !4524

; <label>:251:                                    ; preds = %246, %273
  %252 = phi %struct.listNode* [ %277, %273 ], [ %249, %246 ]
  %253 = phi i64 [ %276, %273 ], [ 0, %246 ]
  %254 = phi i32 [ %275, %273 ], [ -1, %246 ]
  %255 = phi i32 [ %274, %273 ], [ 0, %246 ]
  %256 = getelementptr inbounds %struct.listNode, %struct.listNode* %252, i64 0, i32 2, !dbg !4525
  %257 = bitcast i8** %256 to %struct.client**, !dbg !4525
  %258 = load %struct.client*, %struct.client** %257, align 8, !dbg !4525, !tbaa !794
  %259 = getelementptr inbounds %struct.client, %struct.client* %258, i64 0, i32 23, !dbg !4527
  %260 = load i32, i32* %259, align 8, !dbg !4527, !tbaa !799
  %261 = icmp eq i32 %260, 6, !dbg !4529
  br i1 %261, label %262, label %273, !dbg !4530

; <label>:262:                                    ; preds = %251
  %263 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4531, !tbaa !1359
  %264 = getelementptr inbounds %struct.client, %struct.client* %258, i64 0, i32 19, !dbg !4533
  %265 = load i64, i64* %264, align 8, !dbg !4533, !tbaa !3210
  %266 = sub nsw i64 %263, %265, !dbg !4534
  %267 = icmp sgt i64 %266, %253, !dbg !4536
  %268 = select i1 %267, i64 %266, i64 %253, !dbg !4538
  %269 = add nsw i32 %255, 1, !dbg !4539
  %270 = getelementptr inbounds %struct.client, %struct.client* %258, i64 0, i32 37, !dbg !4540
  %271 = load i32, i32* %270, align 8, !dbg !4540, !tbaa !1371
  %272 = and i32 %271, %254, !dbg !4541
  br label %273, !dbg !4542

; <label>:273:                                    ; preds = %262, %251
  %274 = phi i32 [ %255, %251 ], [ %269, %262 ], !dbg !4543
  %275 = phi i32 [ %254, %251 ], [ %272, %262 ], !dbg !4543
  %276 = phi i64 [ %253, %251 ], [ %268, %262 ], !dbg !4543
  %277 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !4522
  %278 = icmp eq %struct.listNode* %277, null, !dbg !4524
  br i1 %278, label %279, label %251, !dbg !4524, !llvm.loop !4544

; <label>:279:                                    ; preds = %273
  %280 = icmp eq i32 %274, 0, !dbg !4546
  br i1 %280, label %290, label %281, !dbg !4548

; <label>:281:                                    ; preds = %279
  %282 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !4549, !tbaa !1501
  %283 = icmp eq i32 %282, 0, !dbg !4550
  br i1 %283, label %288, label %284, !dbg !4551

; <label>:284:                                    ; preds = %281
  %285 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !4552, !tbaa !1791
  %286 = sext i32 %285 to i64, !dbg !4553
  %287 = icmp sgt i64 %276, %286, !dbg !4554
  br i1 %287, label %288, label %290, !dbg !4555

; <label>:288:                                    ; preds = %281, %284
  %289 = call i32 @startBgsaveForReplication(i32 %275) #12, !dbg !4556
  br label %290, !dbg !4558

; <label>:290:                                    ; preds = %246, %279, %288, %284
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %247) #7, !dbg !4559
  br label %291, !dbg !4560

; <label>:291:                                    ; preds = %290, %241
  %292 = bitcast %struct.listIter* %1 to i8*, !dbg !4561
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %292) #7, !dbg !4561
  %293 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !4564, !tbaa !1409
  %294 = icmp ne i32 %293, 0, !dbg !4565
  %295 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !4566
  %296 = icmp ne i32 %295, 0, !dbg !4567
  %297 = and i1 %294, %296, !dbg !4568
  br i1 %297, label %298, label %327, !dbg !4568

; <label>:298:                                    ; preds = %291
  %299 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4569, !tbaa !558
  call void @listRewind(%struct.list* %299, %struct.listIter* nonnull %1) #10, !dbg !4571
  %300 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4572
  %301 = icmp eq %struct.listNode* %300, null, !dbg !4574
  br i1 %301, label %325, label %302, !dbg !4574

; <label>:302:                                    ; preds = %298, %321
  %303 = phi %struct.listNode* [ %323, %321 ], [ %300, %298 ]
  %304 = phi i32 [ %322, %321 ], [ 0, %298 ]
  %305 = getelementptr inbounds %struct.listNode, %struct.listNode* %303, i64 0, i32 2, !dbg !4575
  %306 = bitcast i8** %305 to %struct.client**, !dbg !4575
  %307 = load %struct.client*, %struct.client** %306, align 8, !dbg !4575, !tbaa !794
  %308 = getelementptr inbounds %struct.client, %struct.client* %307, i64 0, i32 23, !dbg !4577
  %309 = load i32, i32* %308, align 8, !dbg !4577, !tbaa !799
  %310 = icmp eq i32 %309, 9, !dbg !4578
  br i1 %310, label %311, label %321, !dbg !4579

; <label>:311:                                    ; preds = %302
  %312 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4580, !tbaa !1359
  %313 = getelementptr inbounds %struct.client, %struct.client* %307, i64 0, i32 32, !dbg !4581
  %314 = load i64, i64* %313, align 8, !dbg !4581, !tbaa !1362
  %315 = sub nsw i64 %312, %314, !dbg !4582
  %316 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !4584, !tbaa !1431
  %317 = sext i32 %316 to i64, !dbg !4585
  %318 = icmp sle i64 %315, %317, !dbg !4586
  %319 = zext i1 %318 to i32, !dbg !4587
  %320 = add nsw i32 %304, %319, !dbg !4587
  br label %321, !dbg !4587

; <label>:321:                                    ; preds = %311, %302
  %322 = phi i32 [ %304, %302 ], [ %320, %311 ], !dbg !4588
  %323 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4572
  %324 = icmp eq %struct.listNode* %323, null, !dbg !4574
  br i1 %324, label %325, label %302, !dbg !4574, !llvm.loop !1436

; <label>:325:                                    ; preds = %321, %298
  %326 = phi i32 [ 0, %298 ], [ %322, %321 ], !dbg !4589
  store i32 %326, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !4590, !tbaa !1441
  br label %327, !dbg !4591

; <label>:327:                                    ; preds = %291, %325
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %292) #7, !dbg !4591
  %328 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4592, !tbaa !522
  %329 = add nsw i64 %328, 1, !dbg !4592
  store i64 %329, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4592, !tbaa !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #7, !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #7, !dbg !4593
  ret void, !dbg !4593
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
attributes #5 = { norecurse noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone noreturn nounwind }
attributes #12 = { nobuiltin noredzone }
attributes #13 = { nobuiltin noredzone nounwind readonly }

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
!678 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !679)
!679 = distinct !DILocation(line: 166, column: 5, scope: !616)
!680 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !679)
!681 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !679)
!682 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !679)
!683 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !679)
!684 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !679)
!685 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !679)
!686 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !679)
!687 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !679)
!688 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !679)
!689 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !679)
!690 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !679)
!691 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !679)
!692 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !679)
!693 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !679)
!694 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !679)
!695 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !679)
!696 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !679)
!697 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !679)
!698 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !679)
!699 = !DILocation(line: 0, scope: !597, inlinedAt: !679)
!700 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !679)
!701 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !679)
!702 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !679)
!703 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !679)
!704 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !679)
!705 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !679)
!706 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !679)
!707 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !679)
!708 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !679)
!709 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !679)
!710 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !679)
!711 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !679)
!712 = !DILocation(line: 167, column: 1, scope: !616)
!713 = distinct !DISubprogram(name: "replicationFeedSlaves", scope: !3, file: !3, line: 174, type: !714, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !99, !20, !150, !20}
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !729, !732, !734, !740, !744}
!717 = !DILocalVariable(name: "slaves", arg: 1, scope: !713, file: !3, line: 174, type: !99)
!718 = !DILocalVariable(name: "dictid", arg: 2, scope: !713, file: !3, line: 174, type: !20)
!719 = !DILocalVariable(name: "argv", arg: 3, scope: !713, file: !3, line: 174, type: !150)
!720 = !DILocalVariable(name: "argc", arg: 4, scope: !713, file: !3, line: 174, type: !20)
!721 = !DILocalVariable(name: "ln", scope: !713, file: !3, line: 175, type: !105)
!722 = !DILocalVariable(name: "li", scope: !713, file: !3, line: 176, type: !420)
!723 = !DILocalVariable(name: "j", scope: !713, file: !3, line: 177, type: !20)
!724 = !DILocalVariable(name: "len", scope: !713, file: !3, line: 177, type: !20)
!725 = !DILocalVariable(name: "llstr", scope: !713, file: !3, line: 178, type: !622)
!726 = !DILocalVariable(name: "selectcmd", scope: !727, file: !3, line: 196, type: !128)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 195, column: 38)
!728 = distinct !DILexicalBlock(scope: !713, file: !3, line: 195, column: 9)
!729 = !DILocalVariable(name: "dictid_len", scope: !730, file: !3, line: 202, type: !20)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 201, column: 16)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 199, column: 13)
!732 = !DILocalVariable(name: "slave", scope: !733, file: !3, line: 217, type: !8)
!733 = distinct !DILexicalBlock(scope: !727, file: !3, line: 216, column: 37)
!734 = !DILocalVariable(name: "aux", scope: !735, file: !3, line: 229, type: !737)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 228, column: 30)
!736 = distinct !DILexicalBlock(scope: !713, file: !3, line: 228, column: 9)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 24)
!740 = !DILocalVariable(name: "objlen", scope: !741, file: !3, line: 239, type: !79)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 238, column: 36)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 238, column: 9)
!743 = distinct !DILexicalBlock(scope: !735, file: !3, line: 238, column: 9)
!744 = !DILocalVariable(name: "slave", scope: !745, file: !3, line: 257, type: !8)
!745 = distinct !DILexicalBlock(scope: !713, file: !3, line: 256, column: 33)
!746 = !DILocation(line: 174, column: 34, scope: !713)
!747 = !DILocation(line: 174, column: 46, scope: !713)
!748 = !DILocation(line: 174, column: 61, scope: !713)
!749 = !DILocation(line: 174, column: 71, scope: !713)
!750 = !DILocation(line: 176, column: 5, scope: !713)
!751 = !DILocation(line: 178, column: 5, scope: !713)
!752 = !DILocation(line: 178, column: 10, scope: !713)
!753 = !DILocation(line: 185, column: 16, scope: !754)
!754 = distinct !DILexicalBlock(scope: !713, file: !3, line: 185, column: 9)
!755 = !{!512, !483, i64 2464}
!756 = !DILocation(line: 185, column: 27, scope: !754)
!757 = !DILocation(line: 185, column: 9, scope: !713)
!758 = !DILocation(line: 189, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !713, file: !3, line: 189, column: 9)
!760 = !DILocation(line: 189, column: 29, scope: !759)
!761 = !DILocation(line: 189, column: 37, scope: !759)
!762 = !DILocation(line: 189, column: 40, scope: !759)
!763 = !DILocation(line: 189, column: 59, scope: !759)
!764 = !DILocation(line: 189, column: 9, scope: !713)
!765 = !DILocation(line: 192, column: 5, scope: !713)
!766 = !DILocation(line: 195, column: 16, scope: !728)
!767 = !{!512, !482, i64 2368}
!768 = !DILocation(line: 195, column: 27, scope: !728)
!769 = !DILocation(line: 195, column: 9, scope: !713)
!770 = !DILocation(line: 225, column: 23, scope: !713)
!771 = !DILocation(line: 228, column: 9, scope: !713)
!772 = !DILocation(line: 199, column: 25, scope: !731)
!773 = !DILocation(line: 0, scope: !730)
!774 = !DILocation(line: 200, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !731, file: !3, line: 199, column: 63)
!776 = !{!483, !483, i64 0}
!777 = !DILocation(line: 196, column: 15, scope: !727)
!778 = !DILocation(line: 212, column: 13, scope: !727)
!779 = !DILocation(line: 204, column: 26, scope: !730)
!780 = !DILocation(line: 202, column: 17, scope: !730)
!781 = !DILocation(line: 206, column: 30, scope: !730)
!782 = !DILocation(line: 206, column: 17, scope: !730)
!783 = !DILocation(line: 205, column: 25, scope: !730)
!784 = !DILocation(line: 212, column: 20, scope: !785)
!785 = distinct !DILexicalBlock(scope: !727, file: !3, line: 212, column: 13)
!786 = !DILocation(line: 212, column: 13, scope: !785)
!787 = !DILocation(line: 212, column: 34, scope: !785)
!788 = !DILocation(line: 176, column: 14, scope: !713)
!789 = !DILocation(line: 215, column: 9, scope: !727)
!790 = !DILocation(line: 216, column: 21, scope: !727)
!791 = !DILocation(line: 175, column: 15, scope: !713)
!792 = !DILocation(line: 216, column: 9, scope: !727)
!793 = !DILocation(line: 217, column: 33, scope: !733)
!794 = !{!795, !483, i64 16}
!795 = !{!"listNode", !483, i64 0, !483, i64 8, !483, i64 16}
!796 = !DILocation(line: 217, column: 21, scope: !733)
!797 = !DILocation(line: 218, column: 24, scope: !798)
!798 = distinct !DILexicalBlock(scope: !733, file: !3, line: 218, column: 17)
!799 = !{!480, !482, i64 168}
!800 = !DILocation(line: 218, column: 34, scope: !798)
!801 = !DILocation(line: 218, column: 17, scope: !733)
!802 = distinct !{!802, !792, !803}
!803 = !DILocation(line: 220, column: 9, scope: !727)
!804 = !DILocation(line: 219, column: 13, scope: !733)
!805 = !DILocation(line: 222, column: 24, scope: !806)
!806 = distinct !DILexicalBlock(scope: !727, file: !3, line: 222, column: 13)
!807 = !DILocation(line: 223, column: 13, scope: !806)
!808 = !DILocation(line: 228, column: 16, scope: !736)
!809 = !DILocation(line: 228, column: 9, scope: !736)
!810 = !DILocation(line: 229, column: 9, scope: !735)
!811 = !DILocation(line: 229, column: 14, scope: !735)
!812 = !DILocation(line: 232, column: 16, scope: !735)
!813 = !DILocation(line: 233, column: 28, scope: !735)
!814 = !DILocation(line: 233, column: 45, scope: !735)
!815 = !DILocation(line: 233, column: 15, scope: !735)
!816 = !DILocation(line: 177, column: 12, scope: !713)
!817 = !DILocation(line: 234, column: 16, scope: !735)
!818 = !DILocation(line: 234, column: 9, scope: !735)
!819 = !DILocation(line: 234, column: 20, scope: !735)
!820 = !DILocation(line: 235, column: 16, scope: !735)
!821 = !DILocation(line: 235, column: 9, scope: !735)
!822 = !DILocation(line: 235, column: 20, scope: !735)
!823 = !DILocation(line: 236, column: 39, scope: !735)
!824 = !DILocation(line: 236, column: 36, scope: !735)
!825 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !826)
!826 = distinct !DILocation(line: 236, column: 9, scope: !735)
!827 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !826)
!828 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !826)
!829 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !826)
!830 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !826)
!831 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !826)
!832 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !826)
!833 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !826)
!834 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !826)
!835 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !826)
!836 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !826)
!837 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !826)
!838 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !826)
!839 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !826)
!840 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !826)
!841 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !826)
!842 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !826)
!843 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !826)
!844 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !826)
!845 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !826)
!846 = !DILocation(line: 0, scope: !597, inlinedAt: !826)
!847 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !826)
!848 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !826)
!849 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !826)
!850 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !826)
!851 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !826)
!852 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !826)
!853 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !826)
!854 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !826)
!855 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !826)
!856 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !826)
!857 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !826)
!858 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !826)
!859 = !DILocation(line: 177, column: 9, scope: !713)
!860 = !DILocation(line: 238, column: 23, scope: !742)
!861 = !DILocation(line: 238, column: 9, scope: !743)
!862 = !DILocation(line: 239, column: 43, scope: !741)
!863 = !DILocation(line: 239, column: 27, scope: !741)
!864 = !DILocation(line: 239, column: 18, scope: !741)
!865 = !DILocation(line: 244, column: 20, scope: !741)
!866 = !DILocation(line: 245, column: 19, scope: !741)
!867 = !DILocation(line: 246, column: 20, scope: !741)
!868 = !DILocation(line: 246, column: 13, scope: !741)
!869 = !DILocation(line: 246, column: 24, scope: !741)
!870 = !DILocation(line: 247, column: 20, scope: !741)
!871 = !DILocation(line: 247, column: 13, scope: !741)
!872 = !DILocation(line: 247, column: 24, scope: !741)
!873 = !DILocation(line: 248, column: 43, scope: !741)
!874 = !DILocation(line: 248, column: 40, scope: !741)
!875 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !876)
!876 = distinct !DILocation(line: 248, column: 13, scope: !741)
!877 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !876)
!878 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !876)
!879 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !876)
!880 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !876)
!881 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !876)
!882 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !876)
!883 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !876)
!884 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !876)
!885 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !876)
!886 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !876)
!887 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !876)
!888 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !876)
!889 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !876)
!890 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !876)
!891 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !876)
!892 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !876)
!893 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !876)
!894 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !876)
!895 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !876)
!896 = !DILocation(line: 0, scope: !597, inlinedAt: !876)
!897 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !876)
!898 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !876)
!899 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !876)
!900 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !876)
!901 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !876)
!902 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !876)
!903 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !876)
!904 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !876)
!905 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !876)
!906 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !876)
!907 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !876)
!908 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !876)
!909 = !DILocation(line: 249, column: 46, scope: !741)
!910 = !DILocation(line: 249, column: 13, scope: !741)
!911 = !DILocation(line: 250, column: 39, scope: !741)
!912 = !DILocation(line: 250, column: 43, scope: !741)
!913 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !914)
!914 = distinct !DILocation(line: 250, column: 13, scope: !741)
!915 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !914)
!916 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !914)
!917 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !914)
!918 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !914)
!919 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !914)
!920 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !914)
!921 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !914)
!922 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !914)
!923 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !914)
!924 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !914)
!925 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !914)
!926 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !914)
!927 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !914)
!928 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !914)
!929 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !914)
!930 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !914)
!931 = !DILocation(line: 0, scope: !597, inlinedAt: !914)
!932 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !914)
!933 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !914)
!934 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !914)
!935 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !914)
!936 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !914)
!937 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !914)
!938 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !914)
!939 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !914)
!940 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !914)
!941 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !914)
!942 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !914)
!943 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !914)
!944 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !914)
!945 = !DILocation(line: 238, column: 32, scope: !742)
!946 = distinct !{!946, !861, !947}
!947 = !DILocation(line: 251, column: 9, scope: !743)
!948 = !DILocation(line: 252, column: 5, scope: !736)
!949 = !DILocation(line: 252, column: 5, scope: !735)
!950 = !DILocation(line: 255, column: 5, scope: !713)
!951 = !DILocation(line: 256, column: 17, scope: !713)
!952 = !DILocation(line: 256, column: 5, scope: !713)
!953 = !DILocation(line: 257, column: 29, scope: !745)
!954 = !DILocation(line: 257, column: 17, scope: !745)
!955 = !DILocation(line: 260, column: 20, scope: !956)
!956 = distinct !DILexicalBlock(scope: !745, file: !3, line: 260, column: 13)
!957 = !DILocation(line: 260, column: 30, scope: !956)
!958 = !DILocation(line: 260, column: 13, scope: !745)
!959 = distinct !{!959, !952, !960}
!960 = !DILocation(line: 273, column: 5, scope: !713)
!961 = !DILocation(line: 267, column: 9, scope: !745)
!962 = !DILocation(line: 271, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !745, file: !3, line: 271, column: 9)
!964 = !DILocation(line: 272, column: 32, scope: !965)
!965 = distinct !DILexicalBlock(scope: !963, file: !3, line: 271, column: 9)
!966 = !DILocation(line: 272, column: 13, scope: !965)
!967 = !DILocation(line: 271, column: 32, scope: !965)
!968 = !DILocation(line: 271, column: 23, scope: !965)
!969 = distinct !{!969, !962, !970}
!970 = !DILocation(line: 272, column: 39, scope: !963)
!971 = !DILocation(line: 274, column: 1, scope: !713)
!972 = distinct !DISubprogram(name: "replicationFeedSlavesFromMasterStream", scope: !3, file: !3, line: 279, type: !973, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !99, !6, !142}
!975 = !{!976, !977, !978, !979, !980, !981}
!976 = !DILocalVariable(name: "slaves", arg: 1, scope: !972, file: !3, line: 279, type: !99)
!977 = !DILocalVariable(name: "buf", arg: 2, scope: !972, file: !3, line: 279, type: !6)
!978 = !DILocalVariable(name: "buflen", arg: 3, scope: !972, file: !3, line: 279, type: !142)
!979 = !DILocalVariable(name: "ln", scope: !972, file: !3, line: 280, type: !105)
!980 = !DILocalVariable(name: "li", scope: !972, file: !3, line: 281, type: !420)
!981 = !DILocalVariable(name: "slave", scope: !982, file: !3, line: 296, type: !8)
!982 = distinct !DILexicalBlock(scope: !972, file: !3, line: 295, column: 33)
!983 = !DILocation(line: 279, column: 50, scope: !972)
!984 = !DILocation(line: 279, column: 64, scope: !972)
!985 = !DILocation(line: 279, column: 76, scope: !972)
!986 = !DILocation(line: 281, column: 5, scope: !972)
!987 = !DILocation(line: 293, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !972, file: !3, line: 293, column: 9)
!989 = !DILocation(line: 293, column: 9, scope: !988)
!990 = !DILocation(line: 293, column: 9, scope: !972)
!991 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !992)
!992 = distinct !DILocation(line: 293, column: 30, scope: !988)
!993 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !992)
!994 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !992)
!995 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !992)
!996 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !992)
!997 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !992)
!998 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !992)
!999 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !992)
!1000 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !992)
!1001 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !992)
!1002 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !992)
!1003 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !992)
!1004 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !992)
!1005 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !992)
!1006 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !992)
!1007 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !992)
!1008 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !992)
!1009 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !992)
!1010 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !992)
!1011 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !992)
!1012 = !DILocation(line: 0, scope: !597, inlinedAt: !992)
!1013 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !992)
!1014 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !992)
!1015 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !992)
!1016 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !992)
!1017 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !992)
!1018 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !992)
!1019 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !992)
!1020 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !992)
!1021 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !992)
!1022 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !992)
!1023 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !992)
!1024 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !992)
!1025 = !DILocation(line: 293, column: 30, scope: !988)
!1026 = !DILocation(line: 281, column: 14, scope: !972)
!1027 = !DILocation(line: 294, column: 5, scope: !972)
!1028 = !DILocation(line: 295, column: 17, scope: !972)
!1029 = !DILocation(line: 280, column: 15, scope: !972)
!1030 = !DILocation(line: 295, column: 5, scope: !972)
!1031 = !DILocation(line: 296, column: 29, scope: !982)
!1032 = !DILocation(line: 296, column: 17, scope: !982)
!1033 = !DILocation(line: 299, column: 20, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !982, file: !3, line: 299, column: 13)
!1035 = !DILocation(line: 299, column: 30, scope: !1034)
!1036 = !DILocation(line: 299, column: 13, scope: !982)
!1037 = distinct !{!1037, !1030, !1038}
!1038 = !DILocation(line: 301, column: 5, scope: !972)
!1039 = !DILocation(line: 300, column: 9, scope: !982)
!1040 = !DILocation(line: 302, column: 1, scope: !972)
!1041 = distinct !DISubprogram(name: "replicationFeedMonitors", scope: !3, file: !3, line: 304, type: !1042, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !8, !99, !20, !150, !20}
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1061}
!1045 = !DILocalVariable(name: "c", arg: 1, scope: !1041, file: !3, line: 304, type: !8)
!1046 = !DILocalVariable(name: "monitors", arg: 2, scope: !1041, file: !3, line: 304, type: !99)
!1047 = !DILocalVariable(name: "dictid", arg: 3, scope: !1041, file: !3, line: 304, type: !20)
!1048 = !DILocalVariable(name: "argv", arg: 4, scope: !1041, file: !3, line: 304, type: !150)
!1049 = !DILocalVariable(name: "argc", arg: 5, scope: !1041, file: !3, line: 304, type: !20)
!1050 = !DILocalVariable(name: "ln", scope: !1041, file: !3, line: 305, type: !105)
!1051 = !DILocalVariable(name: "li", scope: !1041, file: !3, line: 306, type: !420)
!1052 = !DILocalVariable(name: "j", scope: !1041, file: !3, line: 307, type: !20)
!1053 = !DILocalVariable(name: "cmdrepr", scope: !1041, file: !3, line: 308, type: !139)
!1054 = !DILocalVariable(name: "cmdobj", scope: !1041, file: !3, line: 309, type: !128)
!1055 = !DILocalVariable(name: "tv", scope: !1041, file: !3, line: 310, type: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !185, line: 44, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1056, file: !185, line: 45, baseType: !184, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1056, file: !185, line: 46, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !185, line: 39, baseType: !79)
!1061 = !DILocalVariable(name: "monitor", scope: !1062, file: !3, line: 337, type: !8)
!1062 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 336, column: 33)
!1063 = !DILocation(line: 304, column: 38, scope: !1041)
!1064 = !DILocation(line: 304, column: 47, scope: !1041)
!1065 = !DILocation(line: 304, column: 61, scope: !1041)
!1066 = !DILocation(line: 304, column: 76, scope: !1041)
!1067 = !DILocation(line: 304, column: 86, scope: !1041)
!1068 = !DILocation(line: 306, column: 5, scope: !1041)
!1069 = !DILocation(line: 308, column: 19, scope: !1041)
!1070 = !DILocation(line: 308, column: 9, scope: !1041)
!1071 = !DILocation(line: 310, column: 5, scope: !1041)
!1072 = !DILocation(line: 310, column: 20, scope: !1041)
!1073 = !DILocation(line: 312, column: 5, scope: !1041)
!1074 = !DILocation(line: 313, column: 58, scope: !1041)
!1075 = !{!1076, !481, i64 0}
!1076 = !{!"timeval", !481, i64 0, !481, i64 8}
!1077 = !DILocation(line: 313, column: 74, scope: !1041)
!1078 = !{!1076, !481, i64 8}
!1079 = !DILocation(line: 313, column: 15, scope: !1041)
!1080 = !DILocation(line: 314, column: 12, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 314, column: 9)
!1082 = !{!480, !482, i64 160}
!1083 = !DILocation(line: 314, column: 18, scope: !1081)
!1084 = !DILocation(line: 314, column: 9, scope: !1041)
!1085 = !DILocation(line: 315, column: 19, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 314, column: 32)
!1087 = !DILocation(line: 316, column: 5, scope: !1086)
!1088 = !DILocation(line: 316, column: 25, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 316, column: 16)
!1090 = !DILocation(line: 316, column: 16, scope: !1081)
!1091 = !DILocation(line: 317, column: 70, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 316, column: 47)
!1093 = !{!512, !483, i64 360}
!1094 = !DILocation(line: 317, column: 19, scope: !1092)
!1095 = !DILocation(line: 318, column: 5, scope: !1092)
!1096 = !DILocation(line: 319, column: 58, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 318, column: 12)
!1098 = !DILocation(line: 319, column: 19, scope: !1097)
!1099 = !DILocation(line: 0, scope: !1097)
!1100 = !DILocation(line: 307, column: 9, scope: !1041)
!1101 = !DILocation(line: 322, column: 19, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 322, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 322, column: 5)
!1104 = !DILocation(line: 322, column: 5, scope: !1103)
!1105 = !DILocation(line: 323, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 323, column: 13)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 322, column: 32)
!1108 = !DILocation(line: 323, column: 22, scope: !1106)
!1109 = !DILocation(line: 323, column: 31, scope: !1106)
!1110 = !DILocation(line: 0, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 325, column: 16)
!1112 = !DILocation(line: 323, column: 13, scope: !1107)
!1113 = !DILocation(line: 324, column: 56, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 323, column: 52)
!1115 = !DILocation(line: 324, column: 23, scope: !1114)
!1116 = !DILocation(line: 325, column: 9, scope: !1114)
!1117 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 327, column: 25, scope: !1111)
!1119 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !1118)
!1120 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1118)
!1121 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1118)
!1122 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !1118)
!1123 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !1118)
!1124 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1118)
!1125 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1118)
!1126 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1118)
!1127 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1118)
!1128 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1118)
!1129 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1118)
!1130 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1118)
!1131 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1118)
!1132 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1118)
!1133 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1118)
!1134 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1118)
!1135 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1118)
!1136 = !DILocation(line: 0, scope: !660, inlinedAt: !1118)
!1137 = !DILocation(line: 326, column: 23, scope: !1111)
!1138 = !DILocation(line: 329, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 329, column: 13)
!1140 = !DILocation(line: 329, column: 13, scope: !1107)
!1141 = !DILocation(line: 330, column: 23, scope: !1139)
!1142 = !DILocation(line: 330, column: 13, scope: !1139)
!1143 = !DILocation(line: 0, scope: !1114)
!1144 = !DILocation(line: 322, column: 28, scope: !1102)
!1145 = distinct !{!1145, !1104, !1146}
!1146 = !DILocation(line: 331, column: 5, scope: !1103)
!1147 = !DILocation(line: 0, scope: !1139)
!1148 = !DILocation(line: 332, column: 15, scope: !1041)
!1149 = !DILocation(line: 333, column: 14, scope: !1041)
!1150 = !DILocation(line: 309, column: 11, scope: !1041)
!1151 = !DILocation(line: 306, column: 14, scope: !1041)
!1152 = !DILocation(line: 335, column: 5, scope: !1041)
!1153 = !DILocation(line: 336, column: 17, scope: !1041)
!1154 = !DILocation(line: 305, column: 15, scope: !1041)
!1155 = !DILocation(line: 336, column: 5, scope: !1041)
!1156 = !DILocation(line: 337, column: 31, scope: !1062)
!1157 = !DILocation(line: 337, column: 17, scope: !1062)
!1158 = !DILocation(line: 338, column: 9, scope: !1062)
!1159 = distinct !{!1159, !1155, !1160}
!1160 = !DILocation(line: 339, column: 5, scope: !1041)
!1161 = !DILocation(line: 340, column: 5, scope: !1041)
!1162 = !DILocation(line: 341, column: 1, scope: !1041)
!1163 = distinct !DISubprogram(name: "addReplyReplicationBacklog", scope: !3, file: !3, line: 345, type: !1164, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!97, !8, !97}
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172}
!1167 = !DILocalVariable(name: "c", arg: 1, scope: !1163, file: !3, line: 345, type: !8)
!1168 = !DILocalVariable(name: "offset", arg: 2, scope: !1163, file: !3, line: 345, type: !97)
!1169 = !DILocalVariable(name: "j", scope: !1163, file: !3, line: 346, type: !97)
!1170 = !DILocalVariable(name: "skip", scope: !1163, file: !3, line: 346, type: !97)
!1171 = !DILocalVariable(name: "len", scope: !1163, file: !3, line: 346, type: !97)
!1172 = !DILocalVariable(name: "thislen", scope: !1173, file: !3, line: 383, type: !97)
!1173 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 382, column: 16)
!1174 = !DILocation(line: 345, column: 46, scope: !1163)
!1175 = !DILocation(line: 345, column: 59, scope: !1163)
!1176 = !DILocation(line: 348, column: 5, scope: !1163)
!1177 = !DILocation(line: 350, column: 16, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 350, column: 9)
!1179 = !DILocation(line: 350, column: 37, scope: !1178)
!1180 = !DILocation(line: 350, column: 9, scope: !1163)
!1181 = !DILocation(line: 351, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 350, column: 43)
!1183 = !DILocation(line: 352, column: 9, scope: !1182)
!1184 = !DILocation(line: 356, column: 21, scope: !1163)
!1185 = !DILocation(line: 355, column: 5, scope: !1163)
!1186 = !DILocation(line: 358, column: 21, scope: !1163)
!1187 = !DILocation(line: 357, column: 5, scope: !1163)
!1188 = !DILocation(line: 360, column: 21, scope: !1163)
!1189 = !DILocation(line: 359, column: 5, scope: !1163)
!1190 = !DILocation(line: 362, column: 21, scope: !1163)
!1191 = !DILocation(line: 361, column: 5, scope: !1163)
!1192 = !DILocation(line: 365, column: 28, scope: !1163)
!1193 = !DILocation(line: 365, column: 19, scope: !1163)
!1194 = !DILocation(line: 346, column: 18, scope: !1163)
!1195 = !DILocation(line: 366, column: 5, scope: !1163)
!1196 = !DILocation(line: 370, column: 17, scope: !1163)
!1197 = !DILocation(line: 371, column: 17, scope: !1163)
!1198 = !DILocation(line: 371, column: 42, scope: !1163)
!1199 = !DILocation(line: 371, column: 34, scope: !1163)
!1200 = !DILocation(line: 370, column: 34, scope: !1163)
!1201 = !DILocation(line: 371, column: 65, scope: !1163)
!1202 = !DILocation(line: 346, column: 15, scope: !1163)
!1203 = !DILocation(line: 373, column: 5, scope: !1163)
!1204 = !DILocation(line: 376, column: 29, scope: !1163)
!1205 = !DILocation(line: 380, column: 18, scope: !1163)
!1206 = !DILocation(line: 380, column: 39, scope: !1163)
!1207 = !DILocation(line: 346, column: 24, scope: !1163)
!1208 = !DILocation(line: 381, column: 5, scope: !1163)
!1209 = !DILocation(line: 382, column: 5, scope: !1163)
!1210 = !DILocation(line: 376, column: 12, scope: !1163)
!1211 = !DILocation(line: 376, column: 20, scope: !1163)
!1212 = !DILocation(line: 384, column: 22, scope: !1173)
!1213 = !DILocation(line: 384, column: 40, scope: !1173)
!1214 = !DILocation(line: 384, column: 45, scope: !1173)
!1215 = !DILocation(line: 384, column: 13, scope: !1173)
!1216 = !DILocation(line: 383, column: 19, scope: !1173)
!1217 = !DILocation(line: 387, column: 9, scope: !1173)
!1218 = !DILocation(line: 388, column: 40, scope: !1173)
!1219 = !DILocation(line: 388, column: 53, scope: !1173)
!1220 = !DILocation(line: 388, column: 23, scope: !1173)
!1221 = !DILocation(line: 388, column: 9, scope: !1173)
!1222 = !DILocation(line: 389, column: 13, scope: !1173)
!1223 = distinct !{!1223, !1209, !1224}
!1224 = !DILocation(line: 391, column: 5, scope: !1163)
!1225 = distinct !{!1225, !1209, !1224, !1226}
!1226 = !{!"llvm.loop.unroll.disable"}
!1227 = !DILocation(line: 392, column: 19, scope: !1163)
!1228 = !DILocation(line: 392, column: 40, scope: !1163)
!1229 = !DILocation(line: 392, column: 5, scope: !1163)
!1230 = !DILocation(line: 0, scope: !1163)
!1231 = !DILocation(line: 393, column: 1, scope: !1163)
!1232 = distinct !DISubprogram(name: "getPsyncInitialOffset", scope: !3, file: !3, line: 399, type: !1233, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!97}
!1235 = !DILocation(line: 400, column: 19, scope: !1232)
!1236 = !DILocation(line: 400, column: 5, scope: !1232)
!1237 = distinct !DISubprogram(name: "replicationSetupSlaveForFullResync", scope: !3, file: !3, line: 419, type: !1238, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!20, !8, !97}
!1240 = !{!1241, !1242, !1243, !1247}
!1241 = !DILocalVariable(name: "slave", arg: 1, scope: !1237, file: !3, line: 419, type: !8)
!1242 = !DILocalVariable(name: "offset", arg: 2, scope: !1237, file: !3, line: 419, type: !97)
!1243 = !DILocalVariable(name: "buf", scope: !1237, file: !3, line: 420, type: !1244)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 128)
!1247 = !DILocalVariable(name: "buflen", scope: !1237, file: !3, line: 421, type: !20)
!1248 = !DILocation(line: 419, column: 48, scope: !1237)
!1249 = !DILocation(line: 419, column: 65, scope: !1237)
!1250 = !DILocation(line: 420, column: 5, scope: !1237)
!1251 = !DILocation(line: 420, column: 10, scope: !1237)
!1252 = !DILocation(line: 423, column: 12, scope: !1237)
!1253 = !DILocation(line: 423, column: 33, scope: !1237)
!1254 = !{!480, !484, i64 240}
!1255 = !DILocation(line: 424, column: 12, scope: !1237)
!1256 = !DILocation(line: 424, column: 22, scope: !1237)
!1257 = !DILocation(line: 428, column: 23, scope: !1237)
!1258 = !DILocation(line: 432, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 432, column: 9)
!1260 = !DILocation(line: 432, column: 24, scope: !1259)
!1261 = !DILocation(line: 432, column: 9, scope: !1237)
!1262 = !DILocation(line: 433, column: 18, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 432, column: 45)
!1264 = !DILocation(line: 421, column: 9, scope: !1237)
!1265 = !DILocation(line: 435, column: 26, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 435, column: 13)
!1267 = !DILocation(line: 435, column: 33, scope: !1266)
!1268 = !DILocation(line: 435, column: 13, scope: !1266)
!1269 = !DILocation(line: 435, column: 41, scope: !1266)
!1270 = !DILocation(line: 435, column: 13, scope: !1263)
!1271 = !DILocation(line: 436, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 435, column: 52)
!1273 = !DILocation(line: 437, column: 13, scope: !1272)
!1274 = !DILocation(line: 0, scope: !1272)
!1275 = !DILocation(line: 441, column: 1, scope: !1237)
!1276 = distinct !DISubprogram(name: "masterTryPartialResynchronization", scope: !3, file: !3, line: 448, type: !1277, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!20, !8}
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285}
!1280 = !DILocalVariable(name: "c", arg: 1, scope: !1276, file: !3, line: 448, type: !8)
!1281 = !DILocalVariable(name: "psync_offset", scope: !1276, file: !3, line: 449, type: !97)
!1282 = !DILocalVariable(name: "psync_len", scope: !1276, file: !3, line: 449, type: !97)
!1283 = !DILocalVariable(name: "master_replid", scope: !1276, file: !3, line: 450, type: !6)
!1284 = !DILocalVariable(name: "buf", scope: !1276, file: !3, line: 451, type: !1244)
!1285 = !DILocalVariable(name: "buflen", scope: !1276, file: !3, line: 452, type: !20)
!1286 = !DILocation(line: 448, column: 47, scope: !1276)
!1287 = !DILocation(line: 449, column: 5, scope: !1276)
!1288 = !DILocation(line: 450, column: 30, scope: !1276)
!1289 = !{!480, !483, i64 72}
!1290 = !DILocation(line: 450, column: 27, scope: !1276)
!1291 = !DILocation(line: 450, column: 39, scope: !1276)
!1292 = !DILocation(line: 450, column: 11, scope: !1276)
!1293 = !DILocation(line: 451, column: 5, scope: !1276)
!1294 = !DILocation(line: 451, column: 10, scope: !1276)
!1295 = !DILocation(line: 457, column: 40, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 457, column: 9)
!1297 = !DILocation(line: 449, column: 15, scope: !1276)
!1298 = !DILocation(line: 457, column: 9, scope: !1296)
!1299 = !DILocation(line: 457, column: 71, scope: !1296)
!1300 = !DILocation(line: 457, column: 9, scope: !1276)
!1301 = !DILocation(line: 466, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 466, column: 9)
!1303 = !DILocation(line: 466, column: 50, scope: !1302)
!1304 = !DILocation(line: 467, column: 10, scope: !1302)
!1305 = !DILocation(line: 467, column: 52, scope: !1302)
!1306 = !DILocation(line: 468, column: 10, scope: !1302)
!1307 = !DILocation(line: 468, column: 32, scope: !1302)
!1308 = !{!512, !484, i64 2360}
!1309 = !DILocation(line: 468, column: 23, scope: !1302)
!1310 = !DILocation(line: 466, column: 9, scope: !1276)
!1311 = !DILocation(line: 471, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 471, column: 13)
!1313 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 469, column: 5)
!1314 = !DILocation(line: 471, column: 30, scope: !1312)
!1315 = !DILocation(line: 471, column: 13, scope: !1313)
!1316 = !DILocation(line: 472, column: 17, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 471, column: 38)
!1318 = !DILocation(line: 475, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 474, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 472, column: 17)
!1321 = !DILocation(line: 479, column: 13, scope: !1319)
!1322 = !DILocation(line: 482, column: 35, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 479, column: 20)
!1324 = !DILocation(line: 482, column: 56, scope: !1323)
!1325 = !DILocation(line: 480, column: 17, scope: !1323)
!1326 = !DILocation(line: 486, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 484, column: 16)
!1328 = !DILocation(line: 485, column: 13, scope: !1327)
!1329 = !DILocation(line: 492, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 492, column: 9)
!1331 = !DILocation(line: 492, column: 10, scope: !1330)
!1332 = !DILocation(line: 492, column: 30, scope: !1330)
!1333 = !DILocation(line: 493, column: 9, scope: !1330)
!1334 = !DILocation(line: 493, column: 31, scope: !1330)
!1335 = !DILocation(line: 493, column: 22, scope: !1330)
!1336 = !DILocation(line: 493, column: 48, scope: !1330)
!1337 = !DILocation(line: 494, column: 58, scope: !1330)
!1338 = !DILocation(line: 494, column: 49, scope: !1330)
!1339 = !DILocation(line: 494, column: 22, scope: !1330)
!1340 = !DILocation(line: 492, column: 9, scope: !1276)
!1341 = !DILocation(line: 497, column: 106, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 495, column: 5)
!1343 = !DILocation(line: 497, column: 134, scope: !1342)
!1344 = !DILocation(line: 496, column: 9, scope: !1342)
!1345 = !DILocation(line: 498, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 498, column: 13)
!1347 = !DILocation(line: 498, column: 35, scope: !1346)
!1348 = !DILocation(line: 498, column: 26, scope: !1346)
!1349 = !DILocation(line: 498, column: 13, scope: !1342)
!1350 = !DILocation(line: 500, column: 122, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 498, column: 55)
!1352 = !DILocation(line: 499, column: 13, scope: !1351)
!1353 = !DILocation(line: 501, column: 9, scope: !1351)
!1354 = !DILocation(line: 509, column: 8, scope: !1276)
!1355 = !DILocation(line: 509, column: 14, scope: !1276)
!1356 = !DILocation(line: 510, column: 8, scope: !1276)
!1357 = !DILocation(line: 510, column: 18, scope: !1276)
!1358 = !DILocation(line: 511, column: 31, scope: !1276)
!1359 = !{!512, !481, i64 2872}
!1360 = !DILocation(line: 511, column: 8, scope: !1276)
!1361 = !DILocation(line: 511, column: 22, scope: !1276)
!1362 = !{!480, !484, i64 232}
!1363 = !DILocation(line: 512, column: 8, scope: !1276)
!1364 = !DILocation(line: 512, column: 31, scope: !1276)
!1365 = !{!480, !482, i64 172}
!1366 = !DILocation(line: 513, column: 28, scope: !1276)
!1367 = !DILocation(line: 513, column: 35, scope: !1276)
!1368 = !DILocation(line: 513, column: 5, scope: !1276)
!1369 = !DILocation(line: 517, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 517, column: 9)
!1371 = !{!480, !482, i64 344}
!1372 = !DILocation(line: 517, column: 23, scope: !1370)
!1373 = !DILocation(line: 517, column: 9, scope: !1276)
!1374 = !DILocation(line: 518, column: 18, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 517, column: 44)
!1376 = !DILocation(line: 452, column: 9, scope: !1276)
!1377 = !DILocation(line: 519, column: 5, scope: !1375)
!1378 = !DILocation(line: 520, column: 18, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 519, column: 12)
!1380 = !DILocation(line: 0, scope: !1379)
!1381 = !DILocation(line: 522, column: 18, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 522, column: 9)
!1383 = !DILocation(line: 522, column: 25, scope: !1382)
!1384 = !DILocation(line: 522, column: 9, scope: !1382)
!1385 = !DILocation(line: 522, column: 33, scope: !1382)
!1386 = !DILocation(line: 522, column: 9, scope: !1276)
!1387 = !DILocation(line: 523, column: 9, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 522, column: 44)
!1389 = !DILocation(line: 524, column: 9, scope: !1388)
!1390 = !DILocation(line: 526, column: 46, scope: !1276)
!1391 = !DILocation(line: 526, column: 17, scope: !1276)
!1392 = !DILocation(line: 449, column: 29, scope: !1276)
!1393 = !DILocation(line: 529, column: 13, scope: !1276)
!1394 = !DILocation(line: 530, column: 24, scope: !1276)
!1395 = !DILocation(line: 527, column: 5, scope: !1276)
!1396 = !DILocation(line: 2305, column: 5, scope: !1397, inlinedAt: !1405)
!1397 = distinct !DISubprogram(name: "refreshGoodSlavesCount", scope: !3, file: !3, line: 2304, type: !306, isLocal: false, isDefinition: true, scopeLine: 2304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1404}
!1399 = !DILocalVariable(name: "li", scope: !1397, file: !3, line: 2305, type: !420)
!1400 = !DILocalVariable(name: "ln", scope: !1397, file: !3, line: 2306, type: !105)
!1401 = !DILocalVariable(name: "good", scope: !1397, file: !3, line: 2307, type: !20)
!1402 = !DILocalVariable(name: "slave", scope: !1403, file: !3, line: 2314, type: !8)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 2313, column: 33)
!1404 = !DILocalVariable(name: "lag", scope: !1403, file: !3, line: 2315, type: !184)
!1405 = distinct !DILocation(line: 535, column: 5, scope: !1276)
!1406 = !DILocation(line: 2307, column: 9, scope: !1397, inlinedAt: !1405)
!1407 = !DILocation(line: 2309, column: 17, scope: !1408, inlinedAt: !1405)
!1408 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 2309, column: 9)
!1409 = !{!512, !482, i64 2432}
!1410 = !DILocation(line: 2309, column: 10, scope: !1408, inlinedAt: !1405)
!1411 = !DILocation(line: 2310, column: 17, scope: !1408, inlinedAt: !1405)
!1412 = !DILocation(line: 2310, column: 10, scope: !1408, inlinedAt: !1405)
!1413 = !DILocation(line: 2309, column: 42, scope: !1408, inlinedAt: !1405)
!1414 = !DILocation(line: 2312, column: 23, scope: !1397, inlinedAt: !1405)
!1415 = !DILocation(line: 2305, column: 14, scope: !1397, inlinedAt: !1405)
!1416 = !DILocation(line: 2312, column: 5, scope: !1397, inlinedAt: !1405)
!1417 = !DILocation(line: 2313, column: 17, scope: !1397, inlinedAt: !1405)
!1418 = !DILocation(line: 2306, column: 15, scope: !1397, inlinedAt: !1405)
!1419 = !DILocation(line: 2313, column: 5, scope: !1397, inlinedAt: !1405)
!1420 = !DILocation(line: 2314, column: 29, scope: !1403, inlinedAt: !1405)
!1421 = !DILocation(line: 2314, column: 17, scope: !1403, inlinedAt: !1405)
!1422 = !DILocation(line: 2317, column: 20, scope: !1423, inlinedAt: !1405)
!1423 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 2317, column: 13)
!1424 = !DILocation(line: 2317, column: 30, scope: !1423, inlinedAt: !1405)
!1425 = !DILocation(line: 2317, column: 52, scope: !1423, inlinedAt: !1405)
!1426 = !DILocation(line: 2315, column: 29, scope: !1403, inlinedAt: !1405)
!1427 = !DILocation(line: 2315, column: 47, scope: !1403, inlinedAt: !1405)
!1428 = !DILocation(line: 2315, column: 38, scope: !1403, inlinedAt: !1405)
!1429 = !DILocation(line: 2315, column: 16, scope: !1403, inlinedAt: !1405)
!1430 = !DILocation(line: 2318, column: 27, scope: !1423, inlinedAt: !1405)
!1431 = !{!512, !482, i64 2436}
!1432 = !DILocation(line: 2318, column: 20, scope: !1423, inlinedAt: !1405)
!1433 = !DILocation(line: 2318, column: 17, scope: !1423, inlinedAt: !1405)
!1434 = !DILocation(line: 2317, column: 13, scope: !1403, inlinedAt: !1405)
!1435 = !DILocation(line: 0, scope: !1397, inlinedAt: !1405)
!1436 = distinct !{!1436, !1437, !1438}
!1437 = !DILocation(line: 2313, column: 5, scope: !1397)
!1438 = !DILocation(line: 2319, column: 5, scope: !1397)
!1439 = !DILocation(line: 0, scope: !1423, inlinedAt: !1405)
!1440 = !DILocation(line: 2320, column: 35, scope: !1397, inlinedAt: !1405)
!1441 = !{!512, !482, i64 2440}
!1442 = !DILocation(line: 2321, column: 1, scope: !1397, inlinedAt: !1405)
!1443 = !DILocation(line: 536, column: 5, scope: !1276)
!1444 = !DILocation(line: 0, scope: !1276)
!1445 = !DILocation(line: 544, column: 1, scope: !1276)
!1446 = !DILocation(line: 2305, column: 5, scope: !1397)
!1447 = !DILocation(line: 2307, column: 9, scope: !1397)
!1448 = !DILocation(line: 2309, column: 17, scope: !1408)
!1449 = !DILocation(line: 2309, column: 10, scope: !1408)
!1450 = !DILocation(line: 2310, column: 17, scope: !1408)
!1451 = !DILocation(line: 2310, column: 10, scope: !1408)
!1452 = !DILocation(line: 2309, column: 42, scope: !1408)
!1453 = !DILocation(line: 2312, column: 23, scope: !1397)
!1454 = !DILocation(line: 2305, column: 14, scope: !1397)
!1455 = !DILocation(line: 2312, column: 5, scope: !1397)
!1456 = !DILocation(line: 2313, column: 17, scope: !1397)
!1457 = !DILocation(line: 2306, column: 15, scope: !1397)
!1458 = !DILocation(line: 2314, column: 29, scope: !1403)
!1459 = !DILocation(line: 2314, column: 17, scope: !1403)
!1460 = !DILocation(line: 2317, column: 20, scope: !1423)
!1461 = !DILocation(line: 2317, column: 30, scope: !1423)
!1462 = !DILocation(line: 2317, column: 52, scope: !1423)
!1463 = !DILocation(line: 2315, column: 29, scope: !1403)
!1464 = !DILocation(line: 2315, column: 47, scope: !1403)
!1465 = !DILocation(line: 2315, column: 38, scope: !1403)
!1466 = !DILocation(line: 2315, column: 16, scope: !1403)
!1467 = !DILocation(line: 2318, column: 27, scope: !1423)
!1468 = !DILocation(line: 2318, column: 20, scope: !1423)
!1469 = !DILocation(line: 2318, column: 17, scope: !1423)
!1470 = !DILocation(line: 2317, column: 13, scope: !1403)
!1471 = !DILocation(line: 0, scope: !1397)
!1472 = !DILocation(line: 0, scope: !1423)
!1473 = !DILocation(line: 2320, column: 35, scope: !1397)
!1474 = !DILocation(line: 2321, column: 1, scope: !1397)
!1475 = distinct !DISubprogram(name: "startBgsaveForReplication", scope: !3, file: !3, line: 564, type: !1476, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!20, !20}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1487, !1491}
!1479 = !DILocalVariable(name: "mincapa", arg: 1, scope: !1475, file: !3, line: 564, type: !20)
!1480 = !DILocalVariable(name: "retval", scope: !1475, file: !3, line: 565, type: !20)
!1481 = !DILocalVariable(name: "socket_target", scope: !1475, file: !3, line: 566, type: !20)
!1482 = !DILocalVariable(name: "li", scope: !1475, file: !3, line: 567, type: !420)
!1483 = !DILocalVariable(name: "ln", scope: !1475, file: !3, line: 568, type: !105)
!1484 = !DILocalVariable(name: "rsi", scope: !1475, file: !3, line: 573, type: !401)
!1485 = !DILocalVariable(name: "rsiptr", scope: !1475, file: !3, line: 573, type: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1487 = !DILocalVariable(name: "slave", scope: !1488, file: !3, line: 594, type: !8)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 593, column: 37)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 590, column: 26)
!1490 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 590, column: 9)
!1491 = !DILocalVariable(name: "slave", scope: !1492, file: !3, line: 613, type: !8)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 612, column: 37)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 610, column: 25)
!1494 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 610, column: 9)
!1495 = !DILocation(line: 420, column: 10, scope: !1237, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 616, column: 21, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 615, column: 68)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 615, column: 17)
!1499 = !DILocation(line: 564, column: 35, scope: !1475)
!1500 = !DILocation(line: 566, column: 32, scope: !1475)
!1501 = !{!512, !482, i64 2444}
!1502 = !DILocation(line: 566, column: 25, scope: !1475)
!1503 = !DILocation(line: 566, column: 63, scope: !1475)
!1504 = !DILocation(line: 566, column: 51, scope: !1475)
!1505 = !DILocation(line: 567, column: 5, scope: !1475)
!1506 = !DILocation(line: 571, column: 9, scope: !1475)
!1507 = !DILocation(line: 570, column: 5, scope: !1475)
!1508 = !DILocation(line: 573, column: 5, scope: !1475)
!1509 = !DILocation(line: 573, column: 17, scope: !1475)
!1510 = !DILocation(line: 574, column: 14, scope: !1475)
!1511 = !DILocation(line: 573, column: 23, scope: !1475)
!1512 = !DILocation(line: 577, column: 9, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 577, column: 9)
!1514 = !DILocation(line: 577, column: 9, scope: !1475)
!1515 = !DILocation(line: 578, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 577, column: 17)
!1517 = !DILocation(line: 579, column: 22, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 578, column: 13)
!1519 = !DILocation(line: 565, column: 9, scope: !1475)
!1520 = !DILocation(line: 579, column: 13, scope: !1518)
!1521 = !DILocation(line: 581, column: 47, scope: !1518)
!1522 = !{!512, !483, i64 2120}
!1523 = !DILocation(line: 581, column: 22, scope: !1518)
!1524 = !DILocation(line: 583, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 582, column: 12)
!1526 = !DILocation(line: 590, column: 9, scope: !1475)
!1527 = !DILocation(line: 0, scope: !1525)
!1528 = !DILocation(line: 590, column: 16, scope: !1490)
!1529 = !DILocation(line: 591, column: 9, scope: !1489)
!1530 = !DILocation(line: 592, column: 27, scope: !1489)
!1531 = !DILocation(line: 567, column: 14, scope: !1475)
!1532 = !DILocation(line: 592, column: 9, scope: !1489)
!1533 = !DILocation(line: 593, column: 21, scope: !1489)
!1534 = !DILocation(line: 568, column: 15, scope: !1475)
!1535 = !DILocation(line: 593, column: 9, scope: !1489)
!1536 = !DILocation(line: 594, column: 33, scope: !1488)
!1537 = !DILocation(line: 594, column: 21, scope: !1488)
!1538 = !DILocation(line: 596, column: 24, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 596, column: 17)
!1540 = !DILocation(line: 596, column: 34, scope: !1539)
!1541 = !DILocation(line: 596, column: 17, scope: !1488)
!1542 = !DILocation(line: 597, column: 34, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 596, column: 68)
!1544 = !DILocation(line: 598, column: 24, scope: !1543)
!1545 = !DILocation(line: 598, column: 30, scope: !1543)
!1546 = !DILocation(line: 599, column: 36, scope: !1543)
!1547 = !DILocation(line: 599, column: 17, scope: !1543)
!1548 = !DILocation(line: 600, column: 17, scope: !1543)
!1549 = !DILocation(line: 602, column: 30, scope: !1543)
!1550 = !DILocation(line: 603, column: 13, scope: !1543)
!1551 = distinct !{!1551, !1535, !1552}
!1552 = !DILocation(line: 604, column: 9, scope: !1489)
!1553 = !DILocation(line: 610, column: 9, scope: !1475)
!1554 = !DILocation(line: 611, column: 27, scope: !1493)
!1555 = !DILocation(line: 611, column: 9, scope: !1493)
!1556 = !DILocation(line: 612, column: 21, scope: !1493)
!1557 = !DILocation(line: 612, column: 9, scope: !1493)
!1558 = !DILocation(line: 613, column: 33, scope: !1492)
!1559 = !DILocation(line: 613, column: 21, scope: !1492)
!1560 = !DILocation(line: 615, column: 24, scope: !1498)
!1561 = !DILocation(line: 615, column: 34, scope: !1498)
!1562 = !DILocation(line: 615, column: 17, scope: !1492)
!1563 = !DILocation(line: 400, column: 19, scope: !1232, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 617, column: 29, scope: !1497)
!1565 = !DILocation(line: 419, column: 48, scope: !1237, inlinedAt: !1496)
!1566 = !DILocation(line: 419, column: 65, scope: !1237, inlinedAt: !1496)
!1567 = !DILocation(line: 420, column: 5, scope: !1237, inlinedAt: !1496)
!1568 = !DILocation(line: 423, column: 12, scope: !1237, inlinedAt: !1496)
!1569 = !DILocation(line: 423, column: 33, scope: !1237, inlinedAt: !1496)
!1570 = !DILocation(line: 424, column: 22, scope: !1237, inlinedAt: !1496)
!1571 = !DILocation(line: 428, column: 23, scope: !1237, inlinedAt: !1496)
!1572 = !DILocation(line: 432, column: 18, scope: !1259, inlinedAt: !1496)
!1573 = !DILocation(line: 432, column: 24, scope: !1259, inlinedAt: !1496)
!1574 = !DILocation(line: 432, column: 9, scope: !1237, inlinedAt: !1496)
!1575 = !DILocation(line: 433, column: 18, scope: !1263, inlinedAt: !1496)
!1576 = !DILocation(line: 421, column: 9, scope: !1237, inlinedAt: !1496)
!1577 = !DILocation(line: 435, column: 26, scope: !1266, inlinedAt: !1496)
!1578 = !DILocation(line: 435, column: 33, scope: !1266, inlinedAt: !1496)
!1579 = !DILocation(line: 435, column: 13, scope: !1266, inlinedAt: !1496)
!1580 = !DILocation(line: 435, column: 41, scope: !1266, inlinedAt: !1496)
!1581 = !DILocation(line: 435, column: 13, scope: !1263, inlinedAt: !1496)
!1582 = !DILocation(line: 436, column: 13, scope: !1272, inlinedAt: !1496)
!1583 = !DILocation(line: 437, column: 13, scope: !1272, inlinedAt: !1496)
!1584 = !DILocation(line: 441, column: 1, scope: !1237, inlinedAt: !1496)
!1585 = !DILocation(line: 618, column: 13, scope: !1497)
!1586 = distinct !{!1586, !1557, !1587}
!1587 = !DILocation(line: 619, column: 9, scope: !1493)
!1588 = !DILocation(line: 624, column: 16, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 624, column: 9)
!1590 = !DILocation(line: 624, column: 9, scope: !1475)
!1591 = !DILocation(line: 2373, column: 22, scope: !1592, inlinedAt: !1593)
!1592 = distinct !DISubprogram(name: "replicationScriptCacheFlush", scope: !3, file: !3, line: 2372, type: !306, isLocal: false, isDefinition: true, scopeLine: 2372, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1593 = distinct !DILocation(line: 624, column: 25, scope: !1589)
!1594 = !{!512, !483, i64 2664}
!1595 = !DILocation(line: 2373, column: 5, scope: !1592, inlinedAt: !1593)
!1596 = !DILocation(line: 2374, column: 24, scope: !1592, inlinedAt: !1593)
!1597 = !{!512, !483, i64 2672}
!1598 = !DILocation(line: 2374, column: 5, scope: !1592, inlinedAt: !1593)
!1599 = !DILocation(line: 2375, column: 36, scope: !1592, inlinedAt: !1593)
!1600 = !DILocation(line: 2375, column: 34, scope: !1592, inlinedAt: !1593)
!1601 = !DILocation(line: 624, column: 25, scope: !1589)
!1602 = !DILocation(line: 626, column: 1, scope: !1475)
!1603 = !DILocation(line: 2373, column: 22, scope: !1592)
!1604 = !DILocation(line: 2373, column: 5, scope: !1592)
!1605 = !DILocation(line: 2374, column: 24, scope: !1592)
!1606 = !DILocation(line: 2374, column: 5, scope: !1592)
!1607 = !DILocation(line: 2375, column: 36, scope: !1592)
!1608 = !DILocation(line: 2375, column: 34, scope: !1592)
!1609 = !DILocation(line: 2376, column: 1, scope: !1592)
!1610 = distinct !DISubprogram(name: "syncCommand", scope: !3, file: !3, line: 629, type: !159, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1611)
!1611 = !{!1612, !1613, !1618, !1621, !1622}
!1612 = !DILocalVariable(name: "c", arg: 1, scope: !1610, file: !3, line: 629, type: !8)
!1613 = !DILocalVariable(name: "master_replid", scope: !1614, file: !3, line: 666, type: !6)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 665, column: 16)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 662, column: 13)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 661, column: 47)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 661, column: 9)
!1618 = !DILocalVariable(name: "slave", scope: !1619, file: !3, line: 710, type: !8)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 706, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 704, column: 9)
!1621 = !DILocalVariable(name: "ln", scope: !1619, file: !3, line: 711, type: !105)
!1622 = !DILocalVariable(name: "li", scope: !1619, file: !3, line: 712, type: !420)
!1623 = !DILocation(line: 420, column: 10, scope: !1237, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 725, column: 13, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 721, column: 79)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 721, column: 13)
!1627 = !DILocation(line: 629, column: 26, scope: !1610)
!1628 = !DILocation(line: 631, column: 12, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 631, column: 9)
!1630 = !DILocation(line: 631, column: 18, scope: !1629)
!1631 = !DILocation(line: 631, column: 9, scope: !1610)
!1632 = !DILocation(line: 635, column: 16, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 635, column: 9)
!1634 = !DILocation(line: 635, column: 9, scope: !1633)
!1635 = !DILocation(line: 635, column: 37, scope: !1633)
!1636 = !DILocation(line: 635, column: 48, scope: !1633)
!1637 = !DILocation(line: 635, column: 27, scope: !1633)
!1638 = !DILocation(line: 636, column: 23, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 635, column: 73)
!1640 = !DILocation(line: 636, column: 9, scope: !1639)
!1641 = !DILocation(line: 637, column: 9, scope: !1639)
!1642 = !DILocation(line: 644, column: 9, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 644, column: 9)
!1644 = !DILocation(line: 644, column: 9, scope: !1610)
!1645 = !DILocation(line: 645, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 644, column: 37)
!1647 = !DILocation(line: 646, column: 9, scope: !1646)
!1648 = !DILocation(line: 650, column: 9, scope: !1610)
!1649 = !DILocation(line: 649, column: 5, scope: !1610)
!1650 = !DILocation(line: 661, column: 24, scope: !1617)
!1651 = !DILocation(line: 661, column: 21, scope: !1617)
!1652 = !DILocation(line: 661, column: 33, scope: !1617)
!1653 = !DILocation(line: 661, column: 10, scope: !1617)
!1654 = !DILocation(line: 661, column: 9, scope: !1610)
!1655 = !DILocation(line: 662, column: 13, scope: !1615)
!1656 = !DILocation(line: 662, column: 50, scope: !1615)
!1657 = !DILocation(line: 662, column: 13, scope: !1616)
!1658 = !DILocation(line: 663, column: 40, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 662, column: 59)
!1660 = !{!512, !484, i64 1152}
!1661 = !DILocation(line: 664, column: 13, scope: !1659)
!1662 = !DILocation(line: 666, column: 38, scope: !1614)
!1663 = !DILocation(line: 666, column: 35, scope: !1614)
!1664 = !DILocation(line: 666, column: 47, scope: !1614)
!1665 = !DILocation(line: 666, column: 19, scope: !1614)
!1666 = !DILocation(line: 672, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 672, column: 17)
!1668 = !DILocation(line: 672, column: 34, scope: !1667)
!1669 = !DILocation(line: 672, column: 17, scope: !1614)
!1670 = !DILocation(line: 672, column: 70, scope: !1667)
!1671 = !{!512, !484, i64 1160}
!1672 = !DILocation(line: 672, column: 42, scope: !1667)
!1673 = !DILocation(line: 678, column: 18, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 674, column: 12)
!1675 = !DILocation(line: 682, column: 26, scope: !1610)
!1676 = !{!512, !484, i64 1144}
!1677 = !DILocation(line: 686, column: 8, scope: !1610)
!1678 = !DILocation(line: 686, column: 18, scope: !1610)
!1679 = !DILocation(line: 687, column: 16, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 687, column: 9)
!1681 = !{!512, !482, i64 2576}
!1682 = !DILocation(line: 687, column: 9, scope: !1680)
!1683 = !DILocation(line: 687, column: 9, scope: !1610)
!1684 = !DILocation(line: 688, column: 40, scope: !1680)
!1685 = !DILocation(line: 688, column: 9, scope: !1680)
!1686 = !DILocation(line: 689, column: 8, scope: !1610)
!1687 = !DILocation(line: 689, column: 17, scope: !1610)
!1688 = !{!480, !482, i64 176}
!1689 = !DILocation(line: 690, column: 14, scope: !1610)
!1690 = !DILocation(line: 691, column: 28, scope: !1610)
!1691 = !DILocation(line: 691, column: 35, scope: !1610)
!1692 = !DILocation(line: 691, column: 5, scope: !1610)
!1693 = !DILocation(line: 694, column: 9, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 694, column: 9)
!1695 = !DILocation(line: 694, column: 35, scope: !1694)
!1696 = !DILocation(line: 694, column: 50, scope: !1694)
!1697 = !DILocation(line: 694, column: 63, scope: !1694)
!1698 = !DILocation(line: 694, column: 40, scope: !1694)
!1699 = !DILocation(line: 1034, column: 5, scope: !1700, inlinedAt: !1701)
!1700 = distinct !DISubprogram(name: "changeReplicationId", scope: !3, file: !3, line: 1033, type: !306, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1701 = distinct !DILocation(line: 698, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 694, column: 72)
!1703 = !DILocation(line: 1035, column: 39, scope: !1700, inlinedAt: !1701)
!1704 = !DILocation(line: 1042, column: 5, scope: !1705, inlinedAt: !1706)
!1705 = distinct !DISubprogram(name: "clearReplicationId2", scope: !3, file: !3, line: 1041, type: !306, isLocal: false, isDefinition: true, scopeLine: 1041, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1706 = distinct !DILocation(line: 699, column: 9, scope: !1702)
!1707 = !DILocation(line: 1043, column: 40, scope: !1705, inlinedAt: !1706)
!1708 = !DILocation(line: 1044, column: 33, scope: !1705, inlinedAt: !1706)
!1709 = !DILocation(line: 79, column: 5, scope: !509, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 700, column: 9, scope: !1702)
!1711 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !1710)
!1712 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !1710)
!1713 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !1710)
!1714 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !1710)
!1715 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !1710)
!1716 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !1710)
!1717 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !1710)
!1718 = !DILocation(line: 701, column: 5, scope: !1702)
!1719 = !DILocation(line: 704, column: 16, scope: !1620)
!1720 = !{!512, !482, i64 2096}
!1721 = !DILocation(line: 704, column: 30, scope: !1620)
!1722 = !DILocation(line: 705, column: 16, scope: !1620)
!1723 = !DILocation(line: 705, column: 31, scope: !1620)
!1724 = !DILocation(line: 704, column: 36, scope: !1620)
!1725 = !DILocation(line: 712, column: 9, scope: !1619)
!1726 = !DILocation(line: 714, column: 27, scope: !1619)
!1727 = !DILocation(line: 712, column: 18, scope: !1619)
!1728 = !DILocation(line: 714, column: 9, scope: !1619)
!1729 = !DILocation(line: 715, column: 9, scope: !1619)
!1730 = !DILocation(line: 715, column: 21, scope: !1619)
!1731 = !DILocation(line: 711, column: 19, scope: !1619)
!1732 = !DILocation(line: 716, column: 25, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 715, column: 37)
!1734 = !DILocation(line: 710, column: 17, scope: !1619)
!1735 = !DILocation(line: 717, column: 24, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 717, column: 17)
!1737 = !DILocation(line: 717, column: 34, scope: !1736)
!1738 = !DILocation(line: 717, column: 17, scope: !1733)
!1739 = distinct !{!1739, !1729, !1740}
!1740 = !DILocation(line: 718, column: 9, scope: !1619)
!1741 = !DILocation(line: 721, column: 24, scope: !1626)
!1742 = !DILocation(line: 721, column: 44, scope: !1626)
!1743 = !DILocation(line: 721, column: 35, scope: !1626)
!1744 = !DILocation(line: 721, column: 56, scope: !1626)
!1745 = !DILocation(line: 721, column: 13, scope: !1619)
!1746 = !DILocation(line: 724, column: 13, scope: !1625)
!1747 = !DILocation(line: 725, column: 57, scope: !1625)
!1748 = !DILocation(line: 419, column: 48, scope: !1237, inlinedAt: !1624)
!1749 = !DILocation(line: 419, column: 65, scope: !1237, inlinedAt: !1624)
!1750 = !DILocation(line: 420, column: 5, scope: !1237, inlinedAt: !1624)
!1751 = !DILocation(line: 423, column: 12, scope: !1237, inlinedAt: !1624)
!1752 = !DILocation(line: 423, column: 33, scope: !1237, inlinedAt: !1624)
!1753 = !DILocation(line: 424, column: 22, scope: !1237, inlinedAt: !1624)
!1754 = !DILocation(line: 428, column: 23, scope: !1237, inlinedAt: !1624)
!1755 = !DILocation(line: 432, column: 18, scope: !1259, inlinedAt: !1624)
!1756 = !DILocation(line: 432, column: 24, scope: !1259, inlinedAt: !1624)
!1757 = !DILocation(line: 432, column: 9, scope: !1237, inlinedAt: !1624)
!1758 = !DILocation(line: 433, column: 18, scope: !1263, inlinedAt: !1624)
!1759 = !DILocation(line: 421, column: 9, scope: !1237, inlinedAt: !1624)
!1760 = !DILocation(line: 435, column: 26, scope: !1266, inlinedAt: !1624)
!1761 = !DILocation(line: 435, column: 33, scope: !1266, inlinedAt: !1624)
!1762 = !DILocation(line: 435, column: 13, scope: !1266, inlinedAt: !1624)
!1763 = !DILocation(line: 435, column: 41, scope: !1266, inlinedAt: !1624)
!1764 = !DILocation(line: 435, column: 13, scope: !1263, inlinedAt: !1624)
!1765 = !DILocation(line: 436, column: 13, scope: !1272, inlinedAt: !1624)
!1766 = !DILocation(line: 437, column: 13, scope: !1272, inlinedAt: !1624)
!1767 = !DILocation(line: 441, column: 1, scope: !1237, inlinedAt: !1624)
!1768 = !DILocation(line: 726, column: 13, scope: !1625)
!1769 = !DILocation(line: 727, column: 9, scope: !1625)
!1770 = !DILocation(line: 730, column: 13, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 727, column: 16)
!1772 = !DILocation(line: 734, column: 5, scope: !1620)
!1773 = !DILocation(line: 734, column: 5, scope: !1619)
!1774 = !DILocation(line: 735, column: 38, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 734, column: 16)
!1776 = !DILocation(line: 734, column: 43, scope: !1775)
!1777 = !DILocation(line: 740, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 736, column: 5)
!1779 = !DILocation(line: 743, column: 5, scope: !1778)
!1780 = !DILocation(line: 744, column: 20, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 744, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 743, column: 12)
!1783 = !DILocation(line: 744, column: 13, scope: !1781)
!1784 = !DILocation(line: 744, column: 39, scope: !1781)
!1785 = !DILocation(line: 744, column: 46, scope: !1781)
!1786 = !DILocation(line: 744, column: 57, scope: !1781)
!1787 = !DILocation(line: 744, column: 13, scope: !1782)
!1788 = !DILocation(line: 748, column: 24, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 748, column: 17)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 744, column: 76)
!1791 = !{!512, !482, i64 2448}
!1792 = !DILocation(line: 748, column: 17, scope: !1789)
!1793 = !DILocation(line: 748, column: 17, scope: !1790)
!1794 = !DILocation(line: 749, column: 17, scope: !1789)
!1795 = !DILocation(line: 754, column: 24, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 754, column: 17)
!1797 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 750, column: 16)
!1798 = !{!512, !482, i64 1940}
!1799 = !DILocation(line: 754, column: 38, scope: !1796)
!1800 = !DILocation(line: 754, column: 17, scope: !1797)
!1801 = !DILocation(line: 755, column: 46, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 754, column: 45)
!1803 = !DILocation(line: 755, column: 17, scope: !1802)
!1804 = !DILocation(line: 756, column: 13, scope: !1802)
!1805 = !DILocation(line: 757, column: 17, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 756, column: 20)
!1807 = !DILocation(line: 764, column: 1, scope: !1610)
!1808 = !DILocation(line: 1034, column: 5, scope: !1700)
!1809 = !DILocation(line: 1035, column: 39, scope: !1700)
!1810 = !DILocation(line: 1036, column: 1, scope: !1700)
!1811 = !DILocation(line: 1042, column: 5, scope: !1705)
!1812 = !DILocation(line: 1043, column: 40, scope: !1705)
!1813 = !DILocation(line: 1044, column: 33, scope: !1705)
!1814 = !DILocation(line: 1045, column: 1, scope: !1705)
!1815 = distinct !DISubprogram(name: "replconfCommand", scope: !3, file: !3, line: 778, type: !159, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1816)
!1816 = !{!1817, !1818, !1819, !1825, !1828}
!1817 = !DILocalVariable(name: "c", arg: 1, scope: !1815, file: !3, line: 778, type: !8)
!1818 = !DILocalVariable(name: "j", scope: !1815, file: !3, line: 779, type: !20)
!1819 = !DILocalVariable(name: "port", scope: !1820, file: !3, line: 791, type: !79)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 790, column: 60)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 790, column: 13)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 789, column: 36)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 789, column: 5)
!1824 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 789, column: 5)
!1825 = !DILocalVariable(name: "ip", scope: !1826, file: !3, line: 798, type: !139)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 797, column: 63)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 797, column: 20)
!1828 = !DILocalVariable(name: "offset", scope: !1829, file: !3, line: 816, type: !97)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 812, column: 56)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 812, column: 20)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 806, column: 20)
!1832 = !DILocation(line: 778, column: 30, scope: !1815)
!1833 = !DILocation(line: 781, column: 13, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 781, column: 9)
!1835 = !{!480, !482, i64 64}
!1836 = !DILocation(line: 781, column: 23, scope: !1834)
!1837 = !DILocation(line: 781, column: 9, scope: !1815)
!1838 = !DILocation(line: 779, column: 9, scope: !1815)
!1839 = !DILocation(line: 789, column: 19, scope: !1823)
!1840 = !DILocation(line: 789, column: 5, scope: !1824)
!1841 = !DILocation(line: 784, column: 27, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 781, column: 29)
!1843 = !{!1844, !483, i64 128}
!1844 = !{!"sharedObjectsStruct", !483, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !483, i64 32, !483, i64 40, !483, i64 48, !483, i64 56, !483, i64 64, !483, i64 72, !483, i64 80, !483, i64 88, !483, i64 96, !483, i64 104, !483, i64 112, !483, i64 120, !483, i64 128, !483, i64 136, !483, i64 144, !483, i64 152, !483, i64 160, !483, i64 168, !483, i64 176, !483, i64 184, !483, i64 192, !483, i64 200, !483, i64 208, !483, i64 216, !483, i64 224, !483, i64 232, !483, i64 240, !483, i64 248, !483, i64 256, !483, i64 264, !483, i64 272, !483, i64 280, !483, i64 288, !483, i64 296, !483, i64 304, !483, i64 312, !483, i64 320, !483, i64 328, !483, i64 336, !483, i64 344, !483, i64 352, !483, i64 360, !471, i64 368, !471, i64 448, !471, i64 80448, !471, i64 80704, !483, i64 80960, !483, i64 80968}
!1845 = !DILocation(line: 784, column: 9, scope: !1842)
!1846 = !DILocation(line: 785, column: 9, scope: !1842)
!1847 = !DILocation(line: 790, column: 28, scope: !1821)
!1848 = !DILocation(line: 790, column: 25, scope: !1821)
!1849 = !DILocation(line: 790, column: 37, scope: !1821)
!1850 = !DILocation(line: 790, column: 14, scope: !1821)
!1851 = !DILocation(line: 790, column: 13, scope: !1822)
!1852 = !DILocation(line: 791, column: 13, scope: !1820)
!1853 = !DILocation(line: 793, column: 54, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 793, column: 17)
!1855 = !DILocation(line: 793, column: 45, scope: !1854)
!1856 = !DILocation(line: 791, column: 18, scope: !1820)
!1857 = !DILocation(line: 793, column: 18, scope: !1854)
!1858 = !DILocation(line: 794, column: 33, scope: !1854)
!1859 = !DILocation(line: 793, column: 17, scope: !1820)
!1860 = !DILocation(line: 796, column: 39, scope: !1820)
!1861 = !DILocation(line: 796, column: 37, scope: !1820)
!1862 = !DILocation(line: 797, column: 9, scope: !1821)
!1863 = !DILocation(line: 797, column: 21, scope: !1827)
!1864 = !DILocation(line: 797, column: 20, scope: !1821)
!1865 = !DILocation(line: 798, column: 31, scope: !1826)
!1866 = !DILocation(line: 798, column: 22, scope: !1826)
!1867 = !DILocation(line: 798, column: 36, scope: !1826)
!1868 = !DILocation(line: 798, column: 17, scope: !1826)
!1869 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 799, column: 17, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 799, column: 17)
!1872 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !1870)
!1873 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1870)
!1874 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1870)
!1875 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1870)
!1876 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1870)
!1877 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1870)
!1878 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1870)
!1879 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1870)
!1880 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1870)
!1881 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1870)
!1882 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1870)
!1883 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1870)
!1884 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1870)
!1885 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1870)
!1886 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1870)
!1887 = !DILocation(line: 0, scope: !660, inlinedAt: !1870)
!1888 = !DILocation(line: 799, column: 28, scope: !1871)
!1889 = !DILocation(line: 799, column: 17, scope: !1826)
!1890 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 800, column: 39, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 799, column: 51)
!1893 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1891)
!1894 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1891)
!1895 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !1891)
!1896 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !1891)
!1897 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1891)
!1898 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1891)
!1899 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1891)
!1900 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1891)
!1901 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1891)
!1902 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1891)
!1903 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1891)
!1904 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1891)
!1905 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1891)
!1906 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1891)
!1907 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1891)
!1908 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1891)
!1909 = !DILocation(line: 0, scope: !660, inlinedAt: !1891)
!1910 = !DILocation(line: 800, column: 49, scope: !1892)
!1911 = !DILocation(line: 800, column: 17, scope: !1892)
!1912 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 803, column: 64, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 801, column: 20)
!1915 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1913)
!1916 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1913)
!1917 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1913)
!1918 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1913)
!1919 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1913)
!1920 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1913)
!1921 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1913)
!1922 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1913)
!1923 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1913)
!1924 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1913)
!1925 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1913)
!1926 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1913)
!1927 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1913)
!1928 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1913)
!1929 = !DILocation(line: 0, scope: !660, inlinedAt: !1913)
!1930 = !DILocation(line: 802, column: 17, scope: !1914)
!1931 = !DILocation(line: 806, column: 21, scope: !1831)
!1932 = !DILocation(line: 806, column: 20, scope: !1827)
!1933 = !DILocation(line: 808, column: 38, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 808, column: 17)
!1935 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 806, column: 57)
!1936 = !DILocation(line: 808, column: 29, scope: !1934)
!1937 = !DILocation(line: 808, column: 43, scope: !1934)
!1938 = !DILocation(line: 808, column: 18, scope: !1934)
!1939 = !DILocation(line: 808, column: 17, scope: !1935)
!1940 = !DILocation(line: 809, column: 31, scope: !1934)
!1941 = !DILocation(line: 809, column: 17, scope: !1934)
!1942 = !DILocation(line: 810, column: 23, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 810, column: 22)
!1944 = !DILocation(line: 810, column: 22, scope: !1934)
!1945 = !DILocation(line: 811, column: 31, scope: !1943)
!1946 = !DILocation(line: 811, column: 17, scope: !1943)
!1947 = !DILocation(line: 812, column: 21, scope: !1830)
!1948 = !DILocation(line: 812, column: 20, scope: !1831)
!1949 = !DILocation(line: 816, column: 13, scope: !1829)
!1950 = !DILocation(line: 818, column: 22, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 818, column: 17)
!1952 = !DILocation(line: 818, column: 28, scope: !1951)
!1953 = !DILocation(line: 818, column: 17, scope: !1829)
!1954 = !DILocation(line: 819, column: 49, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 819, column: 17)
!1956 = !DILocation(line: 819, column: 40, scope: !1955)
!1957 = !DILocation(line: 816, column: 23, scope: !1829)
!1958 = !DILocation(line: 819, column: 18, scope: !1955)
!1959 = !DILocation(line: 819, column: 63, scope: !1955)
!1960 = !DILocation(line: 819, column: 17, scope: !1829)
!1961 = !DILocation(line: 821, column: 17, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 821, column: 17)
!1963 = !DILocation(line: 821, column: 29, scope: !1962)
!1964 = !{!480, !484, i64 224}
!1965 = !DILocation(line: 821, column: 24, scope: !1962)
!1966 = !DILocation(line: 821, column: 17, scope: !1829)
!1967 = !DILocation(line: 822, column: 33, scope: !1962)
!1968 = !DILocation(line: 822, column: 17, scope: !1962)
!1969 = !DILocation(line: 823, column: 39, scope: !1829)
!1970 = !DILocation(line: 823, column: 16, scope: !1829)
!1971 = !DILocation(line: 823, column: 30, scope: !1829)
!1972 = !DILocation(line: 829, column: 20, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 829, column: 17)
!1974 = !DILocation(line: 829, column: 17, scope: !1973)
!1975 = !DILocation(line: 829, column: 43, scope: !1973)
!1976 = !DILocation(line: 829, column: 49, scope: !1973)
!1977 = !DILocation(line: 829, column: 59, scope: !1973)
!1978 = !DILocation(line: 829, column: 17, scope: !1829)
!1979 = !DILocation(line: 830, column: 17, scope: !1973)
!1980 = !DILocation(line: 833, column: 9, scope: !1830)
!1981 = !DILocation(line: 833, column: 21, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 833, column: 20)
!1983 = !DILocation(line: 833, column: 20, scope: !1830)
!1984 = !DILocation(line: 836, column: 24, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 836, column: 17)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 833, column: 59)
!1987 = !DILocation(line: 836, column: 17, scope: !1985)
!1988 = !DILocation(line: 836, column: 45, scope: !1985)
!1989 = !DILocation(line: 836, column: 38, scope: !1985)
!1990 = !DILocation(line: 836, column: 35, scope: !1985)
!1991 = !DILocalVariable(name: "c", scope: !1992, file: !3, line: 2159, type: !8)
!1992 = distinct !DISubprogram(name: "replicationSendAck", scope: !3, file: !3, line: 2158, type: !306, isLocal: false, isDefinition: true, scopeLine: 2158, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1993)
!1993 = !{!1991}
!1994 = !DILocation(line: 2159, column: 13, scope: !1992, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 836, column: 53, scope: !1985)
!1996 = !DILocation(line: 2162, column: 12, scope: !1997, inlinedAt: !1995)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 2161, column: 20)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 2161, column: 9)
!1999 = !DILocation(line: 2162, column: 18, scope: !1997, inlinedAt: !1995)
!2000 = !DILocation(line: 2163, column: 9, scope: !1997, inlinedAt: !1995)
!2001 = !DILocation(line: 2164, column: 9, scope: !1997, inlinedAt: !1995)
!2002 = !DILocation(line: 2165, column: 9, scope: !1997, inlinedAt: !1995)
!2003 = !DILocation(line: 2166, column: 35, scope: !1997, inlinedAt: !1995)
!2004 = !{!480, !484, i64 216}
!2005 = !DILocation(line: 2166, column: 9, scope: !1997, inlinedAt: !1995)
!2006 = !DILocation(line: 2167, column: 18, scope: !1997, inlinedAt: !1995)
!2007 = !DILocation(line: 836, column: 53, scope: !1985)
!2008 = !DILocation(line: 839, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 838, column: 16)
!2010 = !DILocation(line: 841, column: 13, scope: !2009)
!2011 = !DILocation(line: 789, column: 31, scope: !1823)
!2012 = !DILocation(line: 789, column: 24, scope: !1823)
!2013 = distinct !{!2013, !1840, !2014}
!2014 = !DILocation(line: 843, column: 5, scope: !1824)
!2015 = !DILocation(line: 844, column: 23, scope: !1815)
!2016 = !{!1844, !483, i64 8}
!2017 = !DILocation(line: 844, column: 5, scope: !1815)
!2018 = !DILocation(line: 845, column: 1, scope: !1815)
!2019 = distinct !DISubprogram(name: "putSlaveOnline", scope: !3, file: !3, line: 861, type: !159, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2020)
!2020 = !{!2021}
!2021 = !DILocalVariable(name: "slave", arg: 1, scope: !2019, file: !3, line: 861, type: !8)
!2022 = !DILocation(line: 861, column: 29, scope: !2019)
!2023 = !DILocation(line: 862, column: 12, scope: !2019)
!2024 = !DILocation(line: 862, column: 22, scope: !2019)
!2025 = !DILocation(line: 863, column: 12, scope: !2019)
!2026 = !DILocation(line: 863, column: 35, scope: !2019)
!2027 = !DILocation(line: 864, column: 35, scope: !2019)
!2028 = !DILocation(line: 864, column: 12, scope: !2019)
!2029 = !DILocation(line: 864, column: 26, scope: !2019)
!2030 = !DILocation(line: 865, column: 34, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 865, column: 9)
!2032 = !{!512, !483, i64 72}
!2033 = !DILocation(line: 865, column: 45, scope: !2031)
!2034 = !DILocation(line: 866, column: 28, scope: !2031)
!2035 = !DILocation(line: 865, column: 9, scope: !2031)
!2036 = !DILocation(line: 866, column: 35, scope: !2031)
!2037 = !DILocation(line: 865, column: 9, scope: !2019)
!2038 = !DILocation(line: 867, column: 106, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 866, column: 46)
!2040 = !DILocation(line: 867, column: 97, scope: !2039)
!2041 = !DILocation(line: 867, column: 9, scope: !2039)
!2042 = !DILocation(line: 868, column: 9, scope: !2039)
!2043 = !DILocation(line: 869, column: 9, scope: !2039)
!2044 = !DILocation(line: 2305, column: 5, scope: !1397, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 871, column: 5, scope: !2019)
!2046 = !DILocation(line: 2307, column: 9, scope: !1397, inlinedAt: !2045)
!2047 = !DILocation(line: 2309, column: 17, scope: !1408, inlinedAt: !2045)
!2048 = !DILocation(line: 2309, column: 10, scope: !1408, inlinedAt: !2045)
!2049 = !DILocation(line: 2310, column: 17, scope: !1408, inlinedAt: !2045)
!2050 = !DILocation(line: 2310, column: 10, scope: !1408, inlinedAt: !2045)
!2051 = !DILocation(line: 2309, column: 42, scope: !1408, inlinedAt: !2045)
!2052 = !DILocation(line: 2312, column: 23, scope: !1397, inlinedAt: !2045)
!2053 = !DILocation(line: 2305, column: 14, scope: !1397, inlinedAt: !2045)
!2054 = !DILocation(line: 2312, column: 5, scope: !1397, inlinedAt: !2045)
!2055 = !DILocation(line: 2313, column: 17, scope: !1397, inlinedAt: !2045)
!2056 = !DILocation(line: 2306, column: 15, scope: !1397, inlinedAt: !2045)
!2057 = !DILocation(line: 2313, column: 5, scope: !1397, inlinedAt: !2045)
!2058 = !DILocation(line: 2314, column: 29, scope: !1403, inlinedAt: !2045)
!2059 = !DILocation(line: 2314, column: 17, scope: !1403, inlinedAt: !2045)
!2060 = !DILocation(line: 2317, column: 20, scope: !1423, inlinedAt: !2045)
!2061 = !DILocation(line: 2317, column: 30, scope: !1423, inlinedAt: !2045)
!2062 = !DILocation(line: 2317, column: 52, scope: !1423, inlinedAt: !2045)
!2063 = !DILocation(line: 2315, column: 29, scope: !1403, inlinedAt: !2045)
!2064 = !DILocation(line: 2315, column: 47, scope: !1403, inlinedAt: !2045)
!2065 = !DILocation(line: 2315, column: 38, scope: !1403, inlinedAt: !2045)
!2066 = !DILocation(line: 2315, column: 16, scope: !1403, inlinedAt: !2045)
!2067 = !DILocation(line: 2318, column: 27, scope: !1423, inlinedAt: !2045)
!2068 = !DILocation(line: 2318, column: 20, scope: !1423, inlinedAt: !2045)
!2069 = !DILocation(line: 2318, column: 17, scope: !1423, inlinedAt: !2045)
!2070 = !DILocation(line: 2317, column: 13, scope: !1403, inlinedAt: !2045)
!2071 = !DILocation(line: 0, scope: !1397, inlinedAt: !2045)
!2072 = !DILocation(line: 0, scope: !1423, inlinedAt: !2045)
!2073 = !DILocation(line: 2320, column: 35, scope: !1397, inlinedAt: !2045)
!2074 = !DILocation(line: 2321, column: 1, scope: !1397, inlinedAt: !2045)
!2075 = !DILocation(line: 873, column: 9, scope: !2019)
!2076 = !DILocation(line: 872, column: 5, scope: !2019)
!2077 = !DILocation(line: 874, column: 1, scope: !2019)
!2078 = !DILocation(line: 2159, column: 24, scope: !1992)
!2079 = !{!512, !483, i64 2480}
!2080 = !DILocation(line: 2159, column: 13, scope: !1992)
!2081 = !DILocation(line: 2161, column: 11, scope: !1998)
!2082 = !DILocation(line: 2161, column: 9, scope: !1992)
!2083 = !DILocation(line: 2162, column: 12, scope: !1997)
!2084 = !DILocation(line: 2162, column: 18, scope: !1997)
!2085 = !DILocation(line: 2163, column: 9, scope: !1997)
!2086 = !DILocation(line: 2164, column: 9, scope: !1997)
!2087 = !DILocation(line: 2165, column: 9, scope: !1997)
!2088 = !DILocation(line: 2166, column: 35, scope: !1997)
!2089 = !DILocation(line: 2166, column: 9, scope: !1997)
!2090 = !DILocation(line: 2167, column: 18, scope: !1997)
!2091 = !DILocation(line: 2168, column: 5, scope: !1997)
!2092 = !DILocation(line: 2169, column: 1, scope: !1992)
!2093 = distinct !DISubprogram(name: "sendBulkToSlave", scope: !3, file: !3, line: 876, type: !311, isLocal: false, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2095 = !DILocalVariable(name: "el", arg: 1, scope: !2093, file: !3, line: 876, type: !313)
!2096 = !DILocalVariable(name: "fd", arg: 2, scope: !2093, file: !3, line: 876, type: !20)
!2097 = !DILocalVariable(name: "privdata", arg: 3, scope: !2093, file: !3, line: 876, type: !47)
!2098 = !DILocalVariable(name: "mask", arg: 4, scope: !2093, file: !3, line: 876, type: !20)
!2099 = !DILocalVariable(name: "slave", scope: !2093, file: !3, line: 877, type: !8)
!2100 = !DILocalVariable(name: "buf", scope: !2093, file: !3, line: 880, type: !257)
!2101 = !DILocalVariable(name: "nwritten", scope: !2093, file: !3, line: 881, type: !383)
!2102 = !DILocalVariable(name: "buflen", scope: !2093, file: !3, line: 881, type: !383)
!2103 = !DILocation(line: 876, column: 35, scope: !2093)
!2104 = !DILocation(line: 876, column: 43, scope: !2093)
!2105 = !DILocation(line: 876, column: 53, scope: !2093)
!2106 = !DILocation(line: 876, column: 67, scope: !2093)
!2107 = !DILocation(line: 877, column: 21, scope: !2093)
!2108 = !DILocation(line: 877, column: 13, scope: !2093)
!2109 = !DILocation(line: 880, column: 5, scope: !2093)
!2110 = !DILocation(line: 880, column: 10, scope: !2093)
!2111 = !DILocation(line: 886, column: 16, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 886, column: 9)
!2113 = !{!480, !483, i64 200}
!2114 = !DILocation(line: 886, column: 9, scope: !2112)
!2115 = !DILocation(line: 886, column: 9, scope: !2093)
!2116 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 887, column: 49, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 886, column: 30)
!2119 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2117)
!2120 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2117)
!2121 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2117)
!2122 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2117)
!2123 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2117)
!2124 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2117)
!2125 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2117)
!2126 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2117)
!2127 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2117)
!2128 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2117)
!2129 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2117)
!2130 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2117)
!2131 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2117)
!2132 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2117)
!2133 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2117)
!2134 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2117)
!2135 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2117)
!2136 = !DILocation(line: 0, scope: !660, inlinedAt: !2117)
!2137 = !DILocation(line: 887, column: 20, scope: !2118)
!2138 = !DILocation(line: 881, column: 13, scope: !2093)
!2139 = !DILocation(line: 888, column: 22, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 888, column: 13)
!2141 = !DILocation(line: 888, column: 13, scope: !2118)
!2142 = !DILocation(line: 890, column: 26, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 888, column: 29)
!2144 = !DILocation(line: 890, column: 17, scope: !2143)
!2145 = !DILocation(line: 889, column: 13, scope: !2143)
!2146 = !DILocation(line: 891, column: 13, scope: !2143)
!2147 = !DILocation(line: 892, column: 13, scope: !2143)
!2148 = !DILocation(line: 894, column: 38, scope: !2118)
!2149 = !{!512, !484, i64 1248}
!2150 = !DILocation(line: 895, column: 25, scope: !2118)
!2151 = !DILocation(line: 895, column: 9, scope: !2118)
!2152 = !DILocation(line: 896, column: 27, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 896, column: 13)
!2154 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 896, column: 13, scope: !2153)
!2156 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2155)
!2157 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2155)
!2158 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2155)
!2159 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2155)
!2160 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2155)
!2161 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2155)
!2162 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2155)
!2163 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2155)
!2164 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2155)
!2165 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2155)
!2166 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2155)
!2167 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2155)
!2168 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2155)
!2169 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2155)
!2170 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2155)
!2171 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2155)
!2172 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2155)
!2173 = !DILocation(line: 0, scope: !660, inlinedAt: !2155)
!2174 = !DILocation(line: 896, column: 41, scope: !2153)
!2175 = !DILocation(line: 896, column: 13, scope: !2118)
!2176 = !DILocation(line: 897, column: 13, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 896, column: 47)
!2178 = !DILocation(line: 898, column: 33, scope: !2177)
!2179 = !DILocation(line: 903, column: 5, scope: !2118)
!2180 = !DILocation(line: 906, column: 18, scope: !2093)
!2181 = !DILocation(line: 906, column: 34, scope: !2093)
!2182 = !{!480, !481, i64 184}
!2183 = !DILocation(line: 906, column: 5, scope: !2093)
!2184 = !DILocation(line: 907, column: 26, scope: !2093)
!2185 = !DILocation(line: 907, column: 14, scope: !2093)
!2186 = !DILocation(line: 881, column: 23, scope: !2093)
!2187 = !DILocation(line: 908, column: 16, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 908, column: 9)
!2189 = !DILocation(line: 908, column: 9, scope: !2093)
!2190 = !DILocation(line: 910, column: 21, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 908, column: 22)
!2192 = !DILocation(line: 910, column: 13, scope: !2191)
!2193 = !DILocation(line: 910, column: 56, scope: !2191)
!2194 = !DILocation(line: 910, column: 47, scope: !2191)
!2195 = !DILocation(line: 909, column: 9, scope: !2191)
!2196 = !DILocation(line: 911, column: 9, scope: !2191)
!2197 = !DILocation(line: 912, column: 9, scope: !2191)
!2198 = !DILocation(line: 914, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 914, column: 9)
!2200 = !DILocation(line: 914, column: 43, scope: !2199)
!2201 = !DILocation(line: 914, column: 9, scope: !2093)
!2202 = !DILocation(line: 915, column: 13, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 915, column: 13)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 914, column: 50)
!2205 = !DILocation(line: 915, column: 19, scope: !2203)
!2206 = !DILocation(line: 915, column: 13, scope: !2204)
!2207 = !DILocation(line: 917, column: 26, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 915, column: 30)
!2209 = !DILocation(line: 917, column: 17, scope: !2208)
!2210 = !DILocation(line: 916, column: 13, scope: !2208)
!2211 = !DILocation(line: 918, column: 13, scope: !2208)
!2212 = !DILocation(line: 919, column: 9, scope: !2208)
!2213 = !DILocation(line: 922, column: 22, scope: !2093)
!2214 = !DILocation(line: 923, column: 34, scope: !2093)
!2215 = !DILocation(line: 924, column: 36, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 924, column: 9)
!2217 = !{!480, !481, i64 192}
!2218 = !DILocation(line: 924, column: 26, scope: !2216)
!2219 = !DILocation(line: 924, column: 9, scope: !2093)
!2220 = !DILocation(line: 925, column: 22, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 924, column: 48)
!2222 = !DILocation(line: 925, column: 9, scope: !2221)
!2223 = !DILocation(line: 926, column: 25, scope: !2221)
!2224 = !DILocation(line: 927, column: 34, scope: !2221)
!2225 = !DILocation(line: 927, column: 44, scope: !2221)
!2226 = !DILocation(line: 927, column: 9, scope: !2221)
!2227 = !DILocation(line: 928, column: 9, scope: !2221)
!2228 = !DILocation(line: 929, column: 5, scope: !2221)
!2229 = !DILocation(line: 930, column: 1, scope: !2093)
!2230 = distinct !DISubprogram(name: "updateSlavesWaitingBgsave", scope: !3, file: !3, line: 946, type: !2231, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !20, !20}
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2242}
!2234 = !DILocalVariable(name: "bgsaveerr", arg: 1, scope: !2230, file: !3, line: 946, type: !20)
!2235 = !DILocalVariable(name: "type", arg: 2, scope: !2230, file: !3, line: 946, type: !20)
!2236 = !DILocalVariable(name: "ln", scope: !2230, file: !3, line: 947, type: !105)
!2237 = !DILocalVariable(name: "startbgsave", scope: !2230, file: !3, line: 948, type: !20)
!2238 = !DILocalVariable(name: "mincapa", scope: !2230, file: !3, line: 949, type: !20)
!2239 = !DILocalVariable(name: "li", scope: !2230, file: !3, line: 950, type: !420)
!2240 = !DILocalVariable(name: "slave", scope: !2241, file: !3, line: 954, type: !8)
!2241 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 953, column: 33)
!2242 = !DILocalVariable(name: "buf", scope: !2243, file: !3, line: 961, type: !2246)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 960, column: 69)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 960, column: 20)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 956, column: 13)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2247, line: 27, size: 704, elements: !2248)
!2247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2248 = !{!2249, !2253, !2256, !2259, !2262, !2265, !2268, !2269, !2270, !2275, !2276, !2277, !2280}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2246, file: !2247, line: 29, baseType: !2250, size: 16)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 177, baseType: !2251)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !145, line: 54, baseType: !2252)
!2252 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2246, file: !2247, line: 30, baseType: !2254, size: 16, offset: 16)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !195, line: 155, baseType: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !145, line: 73, baseType: !282)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2246, file: !2247, line: 31, baseType: !2257, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !195, line: 205, baseType: !2258)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !145, line: 88, baseType: !291)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2246, file: !2247, line: 32, baseType: !2260, size: 16, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !195, line: 210, baseType: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !145, line: 210, baseType: !282)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2246, file: !2247, line: 33, baseType: !2263, size: 16, offset: 80)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 181, baseType: !2264)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !145, line: 58, baseType: !282)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2246, file: !2247, line: 34, baseType: !2266, size: 16, offset: 96)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 185, baseType: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !145, line: 61, baseType: !282)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2246, file: !2247, line: 35, baseType: !2250, size: 16, offset: 112)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2246, file: !2247, line: 36, baseType: !194, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2246, file: !2247, line: 37, baseType: !2271, size: 128, offset: 192)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !185, line: 52, size: 128, elements: !2272)
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2271, file: !185, line: 53, baseType: !184, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2271, file: !185, line: 54, baseType: !79, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2246, file: !2247, line: 38, baseType: !2271, size: 128, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2246, file: !2247, line: 39, baseType: !2271, size: 128, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2246, file: !2247, line: 40, baseType: !2278, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !195, line: 118, baseType: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !145, line: 32, baseType: !79)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2246, file: !2247, line: 41, baseType: !2281, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 113, baseType: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !145, line: 28, baseType: !79)
!2283 = !DILocation(line: 946, column: 36, scope: !2230)
!2284 = !DILocation(line: 946, column: 51, scope: !2230)
!2285 = !DILocation(line: 948, column: 9, scope: !2230)
!2286 = !DILocation(line: 949, column: 9, scope: !2230)
!2287 = !DILocation(line: 950, column: 5, scope: !2230)
!2288 = !DILocation(line: 952, column: 23, scope: !2230)
!2289 = !DILocation(line: 950, column: 14, scope: !2230)
!2290 = !DILocation(line: 952, column: 5, scope: !2230)
!2291 = !DILocation(line: 953, column: 17, scope: !2230)
!2292 = !DILocation(line: 947, column: 15, scope: !2230)
!2293 = !DILocation(line: 953, column: 5, scope: !2230)
!2294 = !DILocation(line: 954, column: 29, scope: !2241)
!2295 = !DILocation(line: 954, column: 25, scope: !2241)
!2296 = !DILocation(line: 954, column: 17, scope: !2241)
!2297 = !DILocation(line: 956, column: 20, scope: !2245)
!2298 = !DILocation(line: 956, column: 13, scope: !2241)
!2299 = !DILocation(line: 0, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 956, column: 64)
!2301 = !DILocation(line: 959, column: 50, scope: !2300)
!2302 = !DILocation(line: 958, column: 23, scope: !2300)
!2303 = !DILocation(line: 961, column: 13, scope: !2243)
!2304 = !DILocation(line: 968, column: 17, scope: !2243)
!2305 = !DILocation(line: 971, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 968, column: 48)
!2307 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 968, column: 17)
!2308 = !DILocation(line: 969, column: 17, scope: !2306)
!2309 = !DILocation(line: 997, column: 34, scope: !2306)
!2310 = !DILocation(line: 998, column: 24, scope: !2306)
!2311 = !DILocation(line: 998, column: 47, scope: !2306)
!2312 = !DILocation(line: 999, column: 47, scope: !2306)
!2313 = !DILocation(line: 999, column: 24, scope: !2306)
!2314 = !DILocation(line: 999, column: 38, scope: !2306)
!2315 = !DILocation(line: 1000, column: 13, scope: !2306)
!2316 = !DILocation(line: 1001, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1000, column: 20)
!2318 = !DILocation(line: 1002, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1001, column: 40)
!2320 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1001, column: 21)
!2321 = !DILocation(line: 1003, column: 21, scope: !2319)
!2322 = !DILocation(line: 1024, column: 9, scope: !2244)
!2323 = !DILocation(line: 1006, column: 52, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1006, column: 21)
!2325 = !DILocation(line: 1006, column: 40, scope: !2324)
!2326 = !DILocation(line: 1006, column: 29, scope: !2324)
!2327 = !DILocation(line: 1006, column: 38, scope: !2324)
!2328 = !DILocation(line: 1006, column: 76, scope: !2324)
!2329 = !DILocation(line: 1006, column: 82, scope: !2324)
!2330 = !DILocation(line: 961, column: 31, scope: !2243)
!2331 = !DILocation(line: 1007, column: 21, scope: !2324)
!2332 = !DILocation(line: 1007, column: 55, scope: !2324)
!2333 = !DILocation(line: 1006, column: 21, scope: !2317)
!2334 = !DILocation(line: 1008, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 1007, column: 62)
!2336 = !DILocation(line: 1009, column: 103, scope: !2335)
!2337 = !DILocation(line: 1009, column: 94, scope: !2335)
!2338 = !DILocation(line: 1009, column: 21, scope: !2335)
!2339 = !DILocation(line: 1012, column: 24, scope: !2317)
!2340 = !DILocation(line: 1012, column: 34, scope: !2317)
!2341 = !DILocation(line: 1013, column: 41, scope: !2317)
!2342 = !{!2343, !481, i64 16}
!2343 = !{!"stat", !668, i64 0, !668, i64 2, !482, i64 4, !668, i64 8, !668, i64 10, !668, i64 12, !668, i64 14, !481, i64 16, !2344, i64 24, !2344, i64 40, !2344, i64 56, !481, i64 72, !481, i64 80}
!2344 = !{!"timespec", !481, i64 0, !481, i64 8}
!2345 = !DILocation(line: 1013, column: 24, scope: !2317)
!2346 = !DILocation(line: 1013, column: 35, scope: !2317)
!2347 = !DILocation(line: 1014, column: 34, scope: !2317)
!2348 = !DILocation(line: 1015, column: 52, scope: !2317)
!2349 = !DILocation(line: 1016, column: 49, scope: !2317)
!2350 = !DILocation(line: 1015, column: 39, scope: !2317)
!2351 = !DILocation(line: 1015, column: 24, scope: !2317)
!2352 = !DILocation(line: 1015, column: 37, scope: !2317)
!2353 = !DILocation(line: 1018, column: 42, scope: !2317)
!2354 = !DILocation(line: 1018, column: 52, scope: !2317)
!2355 = !DILocation(line: 1018, column: 17, scope: !2317)
!2356 = !DILocation(line: 1019, column: 46, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1019, column: 21)
!2358 = !DILocation(line: 1019, column: 57, scope: !2357)
!2359 = !DILocation(line: 1019, column: 21, scope: !2357)
!2360 = !DILocation(line: 1019, column: 98, scope: !2357)
!2361 = !DILocation(line: 1019, column: 21, scope: !2317)
!2362 = !DILocation(line: 1020, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1019, column: 109)
!2364 = !DILocation(line: 0, scope: !2230)
!2365 = !DILocation(line: 1026, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 1026, column: 9)
!2367 = !DILocation(line: 1026, column: 9, scope: !2230)
!2368 = !DILocation(line: 1026, column: 22, scope: !2366)
!2369 = !DILocation(line: 1027, column: 1, scope: !2230)
!2370 = distinct !DISubprogram(name: "shiftReplicationId", scope: !3, file: !3, line: 1052, type: !306, isLocal: false, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2371 = !DILocation(line: 1053, column: 5, scope: !2370)
!2372 = !DILocation(line: 1061, column: 42, scope: !2370)
!2373 = !DILocation(line: 1061, column: 60, scope: !2370)
!2374 = !DILocation(line: 1061, column: 33, scope: !2370)
!2375 = !DILocation(line: 1034, column: 5, scope: !1700, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 1062, column: 5, scope: !2370)
!2377 = !DILocation(line: 1035, column: 39, scope: !1700, inlinedAt: !2376)
!2378 = !DILocation(line: 1063, column: 143, scope: !2370)
!2379 = !DILocation(line: 1063, column: 5, scope: !2370)
!2380 = !DILocation(line: 1064, column: 1, scope: !2370)
!2381 = distinct !DISubprogram(name: "slaveIsInHandshakeState", scope: !3, file: !3, line: 1070, type: !2382, isLocal: false, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!20}
!2384 = !DILocation(line: 1071, column: 19, scope: !2381)
!2385 = !{!512, !482, i64 2500}
!2386 = !DILocation(line: 1071, column: 57, scope: !2381)
!2387 = !DILocation(line: 1071, column: 5, scope: !2381)
!2388 = !DILocation(line: 1085, column: 9, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !305, file: !3, line: 1085, column: 9)
!2390 = !DILocation(line: 1085, column: 23, scope: !2389)
!2391 = !DILocation(line: 1085, column: 20, scope: !2389)
!2392 = !DILocation(line: 1085, column: 9, scope: !305)
!2393 = !DILocation(line: 1086, column: 24, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 1085, column: 37)
!2395 = !DILocation(line: 1086, column: 22, scope: !2394)
!2396 = !DILocation(line: 1087, column: 26, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1087, column: 13)
!2398 = !{!512, !482, i64 2528}
!2399 = !DILocation(line: 1087, column: 13, scope: !2397)
!2400 = !DILocation(line: 1090, column: 5, scope: !2394)
!2401 = !DILocation(line: 1091, column: 1, scope: !305)
!2402 = distinct !DISubprogram(name: "replicationEmptyDbCallback", scope: !3, file: !3, line: 1095, type: !120, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2403)
!2403 = !{!2404}
!2404 = !DILocalVariable(name: "privdata", arg: 1, scope: !2402, file: !3, line: 1095, type: !47)
!2405 = !DILocation(line: 1095, column: 39, scope: !2402)
!2406 = !DILocation(line: 1085, column: 9, scope: !2389, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1097, column: 5, scope: !2402)
!2408 = !DILocation(line: 1085, column: 23, scope: !2389, inlinedAt: !2407)
!2409 = !DILocation(line: 1085, column: 20, scope: !2389, inlinedAt: !2407)
!2410 = !DILocation(line: 1085, column: 9, scope: !305, inlinedAt: !2407)
!2411 = !DILocation(line: 1086, column: 24, scope: !2394, inlinedAt: !2407)
!2412 = !DILocation(line: 1086, column: 22, scope: !2394, inlinedAt: !2407)
!2413 = !DILocation(line: 1087, column: 26, scope: !2397, inlinedAt: !2407)
!2414 = !DILocation(line: 1087, column: 13, scope: !2397, inlinedAt: !2407)
!2415 = !DILocation(line: 1090, column: 5, scope: !2394, inlinedAt: !2407)
!2416 = !DILocation(line: 1098, column: 1, scope: !2402)
!2417 = distinct !DISubprogram(name: "replicationCreateMasterClient", scope: !3, file: !3, line: 1103, type: !2231, isLocal: false, isDefinition: true, scopeLine: 1103, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "fd", arg: 1, scope: !2417, file: !3, line: 1103, type: !20)
!2420 = !DILocalVariable(name: "dbid", arg: 2, scope: !2417, file: !3, line: 1103, type: !20)
!2421 = !DILocation(line: 1103, column: 40, scope: !2417)
!2422 = !DILocation(line: 1103, column: 48, scope: !2417)
!2423 = !DILocation(line: 1104, column: 21, scope: !2417)
!2424 = !DILocation(line: 1104, column: 19, scope: !2417)
!2425 = !DILocation(line: 1105, column: 20, scope: !2417)
!2426 = !DILocation(line: 1105, column: 26, scope: !2417)
!2427 = !DILocation(line: 1106, column: 20, scope: !2417)
!2428 = !DILocation(line: 1106, column: 34, scope: !2417)
!2429 = !{!480, !482, i64 164}
!2430 = !DILocation(line: 1107, column: 37, scope: !2417)
!2431 = !{!512, !484, i64 2648}
!2432 = !DILocation(line: 1107, column: 20, scope: !2417)
!2433 = !DILocation(line: 1107, column: 28, scope: !2417)
!2434 = !DILocation(line: 1108, column: 20, scope: !2417)
!2435 = !DILocation(line: 1108, column: 33, scope: !2417)
!2436 = !{!480, !484, i64 208}
!2437 = !DILocation(line: 1109, column: 12, scope: !2417)
!2438 = !DILocation(line: 1109, column: 5, scope: !2417)
!2439 = !DILocation(line: 1113, column: 16, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1113, column: 9)
!2441 = !DILocation(line: 1113, column: 24, scope: !2440)
!2442 = !DILocation(line: 1113, column: 32, scope: !2440)
!2443 = !DILocation(line: 1113, column: 9, scope: !2417)
!2444 = !DILocation(line: 1114, column: 24, scope: !2440)
!2445 = !DILocation(line: 1114, column: 30, scope: !2440)
!2446 = !DILocation(line: 1114, column: 9, scope: !2440)
!2447 = !DILocation(line: 1115, column: 14, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1115, column: 9)
!2449 = !DILocation(line: 1115, column: 9, scope: !2417)
!2450 = !DILocation(line: 1115, column: 21, scope: !2448)
!2451 = !DILocation(line: 1116, column: 1, scope: !2417)
!2452 = distinct !DISubprogram(name: "restartAOFAfterSYNC", scope: !3, file: !3, line: 1122, type: !306, isLocal: false, isDefinition: true, scopeLine: 1122, isOptimized: true, unit: !260, retainedNodes: !2453)
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "tries", scope: !2452, file: !3, line: 1123, type: !133)
!2455 = !DILocalVariable(name: "max_tries", scope: !2452, file: !3, line: 1123, type: !133)
!2456 = !DILocation(line: 1123, column: 25, scope: !2452)
!2457 = !DILocation(line: 1123, column: 18, scope: !2452)
!2458 = !DILocation(line: 1125, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1125, column: 13)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1124, column: 49)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1124, column: 5)
!2462 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1124, column: 5)
!2463 = !DILocation(line: 1125, column: 31, scope: !2459)
!2464 = !DILocation(line: 1125, column: 13, scope: !2460)
!2465 = !DILocation(line: 1126, column: 9, scope: !2460)
!2466 = !DILocation(line: 1129, column: 9, scope: !2460)
!2467 = !DILocation(line: 1132, column: 9, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1131, column: 29)
!2469 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1131, column: 9)
!2470 = !DILocation(line: 1135, column: 9, scope: !2468)
!2471 = !DILocation(line: 1137, column: 1, scope: !2452)
!2472 = !DILocation(line: 1141, column: 39, scope: !310)
!2473 = !DILocation(line: 1141, column: 47, scope: !310)
!2474 = !DILocation(line: 1141, column: 57, scope: !310)
!2475 = !DILocation(line: 1141, column: 71, scope: !310)
!2476 = !DILocation(line: 1142, column: 5, scope: !310)
!2477 = !DILocation(line: 1142, column: 10, scope: !310)
!2478 = !DILocation(line: 1157, column: 16, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1157, column: 9)
!2480 = !{!512, !481, i64 2504}
!2481 = !DILocation(line: 1157, column: 35, scope: !2479)
!2482 = !DILocation(line: 1157, column: 9, scope: !310)
!2483 = !DILocation(line: 1158, column: 45, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1158, column: 13)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1157, column: 42)
!2486 = !{!512, !482, i64 2496}
!2487 = !DILocation(line: 1158, column: 64, scope: !2484)
!2488 = !DILocation(line: 1158, column: 38, scope: !2484)
!2489 = !DILocation(line: 1158, column: 13, scope: !2484)
!2490 = !DILocation(line: 1158, column: 71, scope: !2484)
!2491 = !DILocation(line: 1158, column: 13, scope: !2485)
!2492 = !DILocation(line: 1161, column: 26, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1158, column: 78)
!2494 = !DILocation(line: 1161, column: 17, scope: !2493)
!2495 = !DILocation(line: 1159, column: 13, scope: !2493)
!2496 = !DILocation(line: 1162, column: 13, scope: !2493)
!2497 = !DILocation(line: 1165, column: 13, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1165, column: 13)
!2499 = !DILocation(line: 1165, column: 13, scope: !2485)
!2500 = !DILocation(line: 1168, column: 20, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1165, column: 28)
!2502 = !DILocation(line: 1166, column: 13, scope: !2501)
!2503 = !DILocation(line: 1169, column: 13, scope: !2501)
!2504 = !DILocation(line: 1174, column: 50, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1170, column: 36)
!2506 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1170, column: 20)
!2507 = !DILocation(line: 1174, column: 41, scope: !2505)
!2508 = !{!512, !481, i64 2544}
!2509 = !DILocation(line: 1175, column: 13, scope: !2505)
!2510 = !DILocation(line: 1177, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1176, column: 35)
!2512 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1176, column: 20)
!2513 = !DILocation(line: 1178, column: 13, scope: !2511)
!2514 = !DILocation(line: 1191, column: 24, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1191, column: 13)
!2516 = !DILocation(line: 1191, column: 13, scope: !2515)
!2517 = !DILocation(line: 1191, column: 37, scope: !2515)
!2518 = !DILocation(line: 1191, column: 42, scope: !2515)
!2519 = !DILocation(line: 1191, column: 55, scope: !2515)
!2520 = !DILocation(line: 1191, column: 45, scope: !2515)
!2521 = !DILocation(line: 1191, column: 59, scope: !2515)
!2522 = !DILocation(line: 1191, column: 13, scope: !2485)
!2523 = !DILocation(line: 1193, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1191, column: 82)
!2525 = !DILocation(line: 1194, column: 13, scope: !2524)
!2526 = !DILocation(line: 1197, column: 39, scope: !2524)
!2527 = !DILocation(line: 1198, column: 13, scope: !2524)
!2528 = !DILocation(line: 1200, column: 9, scope: !2524)
!2529 = !DILocation(line: 1202, column: 41, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1200, column: 16)
!2531 = !DILocation(line: 1202, column: 39, scope: !2530)
!2532 = !DILocation(line: 1203, column: 13, scope: !2530)
!2533 = !DILocation(line: 1211, column: 9, scope: !310)
!2534 = !DILocation(line: 1214, column: 51, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1213, column: 12)
!2536 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1211, column: 9)
!2537 = !{!512, !481, i64 2512}
!2538 = !DILocation(line: 1214, column: 42, scope: !2535)
!2539 = !DILocation(line: 1144, column: 11, scope: !310)
!2540 = !DILocation(line: 1215, column: 25, scope: !2535)
!2541 = !DILocation(line: 1215, column: 19, scope: !2535)
!2542 = !DILocation(line: 1143, column: 20, scope: !310)
!2543 = !DILocation(line: 0, scope: !2535)
!2544 = !DILocation(line: 1218, column: 13, scope: !310)
!2545 = !DILocation(line: 1143, column: 13, scope: !310)
!2546 = !DILocation(line: 1219, column: 15, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1219, column: 9)
!2548 = !DILocation(line: 1219, column: 9, scope: !310)
!2549 = !DILocation(line: 1221, column: 20, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 1219, column: 21)
!2551 = !DILocation(line: 1221, column: 13, scope: !2550)
!2552 = !DILocation(line: 1221, column: 38, scope: !2550)
!2553 = !DILocation(line: 1221, column: 29, scope: !2550)
!2554 = !DILocation(line: 1220, column: 9, scope: !2550)
!2555 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !2558)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1967, column: 9)
!2557 = distinct !DISubprogram(name: "cancelReplicationHandshake", scope: !3, file: !3, line: 1966, type: !2382, isLocal: false, isDefinition: true, scopeLine: 1966, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2558 = distinct !DILocation(line: 1222, column: 9, scope: !2550)
!2559 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !2558)
!2560 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !2558)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1967, column: 51)
!2562 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !2558)
!2563 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !2558)
!2565 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1970, column: 16)
!2566 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !2558)
!2567 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !2571)
!2568 = distinct !DISubprogram(name: "undoConnectWithMaster", scope: !3, file: !3, line: 1939, type: !306, isLocal: false, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2569)
!2569 = !{!2570}
!2570 = !DILocalVariable(name: "fd", scope: !2568, file: !3, line: 1940, type: !20)
!2571 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !2558)
!2572 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1972, column: 5)
!2573 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !2571)
!2574 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !2571)
!2575 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !2571)
!2576 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !2571)
!2577 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !2571)
!2578 = !DILocation(line: 0, scope: !2561, inlinedAt: !2558)
!2579 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !2558)
!2580 = !DILocation(line: 1225, column: 33, scope: !310)
!2581 = !{!512, !484, i64 1240}
!2582 = !DILocation(line: 1229, column: 9, scope: !310)
!2583 = !DILocation(line: 1231, column: 9, scope: !310)
!2584 = !DILocation(line: 1233, column: 19, scope: !391)
!2585 = !DILocation(line: 1233, column: 13, scope: !392)
!2586 = !DILocation(line: 1234, column: 33, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1233, column: 42)
!2588 = !DILocation(line: 1234, column: 39, scope: !2587)
!2589 = !DILocation(line: 1234, column: 13, scope: !2587)
!2590 = !DILocation(line: 1235, column: 9, scope: !2587)
!2591 = !DILocation(line: 1237, column: 40, scope: !390)
!2592 = !DILocation(line: 1237, column: 47, scope: !390)
!2593 = !DILocation(line: 1237, column: 13, scope: !390)
!2594 = !DILocation(line: 1238, column: 29, scope: !390)
!2595 = !DILocation(line: 1238, column: 13, scope: !390)
!2596 = !DILocation(line: 1240, column: 13, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !392, file: !3, line: 1240, column: 13)
!2598 = !DILocation(line: 1240, column: 58, scope: !2597)
!2599 = !DILocation(line: 1240, column: 13, scope: !392)
!2600 = !DILocation(line: 0, scope: !310)
!2601 = !DILocation(line: 1243, column: 42, scope: !310)
!2602 = !DILocation(line: 1243, column: 33, scope: !310)
!2603 = !DILocation(line: 1244, column: 34, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1244, column: 9)
!2605 = !{!512, !482, i64 2532}
!2606 = !DILocation(line: 1244, column: 21, scope: !2604)
!2607 = !DILocation(line: 1143, column: 29, scope: !310)
!2608 = !DILocation(line: 1244, column: 63, scope: !2604)
!2609 = !DILocation(line: 1244, column: 9, scope: !310)
!2610 = !DILocation(line: 1246, column: 23, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1244, column: 73)
!2612 = !DILocation(line: 1246, column: 13, scope: !2611)
!2613 = !DILocation(line: 1246, column: 41, scope: !2611)
!2614 = !DILocation(line: 1246, column: 32, scope: !2611)
!2615 = !DILocation(line: 1245, column: 9, scope: !2611)
!2616 = !DILocation(line: 1247, column: 9, scope: !2611)
!2617 = !DILocation(line: 1249, column: 31, scope: !310)
!2618 = !DILocation(line: 1252, column: 20, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1252, column: 9)
!2620 = !DILocation(line: 1252, column: 17, scope: !2619)
!2621 = !DILocation(line: 1253, column: 30, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1253, column: 13)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 1252, column: 33)
!2624 = !DILocation(line: 1254, column: 39, scope: !2622)
!2625 = !DILocation(line: 1253, column: 13, scope: !2622)
!2626 = !DILocation(line: 1254, column: 61, scope: !2622)
!2627 = !DILocation(line: 1253, column: 13, scope: !2623)
!2628 = !DILocation(line: 1264, column: 16, scope: !396)
!2629 = !DILocation(line: 1256, column: 114, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1255, column: 9)
!2631 = !DILocation(line: 1256, column: 105, scope: !2630)
!2632 = !DILocation(line: 1256, column: 13, scope: !2630)
!2633 = !DILocation(line: 1257, column: 13, scope: !2630)
!2634 = !DILocation(line: 1265, column: 16, scope: !396)
!2635 = !{!512, !481, i64 2520}
!2636 = !DILocation(line: 1265, column: 45, scope: !396)
!2637 = !DILocation(line: 1264, column: 35, scope: !396)
!2638 = !DILocation(line: 1264, column: 9, scope: !310)
!2639 = !DILocation(line: 1267, column: 53, scope: !395)
!2640 = !DILocation(line: 1267, column: 15, scope: !395)
!2641 = !DILocation(line: 1269, column: 9, scope: !395)
!2642 = !DILocation(line: 1271, column: 45, scope: !395)
!2643 = !DILocation(line: 1272, column: 5, scope: !395)
!2644 = !DILocation(line: 1275, column: 9, scope: !310)
!2645 = !DILocation(line: 1276, column: 20, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1276, column: 13)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1275, column: 19)
!2648 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1275, column: 9)
!2649 = !DILocation(line: 1276, column: 49, scope: !2646)
!2650 = !DILocation(line: 1276, column: 39, scope: !2646)
!2651 = !DILocation(line: 1280, column: 9, scope: !399)
!2652 = !DILocation(line: 1280, column: 9, scope: !310)
!2653 = !DILocation(line: 1281, column: 37, scope: !398)
!2654 = !{!512, !482, i64 1880}
!2655 = !DILocation(line: 1281, column: 47, scope: !398)
!2656 = !DILocation(line: 1284, column: 20, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1284, column: 13)
!2658 = !DILocation(line: 1284, column: 34, scope: !2657)
!2659 = !DILocation(line: 1284, column: 13, scope: !398)
!2660 = !DILocation(line: 1290, column: 21, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 1284, column: 41)
!2662 = !DILocation(line: 1285, column: 13, scope: !2661)
!2663 = !DILocation(line: 1291, column: 25, scope: !2661)
!2664 = !DILocation(line: 1291, column: 13, scope: !2661)
!2665 = !DILocation(line: 1292, column: 38, scope: !2661)
!2666 = !DILocation(line: 1292, column: 13, scope: !2661)
!2667 = !DILocation(line: 1293, column: 9, scope: !2661)
!2668 = !DILocation(line: 1295, column: 27, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1295, column: 13)
!2670 = !{!512, !483, i64 2536}
!2671 = !DILocation(line: 1295, column: 56, scope: !2669)
!2672 = !DILocation(line: 1295, column: 13, scope: !2669)
!2673 = !DILocation(line: 1295, column: 70, scope: !2669)
!2674 = !DILocation(line: 1295, column: 13, scope: !398)
!2675 = !DILocation(line: 1296, column: 138, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1295, column: 77)
!2677 = !DILocation(line: 1296, column: 129, scope: !2676)
!2678 = !DILocation(line: 1296, column: 13, scope: !2676)
!2679 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1297, column: 13, scope: !2676)
!2681 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !2680)
!2682 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !2680)
!2683 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !2680)
!2684 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !2680)
!2686 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !2680)
!2687 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !2680)
!2689 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !2688)
!2690 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !2688)
!2691 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !2688)
!2692 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !2688)
!2693 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !2688)
!2694 = !DILocation(line: 0, scope: !2561, inlinedAt: !2680)
!2695 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !2680)
!2696 = !DILocation(line: 1300, column: 9, scope: !398)
!2697 = !DILocation(line: 1303, column: 12, scope: !398)
!2698 = !DILocation(line: 1303, column: 28, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1303, column: 12)
!2700 = !DILocation(line: 1304, column: 9, scope: !398)
!2701 = !DILocation(line: 1307, column: 20, scope: !398)
!2702 = !{!512, !482, i64 2656}
!2703 = !DILocation(line: 1307, column: 13, scope: !398)
!2704 = !DILocation(line: 1305, column: 9, scope: !398)
!2705 = !DILocation(line: 1313, column: 34, scope: !398)
!2706 = !DILocation(line: 1313, column: 44, scope: !398)
!2707 = !DILocation(line: 1313, column: 9, scope: !398)
!2708 = !DILocation(line: 1314, column: 9, scope: !398)
!2709 = !DILocation(line: 1315, column: 9, scope: !398)
!2710 = !DILocation(line: 1315, column: 21, scope: !398)
!2711 = !DILocation(line: 1316, column: 28, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1316, column: 13)
!2713 = !DILocation(line: 1316, column: 13, scope: !2712)
!2714 = !DILocation(line: 1316, column: 47, scope: !2712)
!2715 = !DILocation(line: 1316, column: 13, scope: !398)
!2716 = !DILocation(line: 1317, column: 13, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1316, column: 56)
!2718 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1318, column: 13, scope: !2717)
!2720 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !2719)
!2721 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !2719)
!2722 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !2719)
!2723 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !2719)
!2725 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !2719)
!2726 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !2719)
!2728 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !2727)
!2729 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !2727)
!2730 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !2727)
!2731 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !2727)
!2732 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !2727)
!2733 = !DILocation(line: 0, scope: !2561, inlinedAt: !2719)
!2734 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !2719)
!2735 = !DILocation(line: 1321, column: 17, scope: !2717)
!2736 = !DILocation(line: 1321, column: 33, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1321, column: 17)
!2738 = !DILocation(line: 1325, column: 22, scope: !398)
!2739 = !DILocation(line: 1325, column: 9, scope: !398)
!2740 = !DILocation(line: 1326, column: 22, scope: !398)
!2741 = !DILocation(line: 1326, column: 9, scope: !398)
!2742 = !DILocation(line: 1327, column: 46, scope: !398)
!2743 = !DILocation(line: 1327, column: 66, scope: !398)
!2744 = !{!2745, !482, i64 0}
!2745 = !{!"rdbSaveInfo", !482, i64 0, !482, i64 4, !471, i64 8, !484, i64 56}
!2746 = !DILocation(line: 1103, column: 40, scope: !2417, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1327, column: 9, scope: !398)
!2748 = !DILocation(line: 1103, column: 48, scope: !2417, inlinedAt: !2747)
!2749 = !DILocation(line: 1104, column: 21, scope: !2417, inlinedAt: !2747)
!2750 = !DILocation(line: 1104, column: 19, scope: !2417, inlinedAt: !2747)
!2751 = !DILocation(line: 1105, column: 20, scope: !2417, inlinedAt: !2747)
!2752 = !DILocation(line: 1105, column: 26, scope: !2417, inlinedAt: !2747)
!2753 = !DILocation(line: 1106, column: 20, scope: !2417, inlinedAt: !2747)
!2754 = !DILocation(line: 1106, column: 34, scope: !2417, inlinedAt: !2747)
!2755 = !DILocation(line: 1107, column: 37, scope: !2417, inlinedAt: !2747)
!2756 = !DILocation(line: 1107, column: 20, scope: !2417, inlinedAt: !2747)
!2757 = !DILocation(line: 1107, column: 28, scope: !2417, inlinedAt: !2747)
!2758 = !DILocation(line: 1108, column: 20, scope: !2417, inlinedAt: !2747)
!2759 = !DILocation(line: 1108, column: 33, scope: !2417, inlinedAt: !2747)
!2760 = !DILocation(line: 1109, column: 12, scope: !2417, inlinedAt: !2747)
!2761 = !DILocation(line: 1109, column: 5, scope: !2417, inlinedAt: !2747)
!2762 = !DILocation(line: 1113, column: 16, scope: !2440, inlinedAt: !2747)
!2763 = !DILocation(line: 1113, column: 24, scope: !2440, inlinedAt: !2747)
!2764 = !DILocation(line: 1113, column: 32, scope: !2440, inlinedAt: !2747)
!2765 = !DILocation(line: 1113, column: 9, scope: !2417, inlinedAt: !2747)
!2766 = !DILocation(line: 1114, column: 24, scope: !2440, inlinedAt: !2747)
!2767 = !DILocation(line: 1114, column: 30, scope: !2440, inlinedAt: !2747)
!2768 = !DILocation(line: 1114, column: 9, scope: !2440, inlinedAt: !2747)
!2769 = !DILocation(line: 1115, column: 14, scope: !2448, inlinedAt: !2747)
!2770 = !DILocation(line: 1115, column: 9, scope: !2417, inlinedAt: !2747)
!2771 = !DILocation(line: 1115, column: 21, scope: !2448, inlinedAt: !2747)
!2772 = !DILocation(line: 1333, column: 37, scope: !398)
!2773 = !DILocation(line: 1328, column: 27, scope: !398)
!2774 = !DILocation(line: 1329, column: 32, scope: !398)
!2775 = !{!512, !481, i64 2568}
!2776 = !DILocation(line: 1333, column: 30, scope: !398)
!2777 = !DILocation(line: 1333, column: 9, scope: !398)
!2778 = !DILocation(line: 1334, column: 44, scope: !398)
!2779 = !DILocation(line: 1334, column: 52, scope: !398)
!2780 = !DILocation(line: 1334, column: 35, scope: !398)
!2781 = !DILocation(line: 1042, column: 5, scope: !1705, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1335, column: 9, scope: !398)
!2783 = !DILocation(line: 1043, column: 40, scope: !1705, inlinedAt: !2782)
!2784 = !DILocation(line: 1044, column: 33, scope: !1705, inlinedAt: !2782)
!2785 = !DILocation(line: 1340, column: 20, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1340, column: 13)
!2787 = !DILocation(line: 1340, column: 33, scope: !2786)
!2788 = !DILocation(line: 1340, column: 13, scope: !398)
!2789 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1340, column: 42, scope: !2786)
!2791 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !2790)
!2792 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !2790)
!2793 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !2790)
!2794 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !2790)
!2795 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !2790)
!2796 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !2790)
!2797 = !DILocation(line: 1340, column: 42, scope: !2786)
!2798 = !DILocation(line: 1342, column: 9, scope: !398)
!2799 = !DILocation(line: 1346, column: 13, scope: !398)
!2800 = !DILocation(line: 1346, column: 29, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1346, column: 13)
!2802 = !DILocation(line: 1347, column: 5, scope: !399)
!2803 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1351, column: 5, scope: !310)
!2805 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !2804)
!2806 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !2804)
!2807 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !2804)
!2808 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !2804)
!2810 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !2804)
!2811 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !2804)
!2813 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !2812)
!2814 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !2812)
!2815 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !2812)
!2816 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !2812)
!2817 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !2812)
!2818 = !DILocation(line: 0, scope: !2561, inlinedAt: !2804)
!2819 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !2804)
!2820 = !DILocation(line: 1353, column: 1, scope: !310)
!2821 = !DILocation(line: 1967, column: 16, scope: !2556)
!2822 = !DILocation(line: 1967, column: 9, scope: !2557)
!2823 = !DILocation(line: 1968, column: 9, scope: !2561)
!2824 = !DILocation(line: 1970, column: 5, scope: !2561)
!2825 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1971, column: 16, scope: !2565)
!2827 = !DILocation(line: 1970, column: 16, scope: !2556)
!2828 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 1973, column: 9, scope: !2572)
!2830 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !2829)
!2831 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !2829)
!2832 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !2829)
!2833 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !2829)
!2834 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !2829)
!2835 = !DILocation(line: 0, scope: !2561)
!2836 = !DILocation(line: 1978, column: 5, scope: !2557)
!2837 = !DILocation(line: 0, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1975, column: 12)
!2839 = !DILocation(line: 1979, column: 1, scope: !2557)
!2840 = distinct !DISubprogram(name: "sendSynchronousCommand", scope: !3, file: !3, line: 1364, type: !2841, isLocal: false, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!6, !20, !20, null}
!2843 = !{!2844, !2845, !2846, !2849, !2862, !2863, !2864, !2865}
!2844 = !DILocalVariable(name: "flags", arg: 1, scope: !2840, file: !3, line: 1364, type: !20)
!2845 = !DILocalVariable(name: "fd", arg: 2, scope: !2840, file: !3, line: 1364, type: !20)
!2846 = !DILocalVariable(name: "arg", scope: !2847, file: !3, line: 1370, type: !6)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1369, column: 33)
!2848 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1369, column: 9)
!2849 = !DILocalVariable(name: "ap", scope: !2847, file: !3, line: 1371, type: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2851, line: 46, baseType: !2852)
!2851 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2853, line: 51, baseType: !2854)
!2853 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 1371, baseType: !2855)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2856, size: 192, elements: !428)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 1371, size: 192, elements: !2857)
!2857 = !{!2858, !2859, !2860, !2861}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2856, file: !3, line: 1371, baseType: !133, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2856, file: !3, line: 1371, baseType: !133, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2856, file: !3, line: 1371, baseType: !47, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2856, file: !3, line: 1371, baseType: !47, size: 64, offset: 128)
!2862 = !DILocalVariable(name: "cmd", scope: !2847, file: !3, line: 1372, type: !139)
!2863 = !DILocalVariable(name: "cmdargs", scope: !2847, file: !3, line: 1373, type: !139)
!2864 = !DILocalVariable(name: "argslen", scope: !2847, file: !3, line: 1374, type: !142)
!2865 = !DILocalVariable(name: "buf", scope: !2866, file: !3, line: 1404, type: !2868)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1403, column: 32)
!2867 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1403, column: 9)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !2869)
!2869 = !{!2870}
!2870 = !DISubrange(count: 256)
!2871 = !DILocation(line: 1364, column: 34, scope: !2840)
!2872 = !DILocation(line: 1364, column: 45, scope: !2840)
!2873 = !DILocation(line: 1369, column: 15, scope: !2848)
!2874 = !DILocation(line: 1369, column: 9, scope: !2840)
!2875 = !DILocation(line: 1371, column: 9, scope: !2847)
!2876 = !DILocation(line: 1371, column: 17, scope: !2847)
!2877 = !DILocation(line: 1372, column: 19, scope: !2847)
!2878 = !DILocation(line: 1372, column: 13, scope: !2847)
!2879 = !DILocation(line: 1373, column: 23, scope: !2847)
!2880 = !DILocation(line: 1373, column: 13, scope: !2847)
!2881 = !DILocation(line: 1374, column: 16, scope: !2847)
!2882 = !DILocation(line: 1375, column: 9, scope: !2847)
!2883 = !DILocation(line: 1377, column: 9, scope: !2847)
!2884 = !DILocation(line: 0, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1377, column: 18)
!2886 = !DILocation(line: 1378, column: 19, scope: !2885)
!2887 = !DILocation(line: 1370, column: 15, scope: !2847)
!2888 = !DILocation(line: 1379, column: 21, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1379, column: 17)
!2890 = !DILocation(line: 1379, column: 17, scope: !2885)
!2891 = !DILocation(line: 1381, column: 61, scope: !2885)
!2892 = !DILocation(line: 1381, column: 23, scope: !2885)
!2893 = !DILocation(line: 1382, column: 20, scope: !2885)
!2894 = distinct !{!2894, !2883, !2895}
!2895 = !DILocation(line: 1383, column: 9, scope: !2847)
!2896 = !DILocation(line: 1385, column: 9, scope: !2847)
!2897 = !DILocation(line: 1387, column: 15, scope: !2847)
!2898 = !DILocation(line: 1388, column: 15, scope: !2847)
!2899 = !DILocation(line: 1389, column: 9, scope: !2847)
!2900 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 1392, column: 30, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1392, column: 13)
!2903 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2901)
!2904 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2901)
!2905 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2901)
!2906 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2901)
!2907 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2901)
!2908 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2901)
!2909 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2901)
!2910 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2901)
!2911 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2901)
!2912 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2901)
!2913 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2901)
!2914 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2901)
!2915 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2901)
!2916 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2901)
!2917 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2901)
!2918 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2901)
!2919 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2901)
!2920 = !DILocation(line: 0, scope: !660, inlinedAt: !2901)
!2921 = !DILocation(line: 1392, column: 49, scope: !2902)
!2922 = !DILocation(line: 1392, column: 68, scope: !2902)
!2923 = !DILocation(line: 1392, column: 42, scope: !2902)
!2924 = !DILocation(line: 1392, column: 13, scope: !2902)
!2925 = !DILocation(line: 1393, column: 13, scope: !2902)
!2926 = !DILocation(line: 0, scope: !2847)
!2927 = !DILocation(line: 1392, column: 13, scope: !2847)
!2928 = !DILocation(line: 1400, column: 5, scope: !2848)
!2929 = !DILocation(line: 1396, column: 33, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1394, column: 9)
!2931 = !DILocation(line: 1397, column: 30, scope: !2930)
!2932 = !DILocation(line: 1397, column: 21, scope: !2930)
!2933 = !DILocation(line: 1396, column: 20, scope: !2930)
!2934 = !DILocation(line: 1403, column: 15, scope: !2867)
!2935 = !DILocation(line: 1403, column: 9, scope: !2840)
!2936 = !DILocation(line: 1404, column: 9, scope: !2866)
!2937 = !DILocation(line: 1404, column: 14, scope: !2866)
!2938 = !DILocation(line: 1406, column: 52, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1406, column: 13)
!2940 = !DILocation(line: 1406, column: 71, scope: !2939)
!2941 = !DILocation(line: 1406, column: 45, scope: !2939)
!2942 = !DILocation(line: 1406, column: 13, scope: !2939)
!2943 = !DILocation(line: 1407, column: 13, scope: !2939)
!2944 = !DILocation(line: 1406, column: 13, scope: !2866)
!2945 = !DILocation(line: 1409, column: 33, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1408, column: 9)
!2947 = !DILocation(line: 1410, column: 30, scope: !2946)
!2948 = !DILocation(line: 1410, column: 21, scope: !2946)
!2949 = !DILocation(line: 1409, column: 20, scope: !2946)
!2950 = !DILocation(line: 1409, column: 13, scope: !2946)
!2951 = !DILocation(line: 1412, column: 46, scope: !2866)
!2952 = !DILocation(line: 1412, column: 37, scope: !2866)
!2953 = !DILocation(line: 1413, column: 16, scope: !2866)
!2954 = !DILocation(line: 1413, column: 9, scope: !2866)
!2955 = !DILocation(line: 0, scope: !2866)
!2956 = !DILocation(line: 1414, column: 5, scope: !2867)
!2957 = !DILocation(line: 0, scope: !2930)
!2958 = !DILocation(line: 1416, column: 1, scope: !2840)
!2959 = distinct !DISubprogram(name: "slaveTryPartialResynchronization", scope: !3, file: !3, line: 1472, type: !2960, isLocal: false, isDefinition: true, scopeLine: 1472, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!20, !20, !20}
!2962 = !{!2963, !2964, !2965, !2966, !2970, !2971, !2974, !2975, !2978, !2979}
!2963 = !DILocalVariable(name: "fd", arg: 1, scope: !2959, file: !3, line: 1472, type: !20)
!2964 = !DILocalVariable(name: "read_reply", arg: 2, scope: !2959, file: !3, line: 1472, type: !20)
!2965 = !DILocalVariable(name: "psync_replid", scope: !2959, file: !3, line: 1473, type: !6)
!2966 = !DILocalVariable(name: "psync_offset", scope: !2959, file: !3, line: 1474, type: !2967)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !2968)
!2968 = !{!2969}
!2969 = !DISubrange(count: 32)
!2970 = !DILocalVariable(name: "reply", scope: !2959, file: !3, line: 1475, type: !139)
!2971 = !DILocalVariable(name: "replid", scope: !2972, file: !3, line: 1519, type: !6)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 1518, column: 43)
!2973 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1518, column: 9)
!2974 = !DILocalVariable(name: "offset", scope: !2972, file: !3, line: 1519, type: !6)
!2975 = !DILocalVariable(name: "start", scope: !2976, file: !3, line: 1561, type: !6)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1551, column: 40)
!2977 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1551, column: 9)
!2978 = !DILocalVariable(name: "end", scope: !2976, file: !3, line: 1562, type: !6)
!2979 = !DILocalVariable(name: "new", scope: !2980, file: !3, line: 1565, type: !206)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1564, column: 46)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1564, column: 13)
!2982 = !DILocation(line: 1472, column: 42, scope: !2959)
!2983 = !DILocation(line: 1472, column: 50, scope: !2959)
!2984 = !DILocation(line: 1474, column: 5, scope: !2959)
!2985 = !DILocation(line: 1474, column: 10, scope: !2959)
!2986 = !DILocation(line: 1478, column: 10, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1478, column: 9)
!2988 = !DILocation(line: 1478, column: 9, scope: !2959)
!2989 = !DILocation(line: 1484, column: 38, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1478, column: 22)
!2991 = !DILocation(line: 1486, column: 20, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1486, column: 13)
!2993 = !{!512, !483, i64 2488}
!2994 = !DILocation(line: 1486, column: 13, scope: !2992)
!2995 = !DILocation(line: 1486, column: 13, scope: !2990)
!2996 = !DILocation(line: 1487, column: 28, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 1486, column: 35)
!2998 = !DILocation(line: 1473, column: 11, scope: !2959)
!2999 = !DILocation(line: 1488, column: 86, scope: !2997)
!3000 = !DILocation(line: 1488, column: 93, scope: !2997)
!3001 = !DILocation(line: 1488, column: 13, scope: !2997)
!3002 = !DILocation(line: 1489, column: 13, scope: !2997)
!3003 = !DILocation(line: 1490, column: 9, scope: !2997)
!3004 = !DILocation(line: 1491, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 1490, column: 16)
!3006 = !DILocation(line: 1493, column: 13, scope: !3005)
!3007 = !DILocation(line: 0, scope: !3005)
!3008 = !DILocation(line: 1497, column: 17, scope: !2990)
!3009 = !DILocation(line: 1475, column: 9, scope: !2959)
!3010 = !DILocation(line: 1498, column: 19, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1498, column: 13)
!3012 = !DILocation(line: 1498, column: 13, scope: !2990)
!3013 = !DILocation(line: 1499, column: 13, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 1498, column: 28)
!3015 = !DILocation(line: 1500, column: 13, scope: !3014)
!3016 = !DILocation(line: 1501, column: 38, scope: !3014)
!3017 = !DILocation(line: 1501, column: 13, scope: !3014)
!3018 = !DILocation(line: 1502, column: 13, scope: !3014)
!3019 = !DILocation(line: 1508, column: 13, scope: !2959)
!3020 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1509, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1509, column: 9)
!3023 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !3021)
!3024 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !3021)
!3025 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !3021)
!3026 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !3021)
!3027 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !3021)
!3028 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !3021)
!3029 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !3021)
!3030 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !3021)
!3031 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !3021)
!3032 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !3021)
!3033 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !3021)
!3034 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !3021)
!3035 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !3021)
!3036 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !3021)
!3037 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !3021)
!3038 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !3021)
!3039 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !3021)
!3040 = !DILocation(line: 0, scope: !660, inlinedAt: !3021)
!3041 = !DILocation(line: 1509, column: 23, scope: !3022)
!3042 = !DILocation(line: 1509, column: 9, scope: !2959)
!3043 = !DILocation(line: 1512, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1509, column: 29)
!3045 = !DILocation(line: 1513, column: 9, scope: !3044)
!3046 = !DILocation(line: 1516, column: 30, scope: !2959)
!3047 = !DILocation(line: 1516, column: 5, scope: !2959)
!3048 = !DILocation(line: 1518, column: 10, scope: !2973)
!3049 = !DILocation(line: 1518, column: 9, scope: !2959)
!3050 = !DILocation(line: 1519, column: 15, scope: !2972)
!3051 = !DILocation(line: 1519, column: 31, scope: !2972)
!3052 = !DILocation(line: 1523, column: 18, scope: !2972)
!3053 = !DILocation(line: 1524, column: 13, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1524, column: 13)
!3055 = !DILocation(line: 1524, column: 13, scope: !2972)
!3056 = !DILocation(line: 1525, column: 19, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1524, column: 21)
!3058 = !DILocation(line: 1526, column: 22, scope: !3057)
!3059 = !DILocation(line: 1527, column: 17, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 1527, column: 17)
!3061 = !DILocation(line: 1527, column: 31, scope: !3060)
!3062 = !DILocation(line: 1527, column: 17, scope: !3057)
!3063 = !DILocation(line: 1529, column: 21, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1529, column: 13)
!3065 = !DILocation(line: 1529, column: 42, scope: !3064)
!3066 = !DILocation(line: 1529, column: 49, scope: !3064)
!3067 = !DILocation(line: 1529, column: 53, scope: !3064)
!3068 = !DILocation(line: 1529, column: 13, scope: !2972)
!3069 = !DILocation(line: 1530, column: 13, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1529, column: 76)
!3071 = !DILocation(line: 1536, column: 13, scope: !3070)
!3072 = !DILocation(line: 1537, column: 9, scope: !3070)
!3073 = !DILocation(line: 1538, column: 13, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1537, column: 16)
!3075 = !DILocation(line: 1539, column: 54, scope: !3074)
!3076 = !DILocation(line: 1540, column: 44, scope: !3074)
!3077 = !DILocation(line: 1540, column: 42, scope: !3074)
!3078 = !DILocation(line: 1541, column: 13, scope: !3074)
!3079 = !DILocation(line: 2256, column: 16, scope: !3080, inlinedAt: !3082)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 2256, column: 9)
!3081 = distinct !DISubprogram(name: "replicationDiscardCachedMaster", scope: !3, file: !3, line: 2255, type: !306, isLocal: false, isDefinition: true, scopeLine: 2255, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3082 = distinct !DILocation(line: 1546, column: 9, scope: !2972)
!3083 = !DILocation(line: 2256, column: 30, scope: !3080, inlinedAt: !3082)
!3084 = !DILocation(line: 2256, column: 9, scope: !3081, inlinedAt: !3082)
!3085 = !DILocation(line: 2258, column: 5, scope: !3081, inlinedAt: !3082)
!3086 = !DILocation(line: 2259, column: 12, scope: !3081, inlinedAt: !3082)
!3087 = !DILocation(line: 2259, column: 27, scope: !3081, inlinedAt: !3082)
!3088 = !DILocation(line: 2259, column: 33, scope: !3081, inlinedAt: !3082)
!3089 = !DILocation(line: 2260, column: 5, scope: !3081, inlinedAt: !3082)
!3090 = !DILocation(line: 2261, column: 26, scope: !3081, inlinedAt: !3082)
!3091 = !DILocation(line: 2262, column: 1, scope: !3081, inlinedAt: !3082)
!3092 = !DILocation(line: 1547, column: 9, scope: !2972)
!3093 = !DILocation(line: 1551, column: 10, scope: !2977)
!3094 = !DILocation(line: 1551, column: 9, scope: !2959)
!3095 = !DILocation(line: 1553, column: 9, scope: !2976)
!3096 = !DILocation(line: 1561, column: 28, scope: !2976)
!3097 = !DILocation(line: 1561, column: 15, scope: !2976)
!3098 = !DILocation(line: 1562, column: 26, scope: !2976)
!3099 = !DILocation(line: 1562, column: 15, scope: !2976)
!3100 = !DILocation(line: 1563, column: 9, scope: !2976)
!3101 = !DILocation(line: 0, scope: !2976)
!3102 = !DILocation(line: 1563, column: 15, scope: !2976)
!3103 = !DILocation(line: 1563, column: 30, scope: !2976)
!3104 = !DILocation(line: 1563, column: 70, scope: !2976)
!3105 = distinct !{!3105, !3100, !3104}
!3106 = !DILocation(line: 1564, column: 16, scope: !2981)
!3107 = !DILocation(line: 1564, column: 23, scope: !2981)
!3108 = !DILocation(line: 1564, column: 13, scope: !2976)
!3109 = !DILocation(line: 1565, column: 13, scope: !2980)
!3110 = !DILocation(line: 1565, column: 18, scope: !2980)
!3111 = !DILocation(line: 1566, column: 13, scope: !2980)
!3112 = !DILocation(line: 1567, column: 13, scope: !2980)
!3113 = !DILocation(line: 1567, column: 37, scope: !2980)
!3114 = !DILocation(line: 1569, column: 35, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1569, column: 17)
!3116 = !DILocation(line: 1569, column: 28, scope: !3115)
!3117 = !DILocation(line: 1569, column: 17, scope: !3115)
!3118 = !DILocation(line: 1569, column: 17, scope: !2980)
!3119 = !DILocation(line: 1571, column: 17, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1569, column: 59)
!3121 = !DILocation(line: 1574, column: 46, scope: !3120)
!3122 = !DILocation(line: 1574, column: 39, scope: !3120)
!3123 = !DILocation(line: 1574, column: 17, scope: !3120)
!3124 = !DILocation(line: 1576, column: 54, scope: !3120)
!3125 = !DILocation(line: 1576, column: 72, scope: !3120)
!3126 = !DILocation(line: 1576, column: 45, scope: !3120)
!3127 = !DILocation(line: 1580, column: 17, scope: !3120)
!3128 = !DILocation(line: 1581, column: 31, scope: !3120)
!3129 = !DILocation(line: 1581, column: 24, scope: !3120)
!3130 = !DILocation(line: 1581, column: 17, scope: !3120)
!3131 = !DILocation(line: 1584, column: 17, scope: !3120)
!3132 = !DILocation(line: 1585, column: 13, scope: !3120)
!3133 = !DILocation(line: 1586, column: 9, scope: !2981)
!3134 = !DILocation(line: 1586, column: 9, scope: !2980)
!3135 = !DILocation(line: 1589, column: 9, scope: !2976)
!3136 = !DILocation(line: 1590, column: 9, scope: !2976)
!3137 = !DILocation(line: 1595, column: 20, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1595, column: 13)
!3139 = !DILocation(line: 1595, column: 33, scope: !3138)
!3140 = !DILocation(line: 1595, column: 13, scope: !2976)
!3141 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 1595, column: 42, scope: !3138)
!3143 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !3142)
!3144 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !3142)
!3145 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !3142)
!3146 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !3142)
!3147 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !3142)
!3148 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !3142)
!3149 = !DILocation(line: 1595, column: 42, scope: !3138)
!3150 = !DILocation(line: 1606, column: 10, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1606, column: 9)
!3152 = !DILocation(line: 1606, column: 44, scope: !3151)
!3153 = !DILocation(line: 1607, column: 10, scope: !3151)
!3154 = !DILocation(line: 1606, column: 9, scope: !2959)
!3155 = !DILocation(line: 1609, column: 9, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1608, column: 5)
!3157 = !DILocation(line: 1612, column: 9, scope: !3156)
!3158 = !DILocation(line: 1613, column: 9, scope: !3156)
!3159 = !DILocation(line: 1616, column: 9, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1616, column: 9)
!3161 = !DILocation(line: 1616, column: 9, scope: !2959)
!3162 = !DILocation(line: 1618, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1616, column: 34)
!3164 = !DILocation(line: 1620, column: 5, scope: !3163)
!3165 = !DILocation(line: 1621, column: 9, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1620, column: 12)
!3167 = !DILocation(line: 1625, column: 5, scope: !2959)
!3168 = !DILocation(line: 2256, column: 16, scope: !3080, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 1626, column: 5, scope: !2959)
!3170 = !DILocation(line: 2256, column: 30, scope: !3080, inlinedAt: !3169)
!3171 = !DILocation(line: 2256, column: 9, scope: !3081, inlinedAt: !3169)
!3172 = !DILocation(line: 2258, column: 5, scope: !3081, inlinedAt: !3169)
!3173 = !DILocation(line: 2259, column: 12, scope: !3081, inlinedAt: !3169)
!3174 = !DILocation(line: 2259, column: 27, scope: !3081, inlinedAt: !3169)
!3175 = !DILocation(line: 2259, column: 33, scope: !3081, inlinedAt: !3169)
!3176 = !DILocation(line: 2260, column: 5, scope: !3081, inlinedAt: !3169)
!3177 = !DILocation(line: 2261, column: 26, scope: !3081, inlinedAt: !3169)
!3178 = !DILocation(line: 2262, column: 1, scope: !3081, inlinedAt: !3169)
!3179 = !DILocation(line: 0, scope: !2990)
!3180 = !DILocation(line: 1628, column: 1, scope: !2959)
!3181 = !DILocation(line: 2256, column: 16, scope: !3080)
!3182 = !DILocation(line: 2256, column: 30, scope: !3080)
!3183 = !DILocation(line: 2256, column: 9, scope: !3081)
!3184 = !DILocation(line: 2258, column: 5, scope: !3081)
!3185 = !DILocation(line: 2259, column: 12, scope: !3081)
!3186 = !DILocation(line: 2259, column: 27, scope: !3081)
!3187 = !DILocation(line: 2259, column: 33, scope: !3081)
!3188 = !DILocation(line: 2260, column: 5, scope: !3081)
!3189 = !DILocation(line: 2261, column: 26, scope: !3081)
!3190 = !DILocation(line: 2262, column: 1, scope: !3081)
!3191 = distinct !DISubprogram(name: "replicationResurrectCachedMaster", scope: !3, file: !3, line: 2270, type: !3192, isLocal: false, isDefinition: true, scopeLine: 2270, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !20}
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "newfd", arg: 1, scope: !3191, file: !3, line: 2270, type: !20)
!3196 = !DILocation(line: 2270, column: 43, scope: !3191)
!3197 = !DILocation(line: 2271, column: 28, scope: !3191)
!3198 = !DILocation(line: 2271, column: 19, scope: !3191)
!3199 = !DILocation(line: 2272, column: 26, scope: !3191)
!3200 = !DILocation(line: 2273, column: 12, scope: !3191)
!3201 = !DILocation(line: 2273, column: 20, scope: !3191)
!3202 = !DILocation(line: 2273, column: 23, scope: !3191)
!3203 = !DILocation(line: 2274, column: 20, scope: !3191)
!3204 = !DILocation(line: 2274, column: 26, scope: !3191)
!3205 = !DILocation(line: 2275, column: 20, scope: !3191)
!3206 = !DILocation(line: 2275, column: 34, scope: !3191)
!3207 = !DILocation(line: 2276, column: 45, scope: !3191)
!3208 = !DILocation(line: 2276, column: 20, scope: !3191)
!3209 = !DILocation(line: 2276, column: 36, scope: !3191)
!3210 = !{!480, !481, i64 144}
!3211 = !DILocation(line: 2277, column: 23, scope: !3191)
!3212 = !DILocation(line: 2278, column: 28, scope: !3191)
!3213 = !DILocation(line: 2281, column: 5, scope: !3191)
!3214 = !DILocation(line: 2282, column: 34, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2282, column: 9)
!3216 = !DILocation(line: 2283, column: 55, scope: !3215)
!3217 = !DILocation(line: 2282, column: 9, scope: !3215)
!3218 = !DILocation(line: 2282, column: 9, scope: !3191)
!3219 = !DILocation(line: 2284, column: 123, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2283, column: 64)
!3221 = !DILocation(line: 2284, column: 114, scope: !3220)
!3222 = !DILocation(line: 2284, column: 9, scope: !3220)
!3223 = !DILocation(line: 2285, column: 32, scope: !3220)
!3224 = !DILocation(line: 2285, column: 9, scope: !3220)
!3225 = !DILocation(line: 2286, column: 5, scope: !3220)
!3226 = !DILocation(line: 2290, column: 40, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2290, column: 9)
!3228 = !DILocation(line: 2290, column: 9, scope: !3227)
!3229 = !DILocation(line: 2290, column: 9, scope: !3191)
!3230 = !DILocation(line: 2291, column: 38, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 2291, column: 13)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 2290, column: 49)
!3233 = !DILocation(line: 2292, column: 53, scope: !3231)
!3234 = !DILocation(line: 2291, column: 13, scope: !3231)
!3235 = !DILocation(line: 2291, column: 13, scope: !3232)
!3236 = !DILocation(line: 2293, column: 127, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 2292, column: 62)
!3238 = !DILocation(line: 2293, column: 118, scope: !3237)
!3239 = !DILocation(line: 2293, column: 13, scope: !3237)
!3240 = !DILocation(line: 2294, column: 36, scope: !3237)
!3241 = !DILocation(line: 2294, column: 13, scope: !3237)
!3242 = !DILocation(line: 2295, column: 9, scope: !3237)
!3243 = !DILocation(line: 2297, column: 1, scope: !3191)
!3244 = distinct !DISubprogram(name: "syncWithMaster", scope: !3, file: !3, line: 1632, type: !311, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3261}
!3246 = !DILocalVariable(name: "el", arg: 1, scope: !3244, file: !3, line: 1632, type: !313)
!3247 = !DILocalVariable(name: "fd", arg: 2, scope: !3244, file: !3, line: 1632, type: !20)
!3248 = !DILocalVariable(name: "privdata", arg: 3, scope: !3244, file: !3, line: 1632, type: !47)
!3249 = !DILocalVariable(name: "mask", arg: 4, scope: !3244, file: !3, line: 1632, type: !20)
!3250 = !DILocalVariable(name: "tmpfile", scope: !3244, file: !3, line: 1633, type: !2868)
!3251 = !DILocalVariable(name: "err", scope: !3244, file: !3, line: 1633, type: !6)
!3252 = !DILocalVariable(name: "dfd", scope: !3244, file: !3, line: 1634, type: !20)
!3253 = !DILocalVariable(name: "maxtries", scope: !3244, file: !3, line: 1634, type: !20)
!3254 = !DILocalVariable(name: "sockerr", scope: !3244, file: !3, line: 1635, type: !20)
!3255 = !DILocalVariable(name: "psync_result", scope: !3244, file: !3, line: 1635, type: !20)
!3256 = !DILocalVariable(name: "errlen", scope: !3244, file: !3, line: 1636, type: !3257)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !3258, line: 113, baseType: !3259)
!3258 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !3260, line: 129, baseType: !290)
!3260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!3261 = !DILocalVariable(name: "port", scope: !3262, file: !3, line: 1723, type: !139)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1722, column: 52)
!3263 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1722, column: 9)
!3264 = !DILocation(line: 1632, column: 34, scope: !3244)
!3265 = !DILocation(line: 1632, column: 42, scope: !3244)
!3266 = !DILocation(line: 1632, column: 52, scope: !3244)
!3267 = !DILocation(line: 1632, column: 66, scope: !3244)
!3268 = !DILocation(line: 1633, column: 5, scope: !3244)
!3269 = !DILocation(line: 1633, column: 10, scope: !3244)
!3270 = !DILocation(line: 1633, column: 25, scope: !3244)
!3271 = !DILocation(line: 1634, column: 9, scope: !3244)
!3272 = !DILocation(line: 1634, column: 19, scope: !3244)
!3273 = !DILocation(line: 1635, column: 5, scope: !3244)
!3274 = !DILocation(line: 1635, column: 9, scope: !3244)
!3275 = !DILocation(line: 1636, column: 5, scope: !3244)
!3276 = !DILocation(line: 1636, column: 15, scope: !3244)
!3277 = !DILocation(line: 1643, column: 16, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1643, column: 9)
!3279 = !DILocation(line: 1643, column: 27, scope: !3278)
!3280 = !DILocation(line: 1643, column: 9, scope: !3244)
!3281 = !DILocation(line: 1644, column: 9, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1643, column: 47)
!3283 = !DILocation(line: 1645, column: 9, scope: !3282)
!3284 = !DILocation(line: 1650, column: 9, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1650, column: 9)
!3286 = !DILocation(line: 1650, column: 65, scope: !3285)
!3287 = !DILocation(line: 1650, column: 9, scope: !3244)
!3288 = !DILocation(line: 1651, column: 19, scope: !3285)
!3289 = !DILocation(line: 1651, column: 17, scope: !3285)
!3290 = !DILocation(line: 1651, column: 9, scope: !3285)
!3291 = !DILocation(line: 1652, column: 9, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1652, column: 9)
!3293 = !DILocation(line: 1652, column: 9, scope: !3244)
!3294 = !DILocation(line: 1654, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 1652, column: 18)
!3296 = !DILocation(line: 1653, column: 9, scope: !3295)
!3297 = !DILocation(line: 1655, column: 9, scope: !3295)
!3298 = !DILocation(line: 1659, column: 16, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1659, column: 9)
!3300 = !DILocation(line: 1659, column: 9, scope: !3244)
!3301 = !DILocation(line: 1660, column: 9, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1659, column: 53)
!3303 = !DILocation(line: 1663, column: 34, scope: !3302)
!3304 = !DILocation(line: 1663, column: 9, scope: !3302)
!3305 = !DILocation(line: 1664, column: 27, scope: !3302)
!3306 = !DILocation(line: 1667, column: 15, scope: !3302)
!3307 = !DILocation(line: 1668, column: 13, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1668, column: 13)
!3309 = !DILocation(line: 1668, column: 13, scope: !3302)
!3310 = !DILocation(line: 1674, column: 15, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 1673, column: 55)
!3312 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1673, column: 9)
!3313 = !DILocation(line: 1681, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1681, column: 13)
!3315 = !DILocation(line: 1681, column: 20, scope: !3314)
!3316 = !DILocation(line: 1681, column: 27, scope: !3314)
!3317 = !DILocation(line: 1682, column: 13, scope: !3314)
!3318 = !DILocation(line: 1682, column: 38, scope: !3314)
!3319 = !DILocation(line: 1682, column: 43, scope: !3314)
!3320 = !DILocation(line: 1683, column: 13, scope: !3314)
!3321 = !DILocation(line: 1683, column: 60, scope: !3314)
!3322 = !DILocation(line: 1681, column: 13, scope: !3311)
!3323 = !DILocation(line: 1685, column: 13, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1684, column: 9)
!3325 = !DILocation(line: 1686, column: 13, scope: !3324)
!3326 = !DILocation(line: 1687, column: 13, scope: !3324)
!3327 = !DILocation(line: 1689, column: 13, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1688, column: 16)
!3329 = !DILocation(line: 1692, column: 9, scope: !3311)
!3330 = !DILocation(line: 1693, column: 27, scope: !3311)
!3331 = !DILocation(line: 1697, column: 9, scope: !3244)
!3332 = !DILocation(line: 1698, column: 20, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 1698, column: 13)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 1697, column: 52)
!3335 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1697, column: 9)
!3336 = !{!512, !483, i64 2456}
!3337 = !DILocation(line: 1698, column: 13, scope: !3333)
!3338 = !DILocation(line: 1698, column: 13, scope: !3334)
!3339 = !DILocation(line: 1699, column: 19, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1698, column: 32)
!3341 = !DILocation(line: 1700, column: 17, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1700, column: 17)
!3343 = !DILocation(line: 1700, column: 17, scope: !3340)
!3344 = !DILocation(line: 1701, column: 31, scope: !3340)
!3345 = !DILocation(line: 1702, column: 13, scope: !3340)
!3346 = !DILocation(line: 1710, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1709, column: 55)
!3348 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1709, column: 9)
!3349 = !DILocation(line: 1711, column: 13, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1711, column: 13)
!3351 = !DILocation(line: 1711, column: 20, scope: !3350)
!3352 = !DILocation(line: 1711, column: 13, scope: !3347)
!3353 = !DILocation(line: 1712, column: 13, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 1711, column: 28)
!3355 = !DILocation(line: 1713, column: 13, scope: !3354)
!3356 = !DILocation(line: 1714, column: 13, scope: !3354)
!3357 = !DILocation(line: 1716, column: 9, scope: !3347)
!3358 = !DILocation(line: 1718, column: 5, scope: !3347)
!3359 = !DILocation(line: 0, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 1703, column: 16)
!3361 = !DILocation(line: 1723, column: 43, scope: !3262)
!3362 = !{!512, !482, i64 2584}
!3363 = !DILocation(line: 1723, column: 36, scope: !3262)
!3364 = !DILocation(line: 1724, column: 49, scope: !3262)
!3365 = !DILocation(line: 1723, column: 20, scope: !3262)
!3366 = !DILocation(line: 1723, column: 13, scope: !3262)
!3367 = !DILocation(line: 1725, column: 15, scope: !3262)
!3368 = !DILocation(line: 1727, column: 9, scope: !3262)
!3369 = !DILocation(line: 1728, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1728, column: 13)
!3371 = !DILocation(line: 1728, column: 13, scope: !3262)
!3372 = !DILocation(line: 1729, column: 9, scope: !3262)
!3373 = !DILocation(line: 1730, column: 27, scope: !3262)
!3374 = !DILocation(line: 1736, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 1735, column: 55)
!3376 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1735, column: 9)
!3377 = !DILocation(line: 1739, column: 13, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1739, column: 13)
!3379 = !DILocation(line: 1739, column: 20, scope: !3378)
!3380 = !DILocation(line: 1739, column: 13, scope: !3375)
!3381 = !DILocation(line: 1740, column: 13, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1739, column: 28)
!3383 = !DILocation(line: 1742, column: 9, scope: !3382)
!3384 = !DILocation(line: 1743, column: 9, scope: !3375)
!3385 = !DILocation(line: 1744, column: 27, scope: !3375)
!3386 = !DILocation(line: 1745, column: 5, scope: !3375)
!3387 = !DILocation(line: 1748, column: 16, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1748, column: 9)
!3389 = !DILocation(line: 1748, column: 27, scope: !3388)
!3390 = !DILocation(line: 1749, column: 16, scope: !3388)
!3391 = !DILocation(line: 1749, column: 34, scope: !3388)
!3392 = !DILocation(line: 1748, column: 49, scope: !3388)
!3393 = !DILocation(line: 1756, column: 9, scope: !3244)
!3394 = !DILocation(line: 1757, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1756, column: 50)
!3396 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1756, column: 9)
!3397 = !DILocation(line: 1759, column: 13, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1759, column: 13)
!3399 = !DILocation(line: 1759, column: 13, scope: !3395)
!3400 = !DILocation(line: 1760, column: 9, scope: !3395)
!3401 = !DILocation(line: 1761, column: 27, scope: !3395)
!3402 = !DILocation(line: 1762, column: 9, scope: !3395)
!3403 = !DILocation(line: 1767, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 1766, column: 53)
!3405 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1766, column: 9)
!3406 = !DILocation(line: 1770, column: 13, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1770, column: 13)
!3408 = !DILocation(line: 1770, column: 20, scope: !3407)
!3409 = !DILocation(line: 1770, column: 13, scope: !3404)
!3410 = !DILocation(line: 1771, column: 13, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 1770, column: 28)
!3412 = !DILocation(line: 1773, column: 9, scope: !3411)
!3413 = !DILocation(line: 1774, column: 9, scope: !3404)
!3414 = !DILocation(line: 1776, column: 5, scope: !3404)
!3415 = !DILocation(line: 0, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1750, column: 5)
!3417 = !DILocation(line: 1785, column: 15, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1784, column: 52)
!3419 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1784, column: 9)
!3420 = !DILocation(line: 1787, column: 13, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1787, column: 13)
!3422 = !DILocation(line: 1787, column: 13, scope: !3418)
!3423 = !DILocation(line: 1788, column: 9, scope: !3418)
!3424 = !DILocation(line: 1789, column: 27, scope: !3418)
!3425 = !DILocation(line: 1790, column: 9, scope: !3418)
!3426 = !DILocation(line: 1795, column: 15, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 1794, column: 55)
!3428 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1794, column: 9)
!3429 = !DILocation(line: 1798, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1798, column: 13)
!3431 = !DILocation(line: 1798, column: 20, scope: !3430)
!3432 = !DILocation(line: 1798, column: 13, scope: !3427)
!3433 = !DILocation(line: 1799, column: 13, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1798, column: 28)
!3435 = !DILocation(line: 1801, column: 9, scope: !3434)
!3436 = !DILocation(line: 1802, column: 9, scope: !3427)
!3437 = !DILocation(line: 1803, column: 27, scope: !3427)
!3438 = !DILocation(line: 1811, column: 9, scope: !3244)
!3439 = !DILocation(line: 1812, column: 13, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1812, column: 13)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1811, column: 53)
!3442 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1811, column: 9)
!3443 = !DILocation(line: 1812, column: 52, scope: !3440)
!3444 = !DILocation(line: 1812, column: 13, scope: !3441)
!3445 = !DILocation(line: 1813, column: 19, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 1812, column: 74)
!3447 = !DILocation(line: 1814, column: 13, scope: !3446)
!3448 = !DILocation(line: 1816, column: 27, scope: !3441)
!3449 = !DILocation(line: 1817, column: 9, scope: !3441)
!3450 = !DILocation(line: 1822, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 1821, column: 56)
!3452 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1821, column: 9)
!3453 = !DILocation(line: 1825, column: 9, scope: !3451)
!3454 = !DILocation(line: 1828, column: 20, scope: !3244)
!3455 = !DILocation(line: 1635, column: 22, scope: !3244)
!3456 = !DILocation(line: 1829, column: 9, scope: !3244)
!3457 = !DILocation(line: 1841, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1840, column: 41)
!3459 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1840, column: 9)
!3460 = !DILocation(line: 1842, column: 9, scope: !3458)
!3461 = !DILocation(line: 1849, column: 5, scope: !3244)
!3462 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 1850, column: 5, scope: !3244)
!3464 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !3463)
!3465 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !3463)
!3466 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !3463)
!3467 = !DILocation(line: 1855, column: 22, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1855, column: 9)
!3469 = !DILocation(line: 1855, column: 9, scope: !3244)
!3470 = !DILocation(line: 1856, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 1855, column: 46)
!3472 = !DILocation(line: 1857, column: 46, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1857, column: 13)
!3474 = !DILocation(line: 1857, column: 65, scope: !3473)
!3475 = !DILocation(line: 1857, column: 39, scope: !3473)
!3476 = !DILocation(line: 1857, column: 13, scope: !3473)
!3477 = !DILocation(line: 1857, column: 72, scope: !3473)
!3478 = !DILocation(line: 1857, column: 13, scope: !3471)
!3479 = !DILocation(line: 1859, column: 26, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1857, column: 79)
!3481 = !DILocation(line: 1859, column: 17, scope: !3480)
!3482 = !DILocation(line: 1858, column: 13, scope: !3480)
!3483 = !DILocation(line: 1860, column: 13, scope: !3480)
!3484 = !DILocation(line: 1867, column: 43, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1865, column: 23)
!3486 = !DILocation(line: 1867, column: 31, scope: !3485)
!3487 = !DILocation(line: 1867, column: 62, scope: !3485)
!3488 = !DILocation(line: 1867, column: 52, scope: !3485)
!3489 = !DILocation(line: 1866, column: 9, scope: !3485)
!3490 = !DILocation(line: 1868, column: 15, scope: !3485)
!3491 = !DILocation(line: 1869, column: 17, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1869, column: 13)
!3493 = !DILocation(line: 1869, column: 13, scope: !3485)
!3494 = !DILocation(line: 1870, column: 9, scope: !3485)
!3495 = !DILocation(line: 1878, column: 34, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1878, column: 9)
!3497 = !DILocation(line: 1878, column: 9, scope: !3496)
!3498 = !DILocation(line: 1879, column: 13, scope: !3496)
!3499 = !DILocation(line: 1878, column: 9, scope: !3244)
!3500 = !DILocation(line: 1887, column: 23, scope: !3244)
!3501 = !DILocation(line: 1888, column: 31, scope: !3244)
!3502 = !DILocation(line: 1890, column: 41, scope: !3244)
!3503 = !DILocation(line: 1891, column: 29, scope: !3244)
!3504 = !DILocation(line: 1892, column: 42, scope: !3244)
!3505 = !DILocation(line: 1892, column: 33, scope: !3244)
!3506 = !DILocation(line: 1893, column: 36, scope: !3244)
!3507 = !DILocation(line: 1893, column: 34, scope: !3244)
!3508 = !DILocation(line: 1894, column: 5, scope: !3244)
!3509 = !DILocation(line: 1897, column: 30, scope: !3244)
!3510 = !DILocation(line: 1897, column: 5, scope: !3244)
!3511 = !DILocation(line: 1898, column: 9, scope: !3244)
!3512 = !DILocation(line: 1883, column: 22, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1880, column: 5)
!3514 = !DILocation(line: 1883, column: 13, scope: !3513)
!3515 = !DILocation(line: 1881, column: 9, scope: !3513)
!3516 = !DILocation(line: 1898, column: 20, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1898, column: 9)
!3518 = !DILocation(line: 1899, column: 5, scope: !3244)
!3519 = !DILocation(line: 1900, column: 28, scope: !3244)
!3520 = !DILocation(line: 1901, column: 23, scope: !3244)
!3521 = !DILocation(line: 1902, column: 5, scope: !3244)
!3522 = !DILocation(line: 0, scope: !3446)
!3523 = !DILocation(line: 1905, column: 5, scope: !3244)
!3524 = !DILocation(line: 1906, column: 5, scope: !3244)
!3525 = !DILocation(line: 1907, column: 5, scope: !3244)
!3526 = !DILocation(line: 1908, column: 1, scope: !3244)
!3527 = !DILocation(line: 1873, column: 113, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 1872, column: 20)
!3529 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1872, column: 9)
!3530 = !DILocation(line: 1873, column: 104, scope: !3528)
!3531 = !DILocation(line: 1873, column: 9, scope: !3528)
!3532 = !DILocation(line: 1874, column: 9, scope: !3528)
!3533 = distinct !DISubprogram(name: "connectWithMaster", scope: !3, file: !3, line: 1910, type: !2382, isLocal: false, isDefinition: true, scopeLine: 1910, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3534)
!3534 = !{!3535}
!3535 = !DILocalVariable(name: "fd", scope: !3533, file: !3, line: 1911, type: !20)
!3536 = !DILocation(line: 1914, column: 16, scope: !3533)
!3537 = !DILocation(line: 1914, column: 34, scope: !3533)
!3538 = !{!512, !482, i64 2472}
!3539 = !DILocation(line: 1914, column: 45, scope: !3533)
!3540 = !{!512, !482, i64 352}
!3541 = !DILocation(line: 1913, column: 10, scope: !3533)
!3542 = !DILocation(line: 1911, column: 9, scope: !3533)
!3543 = !DILocation(line: 1915, column: 12, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1915, column: 9)
!3545 = !DILocation(line: 1915, column: 9, scope: !3533)
!3546 = !DILocation(line: 1917, column: 22, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1915, column: 19)
!3548 = !DILocation(line: 1917, column: 13, scope: !3547)
!3549 = !DILocation(line: 1916, column: 9, scope: !3547)
!3550 = !DILocation(line: 1918, column: 9, scope: !3547)
!3551 = !DILocation(line: 1921, column: 34, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1921, column: 9)
!3553 = !DILocation(line: 1921, column: 9, scope: !3552)
!3554 = !DILocation(line: 1921, column: 85, scope: !3552)
!3555 = !DILocation(line: 1921, column: 9, scope: !3533)
!3556 = !DILocation(line: 1924, column: 9, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 1923, column: 5)
!3558 = !DILocation(line: 1925, column: 9, scope: !3557)
!3559 = !DILocation(line: 1926, column: 9, scope: !3557)
!3560 = !DILocation(line: 1929, column: 42, scope: !3533)
!3561 = !DILocation(line: 1929, column: 33, scope: !3533)
!3562 = !DILocation(line: 1930, column: 28, scope: !3533)
!3563 = !DILocation(line: 1931, column: 23, scope: !3533)
!3564 = !DILocation(line: 1932, column: 5, scope: !3533)
!3565 = !DILocation(line: 0, scope: !3533)
!3566 = !DILocation(line: 1933, column: 1, scope: !3533)
!3567 = !DILocation(line: 1940, column: 21, scope: !2568)
!3568 = !DILocation(line: 1940, column: 9, scope: !2568)
!3569 = !DILocation(line: 1942, column: 30, scope: !2568)
!3570 = !DILocation(line: 1942, column: 5, scope: !2568)
!3571 = !DILocation(line: 1943, column: 5, scope: !2568)
!3572 = !DILocation(line: 1944, column: 28, scope: !2568)
!3573 = !DILocation(line: 1945, column: 1, scope: !2568)
!3574 = distinct !DISubprogram(name: "replicationAbortSyncTransfer", scope: !3, file: !3, line: 1950, type: !306, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3575 = !DILocation(line: 1951, column: 5, scope: !3574)
!3576 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 1952, column: 5, scope: !3574)
!3578 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !3577)
!3579 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !3577)
!3580 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !3577)
!3581 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !3577)
!3582 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !3577)
!3583 = !DILocation(line: 1953, column: 18, scope: !3574)
!3584 = !DILocation(line: 1953, column: 5, scope: !3574)
!3585 = !DILocation(line: 1954, column: 19, scope: !3574)
!3586 = !DILocation(line: 1954, column: 5, scope: !3574)
!3587 = !DILocation(line: 1955, column: 18, scope: !3574)
!3588 = !DILocation(line: 1955, column: 5, scope: !3574)
!3589 = !DILocation(line: 1956, column: 1, scope: !3574)
!3590 = distinct !DISubprogram(name: "replicationSetMaster", scope: !3, file: !3, line: 1982, type: !3591, isLocal: false, isDefinition: true, scopeLine: 1982, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !6, !20}
!3593 = !{!3594, !3595, !3596}
!3594 = !DILocalVariable(name: "ip", arg: 1, scope: !3590, file: !3, line: 1982, type: !6)
!3595 = !DILocalVariable(name: "port", arg: 2, scope: !3590, file: !3, line: 1982, type: !20)
!3596 = !DILocalVariable(name: "was_master", scope: !3590, file: !3, line: 1983, type: !20)
!3597 = !DILocation(line: 1982, column: 33, scope: !3590)
!3598 = !DILocation(line: 1982, column: 41, scope: !3590)
!3599 = !DILocation(line: 1983, column: 29, scope: !3590)
!3600 = !DILocation(line: 1983, column: 40, scope: !3590)
!3601 = !DILocation(line: 1985, column: 5, scope: !3590)
!3602 = !DILocation(line: 1986, column: 25, scope: !3590)
!3603 = !DILocation(line: 1986, column: 23, scope: !3590)
!3604 = !DILocation(line: 1987, column: 23, scope: !3590)
!3605 = !DILocation(line: 1988, column: 16, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1988, column: 9)
!3607 = !DILocation(line: 1988, column: 9, scope: !3606)
!3608 = !DILocation(line: 1988, column: 9, scope: !3590)
!3609 = !DILocation(line: 1989, column: 9, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 1988, column: 24)
!3611 = !DILocation(line: 1990, column: 5, scope: !3610)
!3612 = !DILocation(line: 1991, column: 5, scope: !3590)
!3613 = !DILocation(line: 1995, column: 5, scope: !3590)
!3614 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1996, column: 5, scope: !3590)
!3616 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !3615)
!3617 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !3615)
!3618 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !3615)
!3619 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !3615)
!3621 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !3615)
!3622 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !3615)
!3624 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !3623)
!3625 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !3623)
!3626 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !3623)
!3627 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !3623)
!3628 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !3623)
!3629 = !DILocation(line: 0, scope: !2561, inlinedAt: !3615)
!3630 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !3615)
!3631 = !DILocation(line: 1999, column: 9, scope: !3590)
!3632 = !DILocation(line: 1999, column: 21, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1999, column: 9)
!3634 = !DILocation(line: 2000, column: 23, scope: !3590)
!3635 = !DILocation(line: 2001, column: 1, scope: !3590)
!3636 = distinct !DISubprogram(name: "replicationCacheMasterUsingMyself", scope: !3, file: !3, line: 2237, type: !306, isLocal: false, isDefinition: true, scopeLine: 2237, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3637 = !DILocation(line: 2240, column: 43, scope: !3636)
!3638 = !DILocation(line: 2240, column: 34, scope: !3636)
!3639 = !DILocation(line: 1103, column: 40, scope: !2417, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 2241, column: 5, scope: !3636)
!3641 = !DILocation(line: 1103, column: 48, scope: !2417, inlinedAt: !3640)
!3642 = !DILocation(line: 1104, column: 21, scope: !2417, inlinedAt: !3640)
!3643 = !DILocation(line: 1104, column: 19, scope: !2417, inlinedAt: !3640)
!3644 = !DILocation(line: 1105, column: 20, scope: !2417, inlinedAt: !3640)
!3645 = !DILocation(line: 1105, column: 26, scope: !2417, inlinedAt: !3640)
!3646 = !DILocation(line: 1106, column: 20, scope: !2417, inlinedAt: !3640)
!3647 = !DILocation(line: 1106, column: 34, scope: !2417, inlinedAt: !3640)
!3648 = !DILocation(line: 1107, column: 37, scope: !2417, inlinedAt: !3640)
!3649 = !DILocation(line: 1107, column: 20, scope: !2417, inlinedAt: !3640)
!3650 = !DILocation(line: 1107, column: 28, scope: !2417, inlinedAt: !3640)
!3651 = !DILocation(line: 1108, column: 20, scope: !2417, inlinedAt: !3640)
!3652 = !DILocation(line: 1108, column: 33, scope: !2417, inlinedAt: !3640)
!3653 = !DILocation(line: 1109, column: 12, scope: !2417, inlinedAt: !3640)
!3654 = !DILocation(line: 1109, column: 5, scope: !2417, inlinedAt: !3640)
!3655 = !DILocation(line: 1113, column: 16, scope: !2440, inlinedAt: !3640)
!3656 = !DILocation(line: 1113, column: 24, scope: !2440, inlinedAt: !3640)
!3657 = !DILocation(line: 1113, column: 32, scope: !2440, inlinedAt: !3640)
!3658 = !DILocation(line: 1113, column: 9, scope: !2417, inlinedAt: !3640)
!3659 = !DILocation(line: 1114, column: 24, scope: !2440, inlinedAt: !3640)
!3660 = !DILocation(line: 1114, column: 30, scope: !2440, inlinedAt: !3640)
!3661 = !DILocation(line: 1114, column: 9, scope: !2440, inlinedAt: !3640)
!3662 = !DILocation(line: 2244, column: 12, scope: !3636)
!3663 = !DILocation(line: 2244, column: 5, scope: !3636)
!3664 = !DILocation(line: 2247, column: 25, scope: !3636)
!3665 = !DILocation(line: 2247, column: 5, scope: !3636)
!3666 = !DILocation(line: 2248, column: 35, scope: !3636)
!3667 = !DILocation(line: 2248, column: 26, scope: !3636)
!3668 = !DILocation(line: 2249, column: 19, scope: !3636)
!3669 = !DILocation(line: 2250, column: 5, scope: !3636)
!3670 = !DILocation(line: 2251, column: 1, scope: !3636)
!3671 = distinct !DISubprogram(name: "replicationUnsetMaster", scope: !3, file: !3, line: 2004, type: !306, isLocal: false, isDefinition: true, scopeLine: 2004, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3672 = !DILocation(line: 2005, column: 16, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 2005, column: 9)
!3674 = !DILocation(line: 2005, column: 27, scope: !3673)
!3675 = !DILocation(line: 2005, column: 9, scope: !3671)
!3676 = !DILocation(line: 2006, column: 5, scope: !3671)
!3677 = !DILocation(line: 2007, column: 23, scope: !3671)
!3678 = !DILocation(line: 1053, column: 5, scope: !2370, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 2012, column: 5, scope: !3671)
!3680 = !DILocation(line: 1061, column: 42, scope: !2370, inlinedAt: !3679)
!3681 = !DILocation(line: 1061, column: 60, scope: !2370, inlinedAt: !3679)
!3682 = !DILocation(line: 1061, column: 33, scope: !2370, inlinedAt: !3679)
!3683 = !DILocation(line: 1034, column: 5, scope: !1700, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 1062, column: 5, scope: !2370, inlinedAt: !3679)
!3685 = !DILocation(line: 1035, column: 39, scope: !1700, inlinedAt: !3684)
!3686 = !DILocation(line: 1063, column: 143, scope: !2370, inlinedAt: !3679)
!3687 = !DILocation(line: 1063, column: 5, scope: !2370, inlinedAt: !3679)
!3688 = !DILocation(line: 2013, column: 16, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 2013, column: 9)
!3690 = !DILocation(line: 2013, column: 9, scope: !3689)
!3691 = !DILocation(line: 2013, column: 9, scope: !3671)
!3692 = !DILocation(line: 2013, column: 24, scope: !3689)
!3693 = !DILocation(line: 2256, column: 16, scope: !3080, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 2014, column: 5, scope: !3671)
!3695 = !DILocation(line: 2256, column: 30, scope: !3080, inlinedAt: !3694)
!3696 = !DILocation(line: 2256, column: 9, scope: !3081, inlinedAt: !3694)
!3697 = !DILocation(line: 2258, column: 5, scope: !3081, inlinedAt: !3694)
!3698 = !DILocation(line: 2259, column: 12, scope: !3081, inlinedAt: !3694)
!3699 = !DILocation(line: 2259, column: 27, scope: !3081, inlinedAt: !3694)
!3700 = !DILocation(line: 2259, column: 33, scope: !3081, inlinedAt: !3694)
!3701 = !DILocation(line: 2260, column: 5, scope: !3081, inlinedAt: !3694)
!3702 = !DILocation(line: 2261, column: 26, scope: !3081, inlinedAt: !3694)
!3703 = !DILocation(line: 2262, column: 1, scope: !3081, inlinedAt: !3694)
!3704 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 2015, column: 5, scope: !3671)
!3706 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !3705)
!3707 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !3705)
!3708 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !3705)
!3709 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !3705)
!3711 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !3705)
!3712 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !3705)
!3714 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !3713)
!3715 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !3713)
!3716 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !3713)
!3717 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !3713)
!3718 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !3713)
!3719 = !DILocation(line: 0, scope: !2561, inlinedAt: !3705)
!3720 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !3705)
!3721 = !DILocation(line: 2020, column: 5, scope: !3671)
!3722 = !DILocation(line: 2021, column: 23, scope: !3671)
!3723 = !DILocation(line: 2027, column: 23, scope: !3671)
!3724 = !DILocation(line: 2033, column: 42, scope: !3671)
!3725 = !DILocation(line: 2033, column: 33, scope: !3671)
!3726 = !{!512, !481, i64 2424}
!3727 = !DILocation(line: 2034, column: 1, scope: !3671)
!3728 = distinct !DISubprogram(name: "replicationHandleMasterDisconnection", scope: !3, file: !3, line: 2038, type: !306, isLocal: false, isDefinition: true, scopeLine: 2038, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3729 = !DILocation(line: 2039, column: 19, scope: !3728)
!3730 = !DILocation(line: 2040, column: 23, scope: !3728)
!3731 = !DILocation(line: 2041, column: 37, scope: !3728)
!3732 = !DILocation(line: 2041, column: 28, scope: !3728)
!3733 = !DILocation(line: 2045, column: 1, scope: !3728)
!3734 = distinct !DISubprogram(name: "replicaofCommand", scope: !3, file: !3, line: 2047, type: !159, isLocal: false, isDefinition: true, scopeLine: 2047, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3735)
!3735 = !{!3736, !3737, !3742, !3744}
!3736 = !DILocalVariable(name: "c", arg: 1, scope: !3734, file: !3, line: 2047, type: !8)
!3737 = !DILocalVariable(name: "client", scope: !3738, file: !3, line: 2061, type: !139)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 2059, column: 32)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 2059, column: 13)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 2058, column: 45)
!3741 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 2057, column: 9)
!3742 = !DILocalVariable(name: "port", scope: !3743, file: !3, line: 2067, type: !79)
!3743 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 2066, column: 12)
!3744 = !DILocalVariable(name: "client", scope: !3743, file: !3, line: 2091, type: !139)
!3745 = !DILocation(line: 2047, column: 31, scope: !3734)
!3746 = !DILocation(line: 2050, column: 16, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 2050, column: 9)
!3748 = !{!512, !482, i64 2924}
!3749 = !DILocation(line: 2050, column: 9, scope: !3747)
!3750 = !DILocation(line: 2050, column: 9, scope: !3734)
!3751 = !DILocation(line: 2051, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 2050, column: 33)
!3753 = !DILocation(line: 2052, column: 9, scope: !3752)
!3754 = !DILocation(line: 2057, column: 24, scope: !3741)
!3755 = !DILocation(line: 2057, column: 21, scope: !3741)
!3756 = !DILocation(line: 2057, column: 33, scope: !3741)
!3757 = !DILocation(line: 2057, column: 10, scope: !3741)
!3758 = !DILocation(line: 2057, column: 43, scope: !3741)
!3759 = !DILocation(line: 2058, column: 21, scope: !3741)
!3760 = !DILocation(line: 2058, column: 33, scope: !3741)
!3761 = !DILocation(line: 2058, column: 10, scope: !3741)
!3762 = !DILocation(line: 2057, column: 9, scope: !3734)
!3763 = !DILocation(line: 2059, column: 20, scope: !3739)
!3764 = !DILocation(line: 2059, column: 13, scope: !3739)
!3765 = !DILocation(line: 2059, column: 13, scope: !3740)
!3766 = !DILocation(line: 2060, column: 13, scope: !3738)
!3767 = !DILocation(line: 2061, column: 46, scope: !3738)
!3768 = !DILocation(line: 2061, column: 26, scope: !3738)
!3769 = !DILocation(line: 2061, column: 17, scope: !3738)
!3770 = !DILocation(line: 2062, column: 13, scope: !3738)
!3771 = !DILocation(line: 2064, column: 13, scope: !3738)
!3772 = !DILocation(line: 2065, column: 9, scope: !3738)
!3773 = !DILocation(line: 2067, column: 9, scope: !3743)
!3774 = !DILocation(line: 2069, column: 16, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 2069, column: 13)
!3776 = !DILocation(line: 2069, column: 22, scope: !3775)
!3777 = !DILocation(line: 2069, column: 13, scope: !3743)
!3778 = !DILocation(line: 2074, column: 13, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 2070, column: 9)
!3780 = !DILocation(line: 2095, column: 5, scope: !3741)
!3781 = !DILocation(line: 2078, column: 42, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 2078, column: 13)
!3783 = !DILocation(line: 2067, column: 14, scope: !3743)
!3784 = !DILocation(line: 2078, column: 14, scope: !3782)
!3785 = !DILocation(line: 2078, column: 67, scope: !3782)
!3786 = !DILocation(line: 2078, column: 13, scope: !3743)
!3787 = !DILocation(line: 2082, column: 20, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 2082, column: 13)
!3789 = !DILocation(line: 2082, column: 13, scope: !3788)
!3790 = !DILocation(line: 0, scope: !3788)
!3791 = !DILocation(line: 2082, column: 31, scope: !3788)
!3792 = !DILocation(line: 2082, column: 35, scope: !3788)
!3793 = !DILocation(line: 2083, column: 13, scope: !3788)
!3794 = !DILocation(line: 2083, column: 23, scope: !3788)
!3795 = !DILocation(line: 2083, column: 16, scope: !3788)
!3796 = !DILocation(line: 2083, column: 37, scope: !3788)
!3797 = !DILocation(line: 2083, column: 34, scope: !3788)
!3798 = !DILocation(line: 2082, column: 13, scope: !3743)
!3799 = !DILocation(line: 2084, column: 13, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 2083, column: 43)
!3801 = !DILocation(line: 2085, column: 27, scope: !3800)
!3802 = !DILocation(line: 2085, column: 13, scope: !3800)
!3803 = !DILocation(line: 2086, column: 13, scope: !3800)
!3804 = !DILocation(line: 2090, column: 47, scope: !3743)
!3805 = !DILocation(line: 2090, column: 9, scope: !3743)
!3806 = !DILocation(line: 2091, column: 42, scope: !3743)
!3807 = !DILocation(line: 2091, column: 22, scope: !3743)
!3808 = !DILocation(line: 2091, column: 13, scope: !3743)
!3809 = !DILocation(line: 2093, column: 20, scope: !3743)
!3810 = !DILocation(line: 2093, column: 39, scope: !3743)
!3811 = !DILocation(line: 2092, column: 9, scope: !3743)
!3812 = !DILocation(line: 2094, column: 9, scope: !3743)
!3813 = !DILocation(line: 2096, column: 23, scope: !3734)
!3814 = !DILocation(line: 2096, column: 5, scope: !3734)
!3815 = !DILocation(line: 2097, column: 1, scope: !3734)
!3816 = distinct !DISubprogram(name: "roleCommand", scope: !3, file: !3, line: 2102, type: !159, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3817)
!3817 = !{!3818, !3819, !3822, !3823, !3824, !3825, !3827, !3828, !3829}
!3818 = !DILocalVariable(name: "c", arg: 1, scope: !3816, file: !3, line: 2102, type: !8)
!3819 = !DILocalVariable(name: "li", scope: !3820, file: !3, line: 2104, type: !420)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 2103, column: 36)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 2103, column: 9)
!3822 = !DILocalVariable(name: "ln", scope: !3820, file: !3, line: 2105, type: !105)
!3823 = !DILocalVariable(name: "mbcount", scope: !3820, file: !3, line: 2106, type: !47)
!3824 = !DILocalVariable(name: "slaves", scope: !3820, file: !3, line: 2107, type: !20)
!3825 = !DILocalVariable(name: "slave", scope: !3826, file: !3, line: 2115, type: !8)
!3826 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 2114, column: 37)
!3827 = !DILocalVariable(name: "ip", scope: !3826, file: !3, line: 2116, type: !211)
!3828 = !DILocalVariable(name: "slaveip", scope: !3826, file: !3, line: 2116, type: !6)
!3829 = !DILocalVariable(name: "slavestate", scope: !3830, file: !3, line: 2132, type: !6)
!3830 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 2131, column: 12)
!3831 = !DILocation(line: 2102, column: 26, scope: !3816)
!3832 = !DILocation(line: 2103, column: 16, scope: !3821)
!3833 = !DILocation(line: 2103, column: 27, scope: !3821)
!3834 = !DILocation(line: 2103, column: 9, scope: !3816)
!3835 = !DILocation(line: 2104, column: 9, scope: !3820)
!3836 = !DILocation(line: 2107, column: 13, scope: !3820)
!3837 = !DILocation(line: 2109, column: 9, scope: !3820)
!3838 = !DILocation(line: 2110, column: 9, scope: !3820)
!3839 = !DILocation(line: 2111, column: 35, scope: !3820)
!3840 = !DILocation(line: 2111, column: 9, scope: !3820)
!3841 = !DILocation(line: 2112, column: 19, scope: !3820)
!3842 = !DILocation(line: 2106, column: 15, scope: !3820)
!3843 = !DILocation(line: 2113, column: 27, scope: !3820)
!3844 = !DILocation(line: 2104, column: 18, scope: !3820)
!3845 = !DILocation(line: 2113, column: 9, scope: !3820)
!3846 = !DILocation(line: 2114, column: 21, scope: !3820)
!3847 = !DILocation(line: 2105, column: 19, scope: !3820)
!3848 = !DILocation(line: 2114, column: 9, scope: !3820)
!3849 = !DILocation(line: 2115, column: 33, scope: !3826)
!3850 = !DILocation(line: 2115, column: 21, scope: !3826)
!3851 = !DILocation(line: 2116, column: 13, scope: !3826)
!3852 = !DILocation(line: 2116, column: 18, scope: !3826)
!3853 = !DILocation(line: 2116, column: 49, scope: !3826)
!3854 = !DILocation(line: 2116, column: 39, scope: !3826)
!3855 = !DILocation(line: 2118, column: 17, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 2118, column: 17)
!3857 = !DILocation(line: 2118, column: 28, scope: !3856)
!3858 = !DILocation(line: 2118, column: 17, scope: !3826)
!3859 = !DILocation(line: 2119, column: 45, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 2119, column: 21)
!3861 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 2118, column: 37)
!3862 = !DILocation(line: 2119, column: 21, scope: !3860)
!3863 = !DILocation(line: 2119, column: 68, scope: !3860)
!3864 = !DILocation(line: 2119, column: 21, scope: !3861)
!3865 = distinct !{!3865, !3848, !3866}
!3866 = !DILocation(line: 2129, column: 9, scope: !3820)
!3867 = !DILocation(line: 0, scope: !3826)
!3868 = !DILocation(line: 2123, column: 24, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 2123, column: 17)
!3870 = !DILocation(line: 2123, column: 34, scope: !3869)
!3871 = !DILocation(line: 2123, column: 17, scope: !3826)
!3872 = !DILocation(line: 2124, column: 13, scope: !3826)
!3873 = !DILocation(line: 2125, column: 13, scope: !3826)
!3874 = !DILocation(line: 2126, column: 43, scope: !3826)
!3875 = !DILocation(line: 2126, column: 36, scope: !3826)
!3876 = !DILocation(line: 2126, column: 13, scope: !3826)
!3877 = !DILocation(line: 2127, column: 43, scope: !3826)
!3878 = !DILocation(line: 2127, column: 13, scope: !3826)
!3879 = !DILocation(line: 2128, column: 19, scope: !3826)
!3880 = !DILocation(line: 2130, column: 46, scope: !3820)
!3881 = !DILocation(line: 2130, column: 9, scope: !3820)
!3882 = !DILocation(line: 2131, column: 5, scope: !3821)
!3883 = !DILocation(line: 2131, column: 5, scope: !3820)
!3884 = !DILocation(line: 2132, column: 15, scope: !3830)
!3885 = !DILocation(line: 2134, column: 9, scope: !3830)
!3886 = !DILocation(line: 2135, column: 9, scope: !3830)
!3887 = !DILocation(line: 2136, column: 38, scope: !3830)
!3888 = !DILocation(line: 2136, column: 9, scope: !3830)
!3889 = !DILocation(line: 2137, column: 35, scope: !3830)
!3890 = !DILocation(line: 2137, column: 28, scope: !3830)
!3891 = !DILocation(line: 2137, column: 9, scope: !3830)
!3892 = !DILocation(line: 1071, column: 19, scope: !2381, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 2138, column: 13, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 2138, column: 13)
!3895 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !3893)
!3896 = !DILocation(line: 2138, column: 13, scope: !3830)
!3897 = !DILocation(line: 2141, column: 13, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 2140, column: 16)
!3899 = !DILocation(line: 2143, column: 62, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 2141, column: 39)
!3901 = !DILocation(line: 2144, column: 68, scope: !3900)
!3902 = !DILocation(line: 2145, column: 60, scope: !3900)
!3903 = !DILocation(line: 2146, column: 66, scope: !3900)
!3904 = !DILocation(line: 2147, column: 46, scope: !3900)
!3905 = !DILocation(line: 0, scope: !3900)
!3906 = !DILocation(line: 2150, column: 9, scope: !3830)
!3907 = !DILocation(line: 2151, column: 35, scope: !3830)
!3908 = !DILocation(line: 2151, column: 28, scope: !3830)
!3909 = !DILocation(line: 2151, column: 59, scope: !3830)
!3910 = !DILocation(line: 2151, column: 9, scope: !3830)
!3911 = !DILocation(line: 2153, column: 1, scope: !3816)
!3912 = distinct !DISubprogram(name: "replicationCacheMaster", scope: !3, file: !3, line: 2191, type: !159, isLocal: false, isDefinition: true, scopeLine: 2191, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3913)
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "c", arg: 1, scope: !3912, file: !3, line: 2191, type: !8)
!3915 = !DILocation(line: 2191, column: 37, scope: !3912)
!3916 = !DILocation(line: 2192, column: 5, scope: !3912)
!3917 = !DILocation(line: 2193, column: 5, scope: !3912)
!3918 = !DILocation(line: 2196, column: 5, scope: !3912)
!3919 = !DILocation(line: 2202, column: 21, scope: !3912)
!3920 = !DILocation(line: 2202, column: 29, scope: !3912)
!3921 = !{!480, !483, i64 32}
!3922 = !DILocation(line: 2202, column: 5, scope: !3912)
!3923 = !DILocation(line: 2203, column: 21, scope: !3912)
!3924 = !DILocation(line: 2203, column: 29, scope: !3912)
!3925 = !{!480, !483, i64 48}
!3926 = !DILocation(line: 2203, column: 5, scope: !3912)
!3927 = !DILocation(line: 2204, column: 42, scope: !3912)
!3928 = !DILocation(line: 2204, column: 50, scope: !3912)
!3929 = !DILocation(line: 2204, column: 20, scope: !3912)
!3930 = !DILocation(line: 2204, column: 33, scope: !3912)
!3931 = !DILocation(line: 2205, column: 12, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 2205, column: 9)
!3933 = !DILocation(line: 2205, column: 18, scope: !3932)
!3934 = !DILocation(line: 2205, column: 9, scope: !3912)
!3935 = !DILocation(line: 2205, column: 34, scope: !3932)
!3936 = !DILocation(line: 2206, column: 18, scope: !3912)
!3937 = !{!480, !483, i64 112}
!3938 = !DILocation(line: 2206, column: 5, scope: !3912)
!3939 = !DILocation(line: 2208, column: 8, scope: !3912)
!3940 = !DILocation(line: 2208, column: 20, scope: !3912)
!3941 = !DILocation(line: 2209, column: 8, scope: !3912)
!3942 = !DILocation(line: 2209, column: 15, scope: !3912)
!3943 = !{!480, !482, i64 528}
!3944 = !DILocation(line: 2210, column: 5, scope: !3912)
!3945 = !DILocation(line: 2214, column: 35, scope: !3912)
!3946 = !DILocation(line: 2214, column: 26, scope: !3912)
!3947 = !DILocation(line: 2217, column: 12, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 2217, column: 9)
!3949 = !{!480, !483, i64 512}
!3950 = !DILocation(line: 2217, column: 9, scope: !3948)
!3951 = !DILocation(line: 2217, column: 9, scope: !3912)
!3952 = !DILocation(line: 2218, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 2217, column: 20)
!3954 = !DILocation(line: 2219, column: 19, scope: !3953)
!3955 = !DILocation(line: 2220, column: 5, scope: !3953)
!3956 = !DILocation(line: 2039, column: 19, scope: !3728, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 2225, column: 5, scope: !3912)
!3958 = !DILocation(line: 2040, column: 23, scope: !3728, inlinedAt: !3957)
!3959 = !DILocation(line: 2041, column: 37, scope: !3728, inlinedAt: !3957)
!3960 = !DILocation(line: 2041, column: 28, scope: !3728, inlinedAt: !3957)
!3961 = !DILocation(line: 2226, column: 1, scope: !3912)
!3962 = distinct !DISubprogram(name: "replicationScriptCacheInit", scope: !3, file: !3, line: 2355, type: !306, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3963 = !DILocation(line: 2356, column: 34, scope: !3962)
!3964 = !{!512, !482, i64 2680}
!3965 = !DILocation(line: 2357, column: 36, scope: !3962)
!3966 = !DILocation(line: 2357, column: 34, scope: !3962)
!3967 = !DILocation(line: 2358, column: 36, scope: !3962)
!3968 = !DILocation(line: 2358, column: 34, scope: !3962)
!3969 = !DILocation(line: 2359, column: 1, scope: !3962)
!3970 = distinct !DISubprogram(name: "replicationScriptCacheAdd", scope: !3, file: !3, line: 2380, type: !3971, isLocal: false, isDefinition: true, scopeLine: 2380, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !139}
!3973 = !{!3974, !3975, !3976, !3977, !3980}
!3974 = !DILocalVariable(name: "sha1", arg: 1, scope: !3970, file: !3, line: 2380, type: !139)
!3975 = !DILocalVariable(name: "retval", scope: !3970, file: !3, line: 2381, type: !20)
!3976 = !DILocalVariable(name: "key", scope: !3970, file: !3, line: 2382, type: !139)
!3977 = !DILocalVariable(name: "ln", scope: !3978, file: !3, line: 2387, type: !105)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 2386, column: 5)
!3979 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 2385, column: 9)
!3980 = !DILocalVariable(name: "oldest", scope: !3978, file: !3, line: 2388, type: !139)
!3981 = !DILocation(line: 2380, column: 36, scope: !3970)
!3982 = !DILocation(line: 2382, column: 15, scope: !3970)
!3983 = !DILocation(line: 2382, column: 9, scope: !3970)
!3984 = !DILocation(line: 2385, column: 9, scope: !3979)
!3985 = !DILocation(line: 2385, column: 60, scope: !3979)
!3986 = !DILocation(line: 2385, column: 53, scope: !3979)
!3987 = !DILocation(line: 2385, column: 50, scope: !3979)
!3988 = !DILocation(line: 2385, column: 9, scope: !3970)
!3989 = !DILocation(line: 2387, column: 24, scope: !3978)
!3990 = !{!560, !483, i64 8}
!3991 = !DILocation(line: 2387, column: 19, scope: !3978)
!3992 = !DILocation(line: 2388, column: 22, scope: !3978)
!3993 = !DILocation(line: 2388, column: 13, scope: !3978)
!3994 = !DILocation(line: 2390, column: 36, scope: !3978)
!3995 = !DILocation(line: 2390, column: 18, scope: !3978)
!3996 = !DILocation(line: 2381, column: 9, scope: !3970)
!3997 = !DILocation(line: 2391, column: 9, scope: !3978)
!3998 = !DILocation(line: 2392, column: 28, scope: !3978)
!3999 = !DILocation(line: 2392, column: 9, scope: !3978)
!4000 = !DILocation(line: 2393, column: 5, scope: !3978)
!4001 = !DILocation(line: 2396, column: 29, scope: !3970)
!4002 = !DILocation(line: 2396, column: 14, scope: !3970)
!4003 = !DILocation(line: 2397, column: 28, scope: !3970)
!4004 = !DILocation(line: 2397, column: 5, scope: !3970)
!4005 = !DILocation(line: 2398, column: 5, scope: !3970)
!4006 = !DILocation(line: 2399, column: 1, scope: !3970)
!4007 = distinct !DISubprogram(name: "replicationScriptCacheExists", scope: !3, file: !3, line: 2403, type: !4008, isLocal: false, isDefinition: true, scopeLine: 2403, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!20, !139}
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "sha1", arg: 1, scope: !4007, file: !3, line: 2403, type: !139)
!4012 = !DILocation(line: 2403, column: 38, scope: !4007)
!4013 = !DILocation(line: 2404, column: 28, scope: !4007)
!4014 = !DILocation(line: 2404, column: 12, scope: !4007)
!4015 = !DILocation(line: 2404, column: 56, scope: !4007)
!4016 = !DILocation(line: 2404, column: 5, scope: !4007)
!4017 = distinct !DISubprogram(name: "replicationRequestAckFromSlaves", scope: !3, file: !3, line: 2437, type: !306, isLocal: false, isDefinition: true, scopeLine: 2437, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!4018 = !DILocation(line: 2438, column: 32, scope: !4017)
!4019 = !{!512, !482, i64 2696}
!4020 = !DILocation(line: 2439, column: 1, scope: !4017)
!4021 = distinct !DISubprogram(name: "replicationCountAcksByOffset", scope: !3, file: !3, line: 2443, type: !4022, isLocal: false, isDefinition: true, scopeLine: 2443, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!20, !97}
!4024 = !{!4025, !4026, !4027, !4028, !4029}
!4025 = !DILocalVariable(name: "offset", arg: 1, scope: !4021, file: !3, line: 2443, type: !97)
!4026 = !DILocalVariable(name: "li", scope: !4021, file: !3, line: 2444, type: !420)
!4027 = !DILocalVariable(name: "ln", scope: !4021, file: !3, line: 2445, type: !105)
!4028 = !DILocalVariable(name: "count", scope: !4021, file: !3, line: 2446, type: !20)
!4029 = !DILocalVariable(name: "slave", scope: !4030, file: !3, line: 2450, type: !8)
!4030 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 2449, column: 33)
!4031 = !DILocation(line: 2443, column: 44, scope: !4021)
!4032 = !DILocation(line: 2444, column: 5, scope: !4021)
!4033 = !DILocation(line: 2446, column: 9, scope: !4021)
!4034 = !DILocation(line: 2448, column: 23, scope: !4021)
!4035 = !DILocation(line: 2444, column: 14, scope: !4021)
!4036 = !DILocation(line: 2448, column: 5, scope: !4021)
!4037 = !DILocation(line: 2449, column: 17, scope: !4021)
!4038 = !DILocation(line: 2445, column: 15, scope: !4021)
!4039 = !DILocation(line: 2449, column: 5, scope: !4021)
!4040 = !DILocation(line: 2450, column: 29, scope: !4030)
!4041 = !DILocation(line: 2450, column: 17, scope: !4030)
!4042 = !DILocation(line: 2452, column: 20, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 2452, column: 13)
!4044 = !DILocation(line: 2452, column: 30, scope: !4043)
!4045 = !DILocation(line: 2452, column: 13, scope: !4030)
!4046 = distinct !{!4046, !4039, !4047}
!4047 = !DILocation(line: 2454, column: 5, scope: !4021)
!4048 = !DILocation(line: 2453, column: 20, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 2453, column: 13)
!4050 = !DILocation(line: 2453, column: 33, scope: !4049)
!4051 = !DILocation(line: 2453, column: 13, scope: !4030)
!4052 = !DILocation(line: 0, scope: !4049)
!4053 = !DILocation(line: 2456, column: 1, scope: !4021)
!4054 = !DILocation(line: 2455, column: 5, scope: !4021)
!4055 = distinct !DISubprogram(name: "waitCommand", scope: !3, file: !3, line: 2460, type: !159, isLocal: false, isDefinition: true, scopeLine: 2460, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061}
!4057 = !DILocalVariable(name: "c", arg: 1, scope: !4055, file: !3, line: 2460, type: !8)
!4058 = !DILocalVariable(name: "timeout", scope: !4055, file: !3, line: 2461, type: !237)
!4059 = !DILocalVariable(name: "numreplicas", scope: !4055, file: !3, line: 2462, type: !79)
!4060 = !DILocalVariable(name: "ackreplicas", scope: !4055, file: !3, line: 2462, type: !79)
!4061 = !DILocalVariable(name: "offset", scope: !4055, file: !3, line: 2463, type: !97)
!4062 = !DILocation(line: 2460, column: 26, scope: !4055)
!4063 = !DILocation(line: 2461, column: 5, scope: !4055)
!4064 = !DILocation(line: 2462, column: 5, scope: !4055)
!4065 = !DILocation(line: 2463, column: 27, scope: !4055)
!4066 = !{!480, !484, i64 480}
!4067 = !DILocation(line: 2463, column: 15, scope: !4055)
!4068 = !DILocation(line: 2465, column: 16, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 2465, column: 9)
!4070 = !DILocation(line: 2465, column: 9, scope: !4069)
!4071 = !DILocation(line: 2465, column: 9, scope: !4055)
!4072 = !DILocation(line: 2466, column: 9, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2465, column: 28)
!4074 = !DILocation(line: 2467, column: 9, scope: !4073)
!4075 = !DILocation(line: 2471, column: 39, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 2471, column: 9)
!4077 = !DILocation(line: 2471, column: 36, scope: !4076)
!4078 = !DILocation(line: 2462, column: 10, scope: !4055)
!4079 = !DILocation(line: 2471, column: 9, scope: !4076)
!4080 = !DILocation(line: 2471, column: 66, scope: !4076)
!4081 = !DILocation(line: 2471, column: 9, scope: !4055)
!4082 = !DILocation(line: 2473, column: 42, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 2473, column: 9)
!4084 = !DILocation(line: 2473, column: 39, scope: !4083)
!4085 = !DILocation(line: 2461, column: 14, scope: !4055)
!4086 = !DILocation(line: 2473, column: 9, scope: !4083)
!4087 = !DILocation(line: 2474, column: 9, scope: !4083)
!4088 = !DILocation(line: 2473, column: 9, scope: !4055)
!4089 = !DILocation(line: 2477, column: 51, scope: !4055)
!4090 = !DILocation(line: 2443, column: 44, scope: !4021, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 2477, column: 19, scope: !4055)
!4092 = !DILocation(line: 2444, column: 5, scope: !4021, inlinedAt: !4091)
!4093 = !DILocation(line: 2446, column: 9, scope: !4021, inlinedAt: !4091)
!4094 = !DILocation(line: 2448, column: 23, scope: !4021, inlinedAt: !4091)
!4095 = !DILocation(line: 2444, column: 14, scope: !4021, inlinedAt: !4091)
!4096 = !DILocation(line: 2448, column: 5, scope: !4021, inlinedAt: !4091)
!4097 = !DILocation(line: 2449, column: 17, scope: !4021, inlinedAt: !4091)
!4098 = !DILocation(line: 2445, column: 15, scope: !4021, inlinedAt: !4091)
!4099 = !DILocation(line: 2449, column: 5, scope: !4021, inlinedAt: !4091)
!4100 = !DILocation(line: 2450, column: 29, scope: !4030, inlinedAt: !4091)
!4101 = !DILocation(line: 2450, column: 17, scope: !4030, inlinedAt: !4091)
!4102 = !DILocation(line: 2452, column: 20, scope: !4043, inlinedAt: !4091)
!4103 = !DILocation(line: 2452, column: 30, scope: !4043, inlinedAt: !4091)
!4104 = !DILocation(line: 2452, column: 13, scope: !4030, inlinedAt: !4091)
!4105 = !DILocation(line: 2453, column: 20, scope: !4049, inlinedAt: !4091)
!4106 = !DILocation(line: 2453, column: 33, scope: !4049, inlinedAt: !4091)
!4107 = !DILocation(line: 2453, column: 13, scope: !4030, inlinedAt: !4091)
!4108 = !DILocation(line: 2454, column: 5, scope: !4021, inlinedAt: !4091)
!4109 = !DILocation(line: 0, scope: !4049, inlinedAt: !4091)
!4110 = !DILocation(line: 2456, column: 1, scope: !4021, inlinedAt: !4091)
!4111 = !DILocation(line: 2477, column: 19, scope: !4055)
!4112 = !DILocation(line: 2462, column: 23, scope: !4055)
!4113 = !DILocation(line: 2478, column: 24, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 2478, column: 9)
!4115 = !DILocation(line: 2478, column: 21, scope: !4114)
!4116 = !DILocation(line: 2478, column: 36, scope: !4114)
!4117 = !DILocation(line: 2478, column: 42, scope: !4114)
!4118 = !DILocation(line: 2478, column: 48, scope: !4114)
!4119 = !DILocation(line: 2478, column: 9, scope: !4055)
!4120 = !DILocation(line: 2479, column: 9, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 2478, column: 64)
!4122 = !DILocation(line: 2480, column: 9, scope: !4121)
!4123 = !DILocation(line: 2485, column: 23, scope: !4055)
!4124 = !DILocation(line: 2485, column: 13, scope: !4055)
!4125 = !DILocation(line: 2485, column: 21, scope: !4055)
!4126 = !{!480, !484, i64 392}
!4127 = !DILocation(line: 2486, column: 13, scope: !4055)
!4128 = !DILocation(line: 2486, column: 24, scope: !4055)
!4129 = !{!480, !484, i64 464}
!4130 = !DILocation(line: 2487, column: 27, scope: !4055)
!4131 = !DILocation(line: 2487, column: 13, scope: !4055)
!4132 = !DILocation(line: 2487, column: 25, scope: !4055)
!4133 = !{!480, !482, i64 460}
!4134 = !DILocation(line: 2488, column: 28, scope: !4055)
!4135 = !{!512, !483, i64 2688}
!4136 = !DILocation(line: 2488, column: 49, scope: !4055)
!4137 = !DILocation(line: 2488, column: 5, scope: !4055)
!4138 = !DILocation(line: 2489, column: 5, scope: !4055)
!4139 = !DILocation(line: 2438, column: 32, scope: !4017, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 2493, column: 5, scope: !4055)
!4141 = !DILocation(line: 2494, column: 1, scope: !4055)
!4142 = distinct !DISubprogram(name: "unblockClientWaitingReplicas", scope: !3, file: !3, line: 2500, type: !159, isLocal: false, isDefinition: true, scopeLine: 2500, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4143)
!4143 = !{!4144, !4145}
!4144 = !DILocalVariable(name: "c", arg: 1, scope: !4142, file: !3, line: 2500, type: !8)
!4145 = !DILocalVariable(name: "ln", scope: !4142, file: !3, line: 2501, type: !105)
!4146 = !DILocation(line: 2500, column: 43, scope: !4142)
!4147 = !DILocation(line: 2501, column: 41, scope: !4142)
!4148 = !DILocation(line: 2501, column: 62, scope: !4142)
!4149 = !DILocation(line: 2501, column: 20, scope: !4142)
!4150 = !DILocation(line: 2501, column: 15, scope: !4142)
!4151 = !DILocation(line: 2502, column: 5, scope: !4142)
!4152 = !DILocation(line: 2503, column: 24, scope: !4142)
!4153 = !DILocation(line: 2503, column: 5, scope: !4142)
!4154 = !DILocation(line: 2504, column: 1, scope: !4142)
!4155 = distinct !DISubprogram(name: "processClientsWaitingReplicas", scope: !3, file: !3, line: 2508, type: !306, isLocal: false, isDefinition: true, scopeLine: 2508, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4156)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4163}
!4157 = !DILocalVariable(name: "last_offset", scope: !4155, file: !3, line: 2509, type: !97)
!4158 = !DILocalVariable(name: "last_numreplicas", scope: !4155, file: !3, line: 2510, type: !20)
!4159 = !DILocalVariable(name: "li", scope: !4155, file: !3, line: 2512, type: !420)
!4160 = !DILocalVariable(name: "ln", scope: !4155, file: !3, line: 2513, type: !105)
!4161 = !DILocalVariable(name: "c", scope: !4162, file: !3, line: 2517, type: !8)
!4162 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 2516, column: 33)
!4163 = !DILocalVariable(name: "numreplicas", scope: !4164, file: !3, line: 2529, type: !20)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 2528, column: 16)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 2523, column: 13)
!4166 = !DILocation(line: 2509, column: 15, scope: !4155)
!4167 = !DILocation(line: 2510, column: 9, scope: !4155)
!4168 = !DILocation(line: 2512, column: 5, scope: !4155)
!4169 = !DILocation(line: 2515, column: 23, scope: !4155)
!4170 = !DILocation(line: 2512, column: 14, scope: !4155)
!4171 = !DILocation(line: 2515, column: 5, scope: !4155)
!4172 = !DILocation(line: 2516, column: 17, scope: !4155)
!4173 = !DILocation(line: 2513, column: 15, scope: !4155)
!4174 = !DILocation(line: 2516, column: 5, scope: !4155)
!4175 = !DILocation(line: 2517, column: 25, scope: !4162)
!4176 = !DILocation(line: 2517, column: 17, scope: !4162)
!4177 = !DILocation(line: 2523, column: 13, scope: !4165)
!4178 = !DILocation(line: 0, scope: !4165)
!4179 = !DILocation(line: 2523, column: 40, scope: !4165)
!4180 = !DILocation(line: 2523, column: 25, scope: !4165)
!4181 = !DILocation(line: 2524, column: 55, scope: !4165)
!4182 = !DILocation(line: 2524, column: 45, scope: !4165)
!4183 = !DILocation(line: 2523, column: 13, scope: !4162)
!4184 = !DILocation(line: 2526, column: 13, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 2525, column: 9)
!4186 = !DILocation(line: 2527, column: 32, scope: !4185)
!4187 = !DILocation(line: 2527, column: 13, scope: !4185)
!4188 = !DILocation(line: 2528, column: 9, scope: !4185)
!4189 = !DILocation(line: 2443, column: 44, scope: !4021, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 2529, column: 31, scope: !4164)
!4191 = !DILocation(line: 2444, column: 5, scope: !4021, inlinedAt: !4190)
!4192 = !DILocation(line: 2446, column: 9, scope: !4021, inlinedAt: !4190)
!4193 = !DILocation(line: 2448, column: 23, scope: !4021, inlinedAt: !4190)
!4194 = !DILocation(line: 2444, column: 14, scope: !4021, inlinedAt: !4190)
!4195 = !DILocation(line: 2448, column: 5, scope: !4021, inlinedAt: !4190)
!4196 = !DILocation(line: 2449, column: 17, scope: !4021, inlinedAt: !4190)
!4197 = !DILocation(line: 2445, column: 15, scope: !4021, inlinedAt: !4190)
!4198 = !DILocation(line: 2449, column: 5, scope: !4021, inlinedAt: !4190)
!4199 = !DILocation(line: 2450, column: 29, scope: !4030, inlinedAt: !4190)
!4200 = !DILocation(line: 2450, column: 17, scope: !4030, inlinedAt: !4190)
!4201 = !DILocation(line: 2452, column: 20, scope: !4043, inlinedAt: !4190)
!4202 = !DILocation(line: 2452, column: 30, scope: !4043, inlinedAt: !4190)
!4203 = !DILocation(line: 2452, column: 13, scope: !4030, inlinedAt: !4190)
!4204 = !DILocation(line: 2453, column: 20, scope: !4049, inlinedAt: !4190)
!4205 = !DILocation(line: 2453, column: 33, scope: !4049, inlinedAt: !4190)
!4206 = !DILocation(line: 2453, column: 13, scope: !4030, inlinedAt: !4190)
!4207 = !DILocation(line: 2454, column: 5, scope: !4021, inlinedAt: !4190)
!4208 = !DILocation(line: 0, scope: !4049, inlinedAt: !4190)
!4209 = !DILocation(line: 2456, column: 1, scope: !4021, inlinedAt: !4190)
!4210 = !DILocation(line: 2529, column: 17, scope: !4164)
!4211 = !DILocation(line: 2531, column: 40, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 2531, column: 17)
!4213 = !DILocation(line: 2531, column: 29, scope: !4212)
!4214 = !DILocation(line: 2531, column: 17, scope: !4164)
!4215 = !DILocation(line: 2532, column: 39, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 2531, column: 53)
!4217 = !DILocation(line: 2534, column: 17, scope: !4216)
!4218 = !DILocation(line: 2535, column: 36, scope: !4216)
!4219 = !DILocation(line: 2535, column: 17, scope: !4216)
!4220 = !DILocation(line: 2536, column: 13, scope: !4216)
!4221 = !DILocation(line: 0, scope: !4216)
!4222 = distinct !{!4222, !4174, !4223}
!4223 = !DILocation(line: 2538, column: 5, scope: !4155)
!4224 = !DILocation(line: 2539, column: 1, scope: !4155)
!4225 = distinct !DISubprogram(name: "replicationGetSlaveOffset", scope: !3, file: !3, line: 2543, type: !1233, isLocal: false, isDefinition: true, scopeLine: 2543, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4226)
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "offset", scope: !4225, file: !3, line: 2544, type: !97)
!4228 = !DILocation(line: 2544, column: 15, scope: !4225)
!4229 = !DILocation(line: 2546, column: 16, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 2546, column: 9)
!4231 = !DILocation(line: 2546, column: 27, scope: !4230)
!4232 = !DILocation(line: 2546, column: 9, scope: !4225)
!4233 = !DILocation(line: 2547, column: 20, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 2547, column: 13)
!4235 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 2546, column: 36)
!4236 = !DILocation(line: 2547, column: 13, scope: !4234)
!4237 = !DILocation(line: 2547, column: 13, scope: !4235)
!4238 = !DILocation(line: 2549, column: 27, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 2549, column: 20)
!4240 = !DILocation(line: 2549, column: 20, scope: !4239)
!4241 = !DILocation(line: 2549, column: 20, scope: !4234)
!4242 = !DILocation(line: 0, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 2549, column: 42)
!4244 = !DILocation(line: 0, scope: !4225)
!4245 = !DILocation(line: 2557, column: 9, scope: !4225)
!4246 = !DILocation(line: 2558, column: 5, scope: !4225)
!4247 = !DILocation(line: 2568, column: 16, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2568, column: 9)
!4249 = !DILocation(line: 2568, column: 9, scope: !4248)
!4250 = !DILocation(line: 2568, column: 27, scope: !4248)
!4251 = !DILocation(line: 2569, column: 17, scope: !4248)
!4252 = !DILocation(line: 2569, column: 28, scope: !4248)
!4253 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 2570, column: 10, scope: !4248)
!4255 = !DILocation(line: 2569, column: 53, scope: !4248)
!4256 = !DILocation(line: 2571, column: 11, scope: !4248)
!4257 = !DILocation(line: 2571, column: 29, scope: !4248)
!4258 = !DILocation(line: 2571, column: 21, scope: !4248)
!4259 = !DILocation(line: 2571, column: 60, scope: !4248)
!4260 = !{!512, !482, i64 2476}
!4261 = !DILocation(line: 2571, column: 53, scope: !4248)
!4262 = !DILocation(line: 2571, column: 51, scope: !4248)
!4263 = !DILocation(line: 2568, column: 9, scope: !417)
!4264 = !DILocation(line: 2573, column: 9, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 2572, column: 5)
!4266 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 2574, column: 9, scope: !4265)
!4268 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !4267)
!4269 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !4267)
!4270 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !4267)
!4271 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !4267)
!4273 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !4267)
!4274 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !4267)
!4276 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !4275)
!4277 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !4275)
!4278 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !4275)
!4279 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !4275)
!4280 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !4275)
!4281 = !DILocation(line: 0, scope: !2561, inlinedAt: !4267)
!4282 = !DILocation(line: 1978, column: 5, scope: !2557, inlinedAt: !4267)
!4283 = !DILocation(line: 2578, column: 16, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2578, column: 9)
!4285 = !DILocation(line: 2578, column: 9, scope: !4284)
!4286 = !DILocation(line: 2578, column: 37, scope: !4284)
!4287 = !DILocation(line: 2578, column: 48, scope: !4284)
!4288 = !DILocation(line: 2578, column: 27, scope: !4284)
!4289 = !DILocation(line: 2579, column: 10, scope: !4284)
!4290 = !DILocation(line: 2579, column: 28, scope: !4284)
!4291 = !DILocation(line: 2579, column: 20, scope: !4284)
!4292 = !DILocation(line: 2579, column: 59, scope: !4284)
!4293 = !DILocation(line: 2579, column: 52, scope: !4284)
!4294 = !DILocation(line: 2579, column: 50, scope: !4284)
!4295 = !DILocation(line: 2578, column: 9, scope: !417)
!4296 = !DILocation(line: 2586, column: 37, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2586, column: 9)
!4298 = !DILocation(line: 2581, column: 9, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 2580, column: 5)
!4300 = !DILocation(line: 1967, column: 16, scope: !2556, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 2582, column: 9, scope: !4299)
!4302 = !DILocation(line: 1967, column: 9, scope: !2557, inlinedAt: !4301)
!4303 = !DILocation(line: 1968, column: 9, scope: !2561, inlinedAt: !4301)
!4304 = !DILocation(line: 1970, column: 5, scope: !2561, inlinedAt: !4301)
!4305 = !DILocation(line: 1071, column: 57, scope: !2381, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 1971, column: 16, scope: !2565, inlinedAt: !4301)
!4307 = !DILocation(line: 1970, column: 16, scope: !2556, inlinedAt: !4301)
!4308 = !DILocation(line: 1940, column: 21, scope: !2568, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 1973, column: 9, scope: !2572, inlinedAt: !4301)
!4310 = !DILocation(line: 1940, column: 9, scope: !2568, inlinedAt: !4309)
!4311 = !DILocation(line: 1942, column: 30, scope: !2568, inlinedAt: !4309)
!4312 = !DILocation(line: 1942, column: 5, scope: !2568, inlinedAt: !4309)
!4313 = !DILocation(line: 1943, column: 5, scope: !2568, inlinedAt: !4309)
!4314 = !DILocation(line: 1944, column: 28, scope: !2568, inlinedAt: !4309)
!4315 = !DILocation(line: 0, scope: !2561, inlinedAt: !4301)
!4316 = !DILocation(line: 2594, column: 9, scope: !417)
!4317 = !DILocation(line: 2586, column: 16, scope: !4297)
!4318 = !DILocation(line: 2586, column: 9, scope: !4297)
!4319 = !DILocation(line: 2586, column: 48, scope: !4297)
!4320 = !DILocation(line: 2586, column: 27, scope: !4297)
!4321 = !DILocation(line: 2587, column: 10, scope: !4297)
!4322 = !DILocation(line: 2587, column: 28, scope: !4297)
!4323 = !DILocation(line: 2587, column: 36, scope: !4297)
!4324 = !DILocation(line: 2587, column: 20, scope: !4297)
!4325 = !DILocation(line: 2587, column: 62, scope: !4297)
!4326 = !DILocation(line: 2587, column: 55, scope: !4297)
!4327 = !DILocation(line: 2587, column: 53, scope: !4297)
!4328 = !DILocation(line: 2586, column: 9, scope: !417)
!4329 = !DILocation(line: 2589, column: 9, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 2588, column: 5)
!4331 = !DILocation(line: 2590, column: 27, scope: !4330)
!4332 = !DILocation(line: 2590, column: 9, scope: !4330)
!4333 = !DILocation(line: 2591, column: 5, scope: !4330)
!4334 = !DILocation(line: 2594, column: 16, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2594, column: 9)
!4336 = !DILocation(line: 2594, column: 27, scope: !4335)
!4337 = !DILocation(line: 2596, column: 20, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 2594, column: 50)
!4339 = !DILocation(line: 2596, column: 39, scope: !4338)
!4340 = !DILocation(line: 2595, column: 9, scope: !4338)
!4341 = !DILocation(line: 2597, column: 13, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 2597, column: 13)
!4343 = !DILocation(line: 2597, column: 33, scope: !4342)
!4344 = !DILocation(line: 2597, column: 13, scope: !4338)
!4345 = !DILocation(line: 2598, column: 13, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 2597, column: 42)
!4347 = !DILocation(line: 2599, column: 9, scope: !4346)
!4348 = !DILocation(line: 2605, column: 16, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2605, column: 9)
!4350 = !DILocation(line: 2605, column: 9, scope: !4349)
!4351 = !DILocation(line: 2605, column: 37, scope: !4349)
!4352 = !DILocation(line: 2605, column: 30, scope: !4349)
!4353 = !DILocation(line: 2605, column: 27, scope: !4349)
!4354 = !DILocation(line: 2606, column: 26, scope: !4349)
!4355 = !DILocation(line: 2606, column: 32, scope: !4349)
!4356 = !DILocation(line: 2605, column: 9, scope: !417)
!4357 = !DILocation(line: 2159, column: 13, scope: !1992, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 2607, column: 9, scope: !4349)
!4359 = !DILocation(line: 2162, column: 18, scope: !1997, inlinedAt: !4358)
!4360 = !DILocation(line: 2163, column: 9, scope: !1997, inlinedAt: !4358)
!4361 = !DILocation(line: 2164, column: 9, scope: !1997, inlinedAt: !4358)
!4362 = !DILocation(line: 2165, column: 9, scope: !1997, inlinedAt: !4358)
!4363 = !DILocation(line: 2166, column: 35, scope: !1997, inlinedAt: !4358)
!4364 = !DILocation(line: 2166, column: 9, scope: !1997, inlinedAt: !4358)
!4365 = !DILocation(line: 2167, column: 18, scope: !1997, inlinedAt: !4358)
!4366 = !DILocation(line: 2607, column: 9, scope: !4349)
!4367 = !DILocation(line: 2613, column: 5, scope: !417)
!4368 = !DILocation(line: 2615, column: 5, scope: !417)
!4369 = !DILocation(line: 2615, column: 11, scope: !417)
!4370 = !DILocation(line: 2618, column: 10, scope: !432)
!4371 = !DILocation(line: 2618, column: 42, scope: !432)
!4372 = !{!512, !482, i64 2372}
!4373 = !DILocation(line: 2618, column: 35, scope: !432)
!4374 = !DILocation(line: 2618, column: 33, scope: !432)
!4375 = !DILocation(line: 2618, column: 66, scope: !432)
!4376 = !DILocation(line: 2618, column: 71, scope: !432)
!4377 = !DILocation(line: 2619, column: 9, scope: !432)
!4378 = !DILocation(line: 2618, column: 9, scope: !417)
!4379 = !DILocation(line: 2626, column: 20, scope: !431)
!4380 = !DILocation(line: 2626, column: 13, scope: !431)
!4381 = !DILocation(line: 2626, column: 36, scope: !431)
!4382 = !DILocation(line: 2627, column: 20, scope: !431)
!4383 = !{!512, !483, i64 2944}
!4384 = !DILocation(line: 2627, column: 29, scope: !431)
!4385 = !{!4386, !484, i64 524376}
!4386 = !{!"clusterState", !483, i64 0, !481, i64 8, !482, i64 16, !482, i64 20, !483, i64 24, !483, i64 32, !471, i64 40, !471, i64 131112, !471, i64 262184, !471, i64 393256, !483, i64 524328, !484, i64 524336, !482, i64 524344, !482, i64 524348, !482, i64 524352, !481, i64 524360, !482, i64 524368, !484, i64 524376, !483, i64 524384, !484, i64 524392, !482, i64 524400, !481, i64 524408, !482, i64 524416, !471, i64 524424, !471, i64 524504, !484, i64 524584}
!4387 = !DILocation(line: 2627, column: 13, scope: !431)
!4388 = !DILocation(line: 2627, column: 36, scope: !431)
!4389 = !DILocation(line: 2628, column: 13, scope: !431)
!4390 = !DILocation(line: 2630, column: 13, scope: !431)
!4391 = !DILocation(line: 2631, column: 28, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 2630, column: 43)
!4393 = distinct !DILexicalBlock(scope: !431, file: !3, line: 2630, column: 13)
!4394 = !DILocation(line: 2631, column: 13, scope: !4392)
!4395 = !DILocation(line: 2631, column: 26, scope: !4392)
!4396 = !DILocation(line: 2632, column: 42, scope: !4392)
!4397 = !DILocation(line: 2632, column: 57, scope: !4392)
!4398 = !DILocation(line: 2632, column: 13, scope: !4392)
!4399 = !DILocation(line: 2634, column: 13, scope: !4392)
!4400 = !DILocation(line: 2635, column: 9, scope: !4392)
!4401 = !DILocation(line: 2652, column: 23, scope: !417)
!4402 = !DILocation(line: 2613, column: 14, scope: !417)
!4403 = !DILocation(line: 2652, column: 5, scope: !417)
!4404 = !DILocation(line: 2653, column: 17, scope: !417)
!4405 = !DILocation(line: 2614, column: 15, scope: !417)
!4406 = !DILocation(line: 2653, column: 5, scope: !417)
!4407 = !DILocation(line: 2654, column: 29, scope: !434)
!4408 = !DILocation(line: 2654, column: 17, scope: !434)
!4409 = !DILocation(line: 2657, column: 21, scope: !434)
!4410 = !DILocation(line: 2657, column: 31, scope: !434)
!4411 = !DILocation(line: 2657, column: 64, scope: !434)
!4412 = !DILocation(line: 2658, column: 31, scope: !434)
!4413 = !DILocation(line: 2659, column: 21, scope: !434)
!4414 = !DILocation(line: 2659, column: 36, scope: !434)
!4415 = !DILocation(line: 2658, column: 62, scope: !434)
!4416 = !DILocation(line: 2661, column: 13, scope: !434)
!4417 = !DILocation(line: 2662, column: 30, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 2662, column: 17)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 2661, column: 25)
!4420 = distinct !DILexicalBlock(scope: !434, file: !3, line: 2661, column: 13)
!4421 = !DILocation(line: 2662, column: 17, scope: !4418)
!4422 = !DILocation(line: 2665, column: 9, scope: !4419)
!4423 = distinct !{!4423, !4406, !4424}
!4424 = !DILocation(line: 2666, column: 5, scope: !417)
!4425 = !DILocation(line: 2669, column: 9, scope: !438)
!4426 = !DILocation(line: 2669, column: 9, scope: !417)
!4427 = !DILocation(line: 2670, column: 9, scope: !437)
!4428 = !DILocation(line: 2670, column: 18, scope: !437)
!4429 = !DILocation(line: 2673, column: 9, scope: !437)
!4430 = !DILocation(line: 2674, column: 21, scope: !437)
!4431 = !DILocation(line: 2671, column: 19, scope: !437)
!4432 = !DILocation(line: 2674, column: 9, scope: !437)
!4433 = !DILocation(line: 2675, column: 33, scope: !441)
!4434 = !DILocation(line: 2675, column: 21, scope: !441)
!4435 = !DILocation(line: 2677, column: 24, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2677, column: 17)
!4437 = !DILocation(line: 2677, column: 34, scope: !4436)
!4438 = !DILocation(line: 2677, column: 17, scope: !441)
!4439 = distinct !{!4439, !4432, !4440}
!4440 = !DILocation(line: 2685, column: 9, scope: !437)
!4441 = !DILocation(line: 2678, column: 24, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2678, column: 17)
!4443 = !DILocation(line: 2678, column: 30, scope: !4442)
!4444 = !DILocation(line: 2678, column: 17, scope: !441)
!4445 = !DILocation(line: 2679, column: 25, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2679, column: 17)
!4447 = !DILocation(line: 2679, column: 43, scope: !4446)
!4448 = !DILocation(line: 2679, column: 34, scope: !4446)
!4449 = !DILocation(line: 2679, column: 67, scope: !4446)
!4450 = !DILocation(line: 2679, column: 60, scope: !4446)
!4451 = !DILocation(line: 2679, column: 58, scope: !4446)
!4452 = !DILocation(line: 2679, column: 17, scope: !441)
!4453 = !DILocation(line: 2682, column: 21, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 2680, column: 13)
!4455 = !DILocation(line: 2681, column: 17, scope: !4454)
!4456 = !DILocation(line: 2683, column: 17, scope: !4454)
!4457 = !DILocation(line: 2684, column: 13, scope: !4454)
!4458 = !DILocation(line: 2686, column: 5, scope: !438)
!4459 = !DILocation(line: 2694, column: 9, scope: !444)
!4460 = !DILocation(line: 2686, column: 5, scope: !437)
!4461 = !DILocation(line: 2694, column: 35, scope: !444)
!4462 = !DILocation(line: 2694, column: 50, scope: !444)
!4463 = !DILocation(line: 2694, column: 43, scope: !444)
!4464 = !DILocation(line: 2694, column: 40, scope: !444)
!4465 = !DILocation(line: 2695, column: 16, scope: !444)
!4466 = !DILocation(line: 2695, column: 9, scope: !444)
!4467 = !DILocation(line: 2695, column: 39, scope: !444)
!4468 = !DILocation(line: 2695, column: 50, scope: !444)
!4469 = !DILocation(line: 2697, column: 30, scope: !443)
!4470 = !DILocation(line: 2697, column: 48, scope: !443)
!4471 = !DILocation(line: 2697, column: 39, scope: !443)
!4472 = !DILocation(line: 2697, column: 16, scope: !443)
!4473 = !DILocation(line: 2699, column: 18, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !443, file: !3, line: 2699, column: 13)
!4475 = !DILocation(line: 2699, column: 13, scope: !443)
!4476 = !DILocation(line: 1034, column: 5, scope: !1700, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 2715, column: 13, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 2699, column: 52)
!4479 = !DILocation(line: 1035, column: 39, scope: !1700, inlinedAt: !4477)
!4480 = !DILocation(line: 1042, column: 5, scope: !1705, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 2716, column: 13, scope: !4478)
!4482 = !DILocation(line: 1043, column: 40, scope: !1705, inlinedAt: !4481)
!4483 = !DILocation(line: 1044, column: 33, scope: !1705, inlinedAt: !4481)
!4484 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 2717, column: 13, scope: !4478)
!4486 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !4485)
!4487 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !4485)
!4488 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !4485)
!4489 = !DILocation(line: 2721, column: 30, scope: !4478)
!4490 = !{!512, !481, i64 2416}
!4491 = !DILocation(line: 2721, column: 17, scope: !4478)
!4492 = !DILocation(line: 2718, column: 13, scope: !4478)
!4493 = !DILocation(line: 2728, column: 9, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2728, column: 9)
!4495 = !DILocation(line: 2722, column: 9, scope: !4478)
!4496 = !DILocation(line: 2728, column: 35, scope: !4494)
!4497 = !DILocation(line: 2729, column: 16, scope: !4494)
!4498 = !DILocation(line: 2729, column: 26, scope: !4494)
!4499 = !DILocation(line: 2728, column: 40, scope: !4494)
!4500 = !DILocation(line: 2730, column: 9, scope: !4494)
!4501 = !DILocation(line: 2730, column: 50, scope: !4494)
!4502 = !DILocation(line: 2728, column: 9, scope: !417)
!4503 = !DILocation(line: 2373, column: 22, scope: !1592, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 2732, column: 9, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 2731, column: 5)
!4506 = !DILocation(line: 2373, column: 5, scope: !1592, inlinedAt: !4504)
!4507 = !DILocation(line: 2374, column: 24, scope: !1592, inlinedAt: !4504)
!4508 = !DILocation(line: 2374, column: 5, scope: !1592, inlinedAt: !4504)
!4509 = !DILocation(line: 2375, column: 36, scope: !1592, inlinedAt: !4504)
!4510 = !DILocation(line: 2375, column: 34, scope: !1592, inlinedAt: !4504)
!4511 = !DILocation(line: 2733, column: 5, scope: !4505)
!4512 = !DILocation(line: 2741, column: 16, scope: !447)
!4513 = !DILocation(line: 2741, column: 46, scope: !447)
!4514 = !DILocation(line: 2741, column: 36, scope: !447)
!4515 = !DILocation(line: 2742, column: 22, scope: !446)
!4516 = !DILocation(line: 2743, column: 13, scope: !446)
!4517 = !DILocation(line: 2744, column: 13, scope: !446)
!4518 = !DILocation(line: 2746, column: 9, scope: !446)
!4519 = !DILocation(line: 2748, column: 27, scope: !446)
!4520 = !DILocation(line: 2746, column: 18, scope: !446)
!4521 = !DILocation(line: 2748, column: 9, scope: !446)
!4522 = !DILocation(line: 2749, column: 21, scope: !446)
!4523 = !DILocation(line: 2745, column: 19, scope: !446)
!4524 = !DILocation(line: 2749, column: 9, scope: !446)
!4525 = !DILocation(line: 2750, column: 33, scope: !454)
!4526 = !DILocation(line: 2750, column: 21, scope: !454)
!4527 = !DILocation(line: 2751, column: 24, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !454, file: !3, line: 2751, column: 17)
!4529 = !DILocation(line: 2751, column: 34, scope: !4528)
!4530 = !DILocation(line: 2751, column: 17, scope: !454)
!4531 = !DILocation(line: 2752, column: 31, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 2751, column: 68)
!4533 = !DILocation(line: 2752, column: 49, scope: !4532)
!4534 = !DILocation(line: 2752, column: 40, scope: !4532)
!4535 = !DILocation(line: 2742, column: 16, scope: !446)
!4536 = !DILocation(line: 2753, column: 26, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 2753, column: 21)
!4538 = !DILocation(line: 2753, column: 21, scope: !4532)
!4539 = !DILocation(line: 2754, column: 31, scope: !4532)
!4540 = !DILocation(line: 0, scope: !4532)
!4541 = !DILocation(line: 2756, column: 54, scope: !4532)
!4542 = !DILocation(line: 2755, column: 27, scope: !4532)
!4543 = !DILocation(line: 0, scope: !446)
!4544 = distinct !{!4544, !4524, !4545}
!4545 = !DILocation(line: 2758, column: 9, scope: !446)
!4546 = !DILocation(line: 2760, column: 13, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !446, file: !3, line: 2760, column: 13)
!4548 = !DILocation(line: 2760, column: 28, scope: !4547)
!4549 = !DILocation(line: 2761, column: 22, scope: !4547)
!4550 = !DILocation(line: 2761, column: 15, scope: !4547)
!4551 = !DILocation(line: 2761, column: 41, scope: !4547)
!4552 = !DILocation(line: 2762, column: 32, scope: !4547)
!4553 = !DILocation(line: 2762, column: 25, scope: !4547)
!4554 = !DILocation(line: 2762, column: 23, scope: !4547)
!4555 = !DILocation(line: 2760, column: 13, scope: !446)
!4556 = !DILocation(line: 2767, column: 13, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 2763, column: 9)
!4558 = !DILocation(line: 2768, column: 9, scope: !4557)
!4559 = !DILocation(line: 2769, column: 5, scope: !447)
!4560 = !DILocation(line: 2769, column: 5, scope: !446)
!4561 = !DILocation(line: 2305, column: 5, scope: !1397, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 2772, column: 5, scope: !417)
!4563 = !DILocation(line: 2307, column: 9, scope: !1397, inlinedAt: !4562)
!4564 = !DILocation(line: 2309, column: 17, scope: !1408, inlinedAt: !4562)
!4565 = !DILocation(line: 2309, column: 10, scope: !1408, inlinedAt: !4562)
!4566 = !DILocation(line: 2310, column: 17, scope: !1408, inlinedAt: !4562)
!4567 = !DILocation(line: 2310, column: 10, scope: !1408, inlinedAt: !4562)
!4568 = !DILocation(line: 2309, column: 42, scope: !1408, inlinedAt: !4562)
!4569 = !DILocation(line: 2312, column: 23, scope: !1397, inlinedAt: !4562)
!4570 = !DILocation(line: 2305, column: 14, scope: !1397, inlinedAt: !4562)
!4571 = !DILocation(line: 2312, column: 5, scope: !1397, inlinedAt: !4562)
!4572 = !DILocation(line: 2313, column: 17, scope: !1397, inlinedAt: !4562)
!4573 = !DILocation(line: 2306, column: 15, scope: !1397, inlinedAt: !4562)
!4574 = !DILocation(line: 2313, column: 5, scope: !1397, inlinedAt: !4562)
!4575 = !DILocation(line: 2314, column: 29, scope: !1403, inlinedAt: !4562)
!4576 = !DILocation(line: 2314, column: 17, scope: !1403, inlinedAt: !4562)
!4577 = !DILocation(line: 2317, column: 20, scope: !1423, inlinedAt: !4562)
!4578 = !DILocation(line: 2317, column: 30, scope: !1423, inlinedAt: !4562)
!4579 = !DILocation(line: 2317, column: 52, scope: !1423, inlinedAt: !4562)
!4580 = !DILocation(line: 2315, column: 29, scope: !1403, inlinedAt: !4562)
!4581 = !DILocation(line: 2315, column: 47, scope: !1403, inlinedAt: !4562)
!4582 = !DILocation(line: 2315, column: 38, scope: !1403, inlinedAt: !4562)
!4583 = !DILocation(line: 2315, column: 16, scope: !1403, inlinedAt: !4562)
!4584 = !DILocation(line: 2318, column: 27, scope: !1423, inlinedAt: !4562)
!4585 = !DILocation(line: 2318, column: 20, scope: !1423, inlinedAt: !4562)
!4586 = !DILocation(line: 2318, column: 17, scope: !1423, inlinedAt: !4562)
!4587 = !DILocation(line: 2317, column: 13, scope: !1403, inlinedAt: !4562)
!4588 = !DILocation(line: 0, scope: !1397, inlinedAt: !4562)
!4589 = !DILocation(line: 0, scope: !1423, inlinedAt: !4562)
!4590 = !DILocation(line: 2320, column: 35, scope: !1397, inlinedAt: !4562)
!4591 = !DILocation(line: 2321, column: 1, scope: !1397, inlinedAt: !4562)
!4592 = !DILocation(line: 2773, column: 27, scope: !417)
!4593 = !DILocation(line: 2774, column: 1, scope: !417)
