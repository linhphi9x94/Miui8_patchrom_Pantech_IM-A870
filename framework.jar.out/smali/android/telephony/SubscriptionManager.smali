.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final USER_NETWORK_MODE:Ljava/lang/String; = "user_network_mode"

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 419
    return-void
.end method

.method public static activateSubId(I)V
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1157
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->activateSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public static deactivateSubId(I)V
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivateSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1167
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->deactivateSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    const-string/jumbo v0, "telephony_subscription_service"

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1344
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1347
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1352
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    return p2
.end method

.method public static getDefaultDataSubId()I
    .locals 4

    .prologue
    .line 1042
    const/4 v2, -0x1

    .line 1045
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1046
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1047
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1054
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 1049
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSmsSubId()I
    .locals 4

    .prologue
    .line 1002
    const/4 v2, -0x1

    .line 1005
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1006
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1007
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1014
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 1009
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultSubId()I
    .locals 4

    .prologue
    .line 940
    const/4 v2, -0x1

    .line 943
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 944
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 945
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 952
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 947
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    .prologue
    .line 992
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 4

    .prologue
    .line 957
    const/4 v2, -0x1

    .line 960
    .local v2, "subId":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 961
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 962
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 969
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 964
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static getISubInfo()Lcom/android/internal/telephony/ISub;
    .locals 1

    .prologue
    .line 1197
    const-string/jumbo v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1365
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1368
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1373
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return p2
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 906
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    const/4 v3, -0x1

    return v3

    .line 913
    :cond_0
    const/4 v2, -0x1

    .line 916
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 917
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 918
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 925
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    .line 920
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1385
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1387
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1388
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1389
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1390
    if-eqz v4, :cond_0

    .line 1391
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 1392
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1394
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1395
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1396
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1397
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .locals 5
    .param p0, "slotIdx"    # I

    .prologue
    .line 1281
    const/4 v2, 0x0

    .line 1284
    .local v2, "simState":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1285
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1286
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1290
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimStateForSubscriber: simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " slotIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1291
    return v2

    .line 1288
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 862
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 868
    :cond_0
    const/4 v2, -0x1

    .line 871
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 872
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 873
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 879
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    .line 875
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSubId(I)[I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 885
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 886
    const-string/jumbo v3, "[getSubId]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 887
    return-object v4

    .line 890
    :cond_0
    const/4 v2, 0x0

    .line 893
    .local v2, "subId":[I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 894
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 895
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 901
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_1
    :goto_0
    return-object v2

    .line 897
    .restart local v2    # "subId":[I
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getSubState(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1177
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1321
    const/4 v2, 0x0

    .line 1323
    .local v2, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1324
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-interface {v1, p0, p1, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1331
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "resultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1328
    .restart local v2    # "resultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1140
    if-ltz p0, :cond_0

    const v1, 0x7ffffffe

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1150
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidSlotId(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1145
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1131
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string/jumbo v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1202
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1203
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1204
    aget v1, v0, v2

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1201
    :goto_0
    return-void

    .line 1206
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1213
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1217
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    return-void
.end method

.method public static setSubState(II)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "subState"    # I

    .prologue
    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubState sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1187
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getISubInfo()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ISub;->setSubState(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 1303
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1304
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1305
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 446
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    .line 454
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 456
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    .line 457
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 446
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 703
    if-nez p1, :cond_0

    .line 704
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 706
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    const-string/jumbo v2, "[addSubscriptionInfoRecord]- invalid slotId"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 711
    :cond_1
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 712
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_2

    .line 714
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    return-object v3

    .line 716
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1097
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    return v1

    .line 1100
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    return v1

    .line 1103
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    return v1

    .line 1106
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 3

    .prologue
    .line 1117
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1118
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1119
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearSubscriptionInfo()V
    .locals 3

    .prologue
    .line 1083
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1084
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1085
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 4

    .prologue
    .line 1226
    const/4 v2, 0x0

    .line 1229
    .local v2, "subId":[I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1230
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1231
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1237
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subId":[I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1238
    const/4 v3, 0x0

    new-array v2, v3, [I

    .line 1241
    :cond_1
    return-object v2

    .line 1233
    .restart local v2    # "subId":[I
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 497
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    return-object v4

    .line 504
    :cond_0
    const/4 v2, 0x0

    .line 507
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 508
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 509
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 515
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 511
    .restart local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 4

    .prologue
    .line 660
    const/4 v2, 0x0

    .line 663
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 664
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 665
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 671
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 667
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 4

    .prologue
    .line 680
    const/4 v2, 0x0

    .line 683
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 684
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 685
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 691
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 687
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 527
    if-nez p1, :cond_0

    .line 528
    const-string/jumbo v3, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 529
    return-object v4

    .line 532
    :cond_0
    const/4 v2, 0x0

    .line 535
    .local v2, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 536
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 537
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 543
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 539
    .restart local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "slotIdx"    # I

    .prologue
    const/4 v4, 0x0

    .line 553
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    const-string/jumbo v3, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 555
    return-object v4

    .line 558
    :cond_0
    const/4 v2, 0x0

    .line 561
    .local v2, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 562
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 564
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 570
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-object v2

    .line 566
    .restart local v2    # "result":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    const/4 v2, 0x0

    .line 622
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 623
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 624
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 629
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 626
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 4

    .prologue
    .line 640
    const/4 v2, 0x0

    .line 643
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 644
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 645
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 651
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 647
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    const/4 v2, 0x0

    .line 584
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 585
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 586
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 592
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    :cond_1
    return-object v2

    .line 588
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 1077
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1032
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1407
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1408
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1409
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1411
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v0

    .line 1413
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1255
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1256
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 1258
    return v1

    .line 1260
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 472
    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v3, "telephony.registry"

    .line 480
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 482
    .local v2, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v2, :cond_0

    .line 483
    iget-object v3, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v2    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 472
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown>"

    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setDataRoaming(II)I
    .locals 4
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 836
    if-ltz p1, :cond_1

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 841
    const/4 v2, 0x0

    .line 844
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 845
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 846
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 852
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 837
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDataRoaming]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 838
    const/4 v3, -0x1

    return v3

    .line 848
    .restart local v2    # "result":I
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1061
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1062
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1063
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1021
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1022
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1023
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 976
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 977
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 978
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 762
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 779
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 780
    const-string/jumbo v3, "[setDisplayName]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 781
    const/4 v3, -0x1

    return v3

    .line 784
    :cond_0
    const/4 v2, 0x0

    .line 787
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 788
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 789
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 795
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    .line 791
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 807
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const/4 v2, 0x0

    .line 815
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 816
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 817
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 823
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v2

    .line 808
    .end local v2    # "result":I
    :cond_1
    const-string/jumbo v3, "[setDisplayNumber]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 809
    const/4 v3, -0x1

    return v3

    .line 819
    .restart local v2    # "result":I
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 4
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 734
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 735
    const-string/jumbo v3, "[setIconTint]- fail"

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 736
    const/4 v3, -0x1

    return v3

    .line 739
    :cond_0
    const/4 v2, 0x0

    .line 742
    .local v2, "result":I
    :try_start_0
    const-string/jumbo v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 743
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 750
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v2

    .line 746
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
