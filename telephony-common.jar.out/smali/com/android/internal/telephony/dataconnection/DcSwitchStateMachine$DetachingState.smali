.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetachingState"
.end annotation


# instance fields
.field private mCurrentDisallowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 431
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "DetachingState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 438
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 439
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 438
    const v4, 0x43003

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 435
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 446
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 495
    const/4 v3, 0x0

    .line 498
    .local v3, "retVal":Z
    :goto_0
    return v3

    .line 448
    .end local v3    # "retVal":Z
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;

    .line 449
    .local v2, "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 450
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v4, "DcSwitchStateMachine.DetachingState: REQ_CONNECT"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DetachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 454
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 455
    const/4 v3, 0x1

    .line 456
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 461
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v2    # "connectInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
    .end local v3    # "retVal":Z
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v5, "DetachingState: EVENT_DATA_DETACHED"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 464
    const/4 v3, 0x1

    .line 465
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 468
    .end local v3    # "retVal":Z
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 469
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_1

    .line 470
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_DATA_DISALLOWED ignored arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 471
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_1
    const/4 v3, 0x1

    .line 480
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 472
    .end local v3    # "retVal":Z
    :cond_1
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_DATA_DISALLOWED failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 484
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v5, "DetachingState: REQ_DISCONNECT_ALL, already detaching"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 486
    const/4 v3, 0x1

    .line 487
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x43003 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_3
        0x44008 -> :sswitch_1
    .end sparse-switch
.end method
