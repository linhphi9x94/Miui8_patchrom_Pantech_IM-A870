.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1197
    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1177
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1178
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1179
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    .line 1180
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1179
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1182
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1183
    return v4

    .line 1185
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1186
    return v5
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1190
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1191
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1192
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1194
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1189
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 60
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1210
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1212
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1213
    .local v39, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 1218
    .local v29, "idx":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_2

    .line 1221
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1224
    return-void

    .line 1228
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1231
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1234
    if-nez v29, :cond_0

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1242
    .end local v29    # "idx":I
    .end local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1245
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_5

    .line 1249
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Cannot bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "params$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1252
    .restart local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 1254
    .end local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1256
    .end local v41    # "params$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Waiting to connect to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1258
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1260
    .restart local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v39, :cond_0

    .line 1261
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1270
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 1271
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1274
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1275
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v52

    .line 1278
    .local v52, "ubmsg":Landroid/os/Message;
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1286
    .end local v52    # "ubmsg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1292
    .end local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_9
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Empty queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1298
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_a

    .line 1300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1302
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1303
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1306
    .restart local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 1308
    .end local v39    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1317
    .end local v41    # "params$iterator":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 1318
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 1321
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 1323
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1334
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1340
    :pswitch_6
    const/16 v49, 0x0

    .line 1342
    .local v49, "size":I
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1344
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_d

    monitor-exit v3

    .line 1345
    return-void

    .line 1347
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v49

    .line 1348
    if-gtz v49, :cond_e

    monitor-exit v3

    .line 1350
    return-void

    .line 1352
    :cond_e
    :try_start_2
    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1353
    .local v38, "packages":[Ljava/lang/String;
    move/from16 v0, v49

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 1354
    .local v22, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v49

    new-array v0, v0, [I

    move-object/from16 v53, v0

    .line 1355
    .local v53, "uids":[I
    const/16 v28, 0x0

    .line 1357
    .local v28, "i":I
    const/16 v33, 0x0

    .local v33, "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v2

    move/from16 v0, v33

    if-ge v0, v2, :cond_11

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v37

    .line 1360
    .local v37, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 1362
    .local v31, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v0, v28

    move/from16 v1, v49

    if-ge v0, v1, :cond_10

    .line 1363
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 1364
    .local v27, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v38, v28

    .line 1365
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, v22, v28

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/pm/PackageSetting;

    .line 1367
    .local v43, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v43, :cond_f

    .line 1368
    move-object/from16 v0, v43

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v37

    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1367
    :goto_5
    aput v2, v53, v28

    .line 1370
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 1369
    :cond_f
    const/4 v2, -0x1

    goto :goto_5

    .line 1357
    .end local v27    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v43    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_10
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 1373
    .end local v31    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v37    # "packageUserId":I
    :cond_11
    move/from16 v49, v28

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1377
    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    move/from16 v1, v49

    if-ge v0, v1, :cond_12

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v38, v28

    aget-object v5, v22, v28

    aget v7, v53, v28

    const/4 v8, 0x1

    invoke-static {v2, v3, v8, v5, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap37(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1377
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 1343
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "i":I
    .end local v33    # "n":I
    .end local v38    # "packages":[Ljava/lang/String;
    .end local v53    # "uids":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1380
    .restart local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28    # "i":I
    .restart local v33    # "n":I
    .restart local v38    # "packages":[Ljava/lang/String;
    .restart local v53    # "uids":[I
    :cond_12
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1384
    .end local v22    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "i":I
    .end local v33    # "n":I
    .end local v38    # "packages":[Ljava/lang/String;
    .end local v49    # "size":I
    .end local v53    # "uids":[I
    :pswitch_7
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1385
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1386
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    .line 1387
    .local v56, "userId":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_13

    const/16 v18, 0x1

    .line 1388
    .local v18, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1389
    const/4 v2, -0x1

    move/from16 v0, v56

    if-ne v0, v2, :cond_14

    .line 1390
    :try_start_3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v58

    .line 1391
    .local v58, "users":[I
    const/4 v2, 0x0

    move-object/from16 v0, v58

    array-length v5, v0

    :goto_8
    if-ge v2, v5, :cond_15

    aget v55, v58, v2

    .line 1392
    .local v55, "user":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1393
    new-instance v8, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v55

    move/from16 v1, v18

    invoke-direct {v8, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1392
    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1391
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1387
    .end local v18    # "andCode":Z
    .end local v55    # "user":I
    .end local v58    # "users":[I
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "andCode":Z
    goto :goto_7

    .line 1396
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1397
    new-instance v5, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v56

    move/from16 v1, v18

    invoke-direct {v5, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    .line 1396
    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_15
    monitor-exit v3

    .line 1400
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 1388
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1405
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v18    # "andCode":Z
    .end local v56    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1406
    .local v23, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 1407
    const/16 v24, 0x0

    .line 1409
    .local v24, "deleteOld":Z
    if-eqz v23, :cond_2c

    .line 1410
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    .line 1411
    .local v19, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v45, v0

    .line 1413
    .local v45, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v45

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 1414
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1415
    .restart local v4    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v7}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    .line 1416
    new-instance v6, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1417
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    move-object/from16 v0, v45

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_16

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1424
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1423
    invoke-static {v2, v3, v5, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap25(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V

    .line 1431
    :cond_16
    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 1432
    .local v17, "updateUsers":[I
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v2, :cond_17

    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    if-nez v2, :cond_20

    .line 1433
    :cond_17
    move-object/from16 v0, v45

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .line 1460
    .local v9, "firstUsers":[I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    .line 1461
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1460
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1462
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_24

    const/16 v54, 0x1

    .line 1463
    .local v54, "update":Z
    :goto_9
    if-eqz v54, :cond_19

    .line 1464
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1466
    :cond_19
    const/16 v21, 0x0

    .line 1467
    .local v21, "category":Ljava/lang/String;
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v2, :cond_1a

    .line 1468
    const-string/jumbo v21, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 1470
    .end local v21    # "category":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "android.intent.action.PACKAGE_ADDED"

    .line 1471
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v14, v6

    .line 1470
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1472
    if-eqz v54, :cond_1c

    .line 1473
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "android.intent.action.PACKAGE_REPLACED"

    .line 1474
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    move-object v14, v6

    .line 1473
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 1476
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v15, v4

    .line 1475
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1479
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1484
    :cond_1b
    const/4 v2, 0x1

    new-array v14, v2, [I

    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    aput v2, v14, v3

    .line 1485
    .local v14, "uidArray":[I
    new-instance v13, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1486
    .local v13, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 1488
    const/4 v15, 0x0

    .line 1487
    invoke-static/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 1492
    .end local v13    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "uidArray":[I
    :cond_1c
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mIsLegacyIconPackApk:Z

    if-eqz v2, :cond_1e

    .line 1493
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1495
    :cond_1e
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_1f

    .line 1497
    const/16 v24, 0x1

    .line 1502
    :cond_1f
    array-length v2, v9

    if-lez v2, :cond_26

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    aget v3, v9, v3

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1507
    const/4 v2, 0x0

    :try_start_4
    array-length v5, v9

    :goto_a
    if-ge v2, v5, :cond_25

    aget v56, v9, v2

    .line 1508
    .restart local v56    # "userId":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v8, 0x0

    move/from16 v0, v56

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/Settings;->setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1507
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1435
    .end local v9    # "firstUsers":[I
    .end local v54    # "update":Z
    .end local v56    # "userId":I
    :cond_20
    const/4 v2, 0x0

    new-array v9, v2, [I

    .line 1436
    .restart local v9    # "firstUsers":[I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_b
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v2, v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_18

    .line 1437
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v55, v2, v28

    .line 1438
    .restart local v55    # "user":I
    const/16 v30, 0x1

    .line 1439
    .local v30, "isNew":Z
    const/16 v32, 0x0

    .local v32, "j":I
    :goto_c
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v2, v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_21

    .line 1440
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v2, v2, v32

    move/from16 v0, v55

    if-ne v2, v0, :cond_22

    .line 1441
    const/16 v30, 0x0

    .line 1445
    :cond_21
    if-eqz v30, :cond_23

    .line 1446
    array-length v2, v9

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v34, v0

    .line 1448
    .local v34, "newFirst":[I
    array-length v2, v9

    .line 1447
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-static {v9, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1449
    array-length v2, v9

    aput v55, v34, v2

    .line 1450
    move-object/from16 v9, v34

    .line 1436
    .end local v34    # "newFirst":[I
    :goto_d
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 1439
    :cond_22
    add-int/lit8 v32, v32, 0x1

    goto :goto_c

    .line 1452
    :cond_23
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v35, v0

    .line 1454
    .local v35, "newUpdate":[I
    move-object/from16 v0, v17

    array-length v2, v0

    .line 1453
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1455
    move-object/from16 v0, v17

    array-length v2, v0

    aput v55, v35, v2

    .line 1456
    move-object/from16 v17, v35

    goto :goto_d

    .line 1462
    .end local v28    # "i":I
    .end local v30    # "isNew":Z
    .end local v32    # "j":I
    .end local v35    # "newUpdate":[I
    .end local v55    # "user":I
    :cond_24
    const/16 v54, 0x0

    .restart local v54    # "update":Z
    goto/16 :goto_9

    :cond_25
    monitor-exit v3

    .line 1513
    :cond_26
    if-nez v54, :cond_27

    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1526
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap14(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    .line 1525
    const/16 v3, 0xc26

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1529
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v9    # "firstUsers":[I
    .end local v17    # "updateUsers":[I
    .end local v54    # "update":Z
    :cond_28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1531
    if-eqz v24, :cond_29

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1533
    :try_start_5
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v3

    .line 1536
    :cond_29
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v2, :cond_0

    .line 1538
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v6

    .line 1539
    .restart local v6    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v45

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 1540
    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 1539
    invoke-interface {v2, v3, v5, v7, v6}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1541
    .end local v6    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v26

    .line 1542
    .local v26, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1506
    .end local v26    # "e":Landroid/os/RemoteException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v9    # "firstUsers":[I
    .restart local v17    # "updateUsers":[I
    .restart local v54    # "update":Z
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1515
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1516
    const-string/jumbo v3, "privacy_guard_default"

    .line 1517
    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 1514
    invoke-static {v2, v3, v5, v7}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1517
    const/4 v3, 0x1

    .line 1514
    if-ne v2, v3, :cond_2b

    const/16 v42, 0x1

    .line 1518
    .local v42, "privacyGuard":Z
    :goto_f
    if-eqz v42, :cond_27

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    .line 1520
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1521
    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    .line 1519
    invoke-virtual {v2, v3, v5, v7}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    goto/16 :goto_e

    .line 1514
    .end local v42    # "privacyGuard":Z
    :cond_2b
    const/16 v42, 0x0

    .restart local v42    # "privacyGuard":Z
    goto :goto_f

    .line 1532
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v9    # "firstUsers":[I
    .end local v17    # "updateUsers":[I
    .end local v42    # "privacyGuard":Z
    .end local v54    # "update":Z
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1546
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v45    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2c
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bogus post-install token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    .end local v23    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v24    # "deleteOld":Z
    :pswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    const/16 v44, 0x1

    .line 1552
    .local v44, "reportStatus":Z
    :goto_10
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    const/16 v25, 0x1

    .line 1554
    .local v25, "doGc":Z
    :goto_11
    if-eqz v25, :cond_2d

    .line 1556
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1558
    :cond_2d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2e

    .line 1560
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Set;

    .line 1563
    .local v20, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap40(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1565
    .end local v20    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_2e
    if-eqz v44, :cond_0

    .line 1568
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1569
    :catch_1
    move-exception v26

    .line 1570
    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "MountService not running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    .end local v25    # "doGc":Z
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v44    # "reportStatus":Z
    :cond_2f
    const/16 v44, 0x0

    .restart local v44    # "reportStatus":Z
    goto :goto_10

    .line 1552
    :cond_30
    const/16 v25, 0x0

    .restart local v25    # "doGc":Z
    goto :goto_11

    .line 1575
    .end local v25    # "doGc":Z
    .end local v44    # "reportStatus":Z
    :pswitch_a
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1577
    const/16 v2, 0xd

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1578
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v3

    .line 1582
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1576
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1585
    :pswitch_b
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1587
    const/16 v2, 0xe

    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .local v57, "userId$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v56

    .line 1589
    .restart local v56    # "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_12

    .line 1586
    .end local v56    # "userId":I
    .end local v57    # "userId$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1591
    .restart local v57    # "userId$iterator":Ljava/util/Iterator;
    :cond_31
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit v3

    .line 1593
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1596
    .end local v57    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .line 1597
    .local v59, "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .line 1599
    .local v51, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v51, :cond_0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1600
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .line 1601
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v36

    .line 1603
    .local v36, "originUri":Landroid/net/Uri;
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Verification timed out for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1606
    const/16 v48, -0x16

    .line 1608
    .local v48, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 1609
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Continuing with installation of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1611
    const/4 v3, 0x2

    .line 1610
    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1614
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1613
    const/4 v5, 0x1

    .line 1612
    move/from16 v0, v59

    move-object/from16 v1, v36

    invoke-static {v2, v0, v1, v5, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1616
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    move-result v48

    .line 1626
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v48

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1617
    :catch_2
    move-exception v26

    .line 1618
    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1621
    .end local v26    # "e":Landroid/os/RemoteException;
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1623
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1622
    const/4 v5, -0x1

    .line 1621
    move/from16 v0, v59

    move-object/from16 v1, v36

    invoke-static {v2, v0, v1, v5, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_13

    .line 1632
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v36    # "originUri":Landroid/net/Uri;
    .end local v48    # "ret":I
    .end local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v59    # "verificationId":I
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .line 1634
    .restart local v59    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .line 1635
    .restart local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v51, :cond_33

    .line 1636
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1640
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1642
    .local v47, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v47

    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1644
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1647
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v19

    .line 1648
    .restart local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v36

    .line 1651
    .restart local v36    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1652
    const/16 v48, -0x6e

    .line 1653
    .restart local v48    # "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1654
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 1653
    move/from16 v0, v59

    move-object/from16 v1, v36

    invoke-static {v2, v0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1656
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    move-result v48

    .line 1664
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    move/from16 v1, v48

    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1657
    :catch_3
    move-exception v26

    .line 1658
    .restart local v26    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1661
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v48    # "ret":I
    :cond_34
    const/16 v48, -0x16

    .restart local v48    # "ret":I
    goto :goto_14

    .line 1672
    .end local v19    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v36    # "originUri":Landroid/net/Uri;
    .end local v47    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v48    # "ret":I
    .end local v51    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v59    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1673
    .local v40, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v40

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v40

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 1674
    move-object/from16 v0, v40

    iget-boolean v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1673
    invoke-static {v2, v3, v5, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap44(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_0

    .line 1678
    .end local v40    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    .line 1680
    .restart local v59    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v59

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1682
    .local v50, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v50, :cond_35

    .line 1683
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1684
    const-string/jumbo v5, " received"

    .line 1683
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1688
    :cond_35
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v56

    .line 1695
    .restart local v56    # "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1697
    .local v46, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v46

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1705
    move-object/from16 v0, v46

    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    .line 1710
    :cond_36
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v2

    move/from16 v0, v59

    invoke-interface {v2, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 1203
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1201
    return-void

    .line 1204
    :catchall_0
    move-exception v0

    .line 1205
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1204
    throw v0
.end method
