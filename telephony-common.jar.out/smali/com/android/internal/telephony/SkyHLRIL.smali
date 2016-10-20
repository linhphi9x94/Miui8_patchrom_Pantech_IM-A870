.class public Lcom/android/internal/telephony/SkyHLRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SkyHLRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SkyHLRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string/jumbo v1, "getRadioCapability: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SkyHLRIL;->riljLog(Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyHLRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .line 53
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 54
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .end local v0    # "ret":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "response":I
    packed-switch v1, :pswitch_data_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 72
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "ret":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_1

    .line 60
    .end local v2    # "ret":Ljava/lang/Object;
    :goto_0
    return-void

    .line 76
    .restart local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SkyHLRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 79
    const-string/jumbo v3, "ril.socket.reset"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 83
    :cond_0
    const-string/jumbo v3, "ril.socket.reset"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 85
    iget v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/SkyHLRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 86
    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    aget v3, v2, v6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SkyHLRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x40a
        :pswitch_0
    .end packed-switch

    .line 74
    :pswitch_data_1
    .packed-switch 0x40a
        :pswitch_1
    .end packed-switch
.end method
