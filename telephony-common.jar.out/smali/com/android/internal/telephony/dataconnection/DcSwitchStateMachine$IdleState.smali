.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 97
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "DctController is not ready"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 164
    const/4 v4, 0x0

    .line 167
    .local v4, "retVal":Z
    :goto_0
    return v4

    .line 109
    .end local v4    # "retVal":Z
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 110
    .local v1, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 111
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->responseMessage:Landroid/os/Message;

    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-set2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)Landroid/os/Message;

    .line 112
    const-string/jumbo v6, "DcSwitchStateMachine.IdleState: REQ_CONNECT"

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IdleState: REQ_CONNECT, apnRequest="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 114
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 115
    const/4 v4, 0x1

    .line 116
    .restart local v4    # "retVal":Z
    goto :goto_0

    .line 120
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v1    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v4    # "retVal":Z
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v7, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 125
    const/4 v4, 0x1

    .line 126
    .restart local v4    # "retVal":Z
    goto :goto_0

    .line 131
    .end local v4    # "retVal":Z
    :sswitch_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 132
    .local v5, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 133
    .local v3, "ddsSubId":I
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 136
    .local v2, "ddsPhoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v7, "IdleState: EVENT_DATA_ATTACHED"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 141
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v7, "IdleState: DDS sub reported ATTACHed in IDLE state"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 149
    :cond_0
    const/4 v4, 0x1

    .line 150
    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .line 154
    .end local v2    # "ddsPhoneId":I
    .end local v3    # "ddsSubId":I
    .end local v4    # "retVal":Z
    .end local v5    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v7, "IdleState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 156
    const/4 v4, 0x1

    .line 157
    .restart local v4    # "retVal":Z
    goto/16 :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_3
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
        0x44007 -> :sswitch_2
    .end sparse-switch
.end method
