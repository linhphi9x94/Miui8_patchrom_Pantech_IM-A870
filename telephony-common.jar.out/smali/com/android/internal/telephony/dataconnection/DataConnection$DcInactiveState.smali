.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcInactiveState: enter() mTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcInactiveState: enter notifyConnectCompleted +ALL failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1370
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 1369
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcInactiveState: enter notifyDisconnectCompleted +ALL failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1377
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcInactiveState: enter notifyAllDisconnectCompleted failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1384
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 1383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1390
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1392
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1363
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1396
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1403
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1441
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DcInactiveState nothandled msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1443
    const/4 v1, 0x0

    .line 1446
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 1406
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "DcInactiveState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1408
    const/4 v1, 0x1

    .line 1409
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 1412
    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "DcInactiveState: mag.what=EVENT_CONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1414
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1416
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1424
    :goto_1
    const/4 v1, 0x1

    .line 1425
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 1419
    .end local v1    # "retVal":Z
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "DcInactiveState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1421
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto :goto_1

    .line 1428
    .end local v0    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "DcInactiveState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1429
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 1430
    const/4 v1, 0x1

    .line 1431
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 1434
    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v3, "DcInactiveState: msg.what=EVENT_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    .line 1436
    const/4 v1, 0x1

    .line 1437
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 1403
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x40004 -> :sswitch_2
        0x40006 -> :sswitch_3
        0x4100c -> :sswitch_0
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 2
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v1, "DcInactiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1343
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1344
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1340
    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v1, "DcInactiveState: setEnterNoticationParams dp"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1348
    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 2
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    const/4 v1, 0x0

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1356
    return-void
.end method
