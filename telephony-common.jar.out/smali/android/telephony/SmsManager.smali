.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CELL_BROADCAST_RAN_TYPE_CDMA:I = 0x1

.field public static final CELL_BROADCAST_RAN_TYPE_GSM:I = 0x0

.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field private static final SMS_PICK:I = 0x2

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/telephony/SmsManager;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Landroid/telephony/SmsManager;-><init>(I)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 251
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput p1, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 789
    return-void
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 1149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1150
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1153
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1154
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    .line 1155
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v7

    .line 1154
    invoke-static {v5, v6, v7}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1156
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1157
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1162
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1219
    const/4 v2, 0x0

    .line 1221
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1222
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1225
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1223
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1224
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 855
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 847
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 848
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 849
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_0
    return-object v0
.end method

.method public static getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "config"    # Landroid/os/BaseBundle;

    .prologue
    .line 1803
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1804
    .local v0, "filtered":Landroid/os/Bundle;
    const-string/jumbo v1, "enabledTransID"

    .line 1805
    const-string/jumbo v2, "enabledTransID"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1804
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1806
    const-string/jumbo v1, "enabledMMS"

    const-string/jumbo v2, "enabledMMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1807
    const-string/jumbo v1, "enableGroupMms"

    .line 1808
    const-string/jumbo v2, "enableGroupMms"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1807
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1809
    const-string/jumbo v1, "enabledNotifyWapMMSC"

    .line 1810
    const-string/jumbo v2, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1809
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1811
    const-string/jumbo v1, "aliasEnabled"

    const-string/jumbo v2, "aliasEnabled"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1812
    const-string/jumbo v1, "allowAttachAudio"

    .line 1813
    const-string/jumbo v2, "allowAttachAudio"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1812
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1814
    const-string/jumbo v1, "enableMultipartSMS"

    .line 1815
    const-string/jumbo v2, "enableMultipartSMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1814
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1816
    const-string/jumbo v1, "enableSMSDeliveryReports"

    .line 1817
    const-string/jumbo v2, "enableSMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1816
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1818
    const-string/jumbo v1, "supportMmsContentDisposition"

    .line 1819
    const-string/jumbo v2, "supportMmsContentDisposition"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1818
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1820
    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    .line 1821
    const-string/jumbo v2, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1820
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1822
    const-string/jumbo v1, "enableMMSReadReports"

    .line 1823
    const-string/jumbo v2, "enableMMSReadReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1822
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1824
    const-string/jumbo v1, "enableMMSDeliveryReports"

    .line 1825
    const-string/jumbo v2, "enableMMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1824
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1826
    const-string/jumbo v1, "maxMessageSize"

    const-string/jumbo v2, "maxMessageSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1827
    const-string/jumbo v1, "maxImageWidth"

    const-string/jumbo v2, "maxImageWidth"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1828
    const-string/jumbo v1, "maxImageHeight"

    const-string/jumbo v2, "maxImageHeight"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1829
    const-string/jumbo v1, "recipientLimit"

    const-string/jumbo v2, "recipientLimit"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1830
    const-string/jumbo v1, "aliasMinChars"

    const-string/jumbo v2, "aliasMinChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1831
    const-string/jumbo v1, "aliasMaxChars"

    const-string/jumbo v2, "aliasMaxChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1832
    const-string/jumbo v1, "smsToMmsTextThreshold"

    .line 1833
    const-string/jumbo v2, "smsToMmsTextThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1832
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1834
    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    .line 1835
    const-string/jumbo v2, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1834
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    const-string/jumbo v1, "maxMessageTextSize"

    .line 1837
    const-string/jumbo v2, "maxMessageTextSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1836
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    const-string/jumbo v1, "maxSubjectLength"

    .line 1839
    const-string/jumbo v2, "maxSubjectLength"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1838
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1840
    const-string/jumbo v1, "httpSocketTimeout"

    .line 1841
    const-string/jumbo v2, "httpSocketTimeout"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1840
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1842
    const-string/jumbo v1, "uaProfTagName"

    .line 1843
    const-string/jumbo v2, "uaProfTagName"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1842
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string/jumbo v1, "userAgent"

    const-string/jumbo v2, "userAgent"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string/jumbo v1, "uaProfUrl"

    const-string/jumbo v2, "uaProfUrl"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string/jumbo v1, "httpParams"

    const-string/jumbo v2, "httpParams"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string/jumbo v1, "emailGatewayNumber"

    .line 1848
    const-string/jumbo v2, "emailGatewayNumber"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1847
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string/jumbo v1, "naiSuffix"

    const-string/jumbo v2, "naiSuffix"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string/jumbo v1, "config_cellBroadcastAppLinks"

    .line 1851
    const-string/jumbo v2, "config_cellBroadcastAppLinks"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1850
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1852
    const-string/jumbo v1, "supportHttpCharsetHeader"

    .line 1853
    const-string/jumbo v2, "supportHttpCharsetHeader"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1852
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1854
    return-object v0
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 779
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 780
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 781
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 782
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0}, Landroid/telephony/SmsManager;-><init>(I)V

    .line 783
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 785
    return-object v0

    .line 779
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessageForCarrierApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 541
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 546
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 547
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 548
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    .line 547
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 555
    :cond_3
    const/4 v5, 0x0

    .line 556
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 557
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 558
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 560
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 561
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 563
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 551
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 311
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1593
    if-nez p1, :cond_0

    .line 1594
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Uri contentUri null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1597
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1598
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1599
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1602
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1605
    :cond_1
    return-object v3
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1572
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1573
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1574
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1576
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1579
    :cond_0
    return-object v3
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 1549
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1550
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1551
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1554
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1557
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 873
    const/16 v1, 0x62

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 874
    const/4 v7, 0x0

    .line 876
    .local v7, "success":Z
    if-nez p2, :cond_0

    .line 877
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 881
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 883
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    .line 882
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 890
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    .line 886
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    .prologue
    .line 905
    const/16 v1, 0x63

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 906
    const/4 v7, 0x0

    .line 907
    .local v7, "success":Z
    const/16 v1, 0xaf

    new-array v5, v1, [B

    .line 908
    .local v5, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 911
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 912
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 914
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 915
    const/4 v4, 0x0

    move v3, p1

    .line 913
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 921
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_0
    :goto_0
    return v7

    .line 917
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 1497
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1498
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1500
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1499
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1502
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1505
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1472
    if-nez p1, :cond_0

    .line 1473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1476
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1477
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1478
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1480
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1483
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1039
    const/4 v2, 0x0

    .line 1042
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1043
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1044
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1051
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1047
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1120
    const/4 v2, 0x0

    .line 1122
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1126
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1127
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1128
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1135
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1131
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1362
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty MMS location URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    :cond_0
    if-nez p3, :cond_1

    .line 1366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_1
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1370
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_2

    .line 1371
    return-void

    .line 1374
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1373
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1003
    const/4 v2, 0x0

    .line 1006
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1007
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1008
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1015
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1011
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1078
    const/4 v2, 0x0

    .line 1080
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1081
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1084
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1085
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1086
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1093
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1089
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    const/4 v2, 0x0

    .line 969
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 970
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 973
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 971
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 979
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 975
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAutoPersisting()Z
    .locals 3

    .prologue
    .line 1764
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1765
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1766
    invoke-interface {v1}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1768
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1771
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1781
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1782
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1783
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1785
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1788
    :cond_0
    return-object v3
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1201
    const-string/jumbo v1, "unknown"

    .line 1203
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1204
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1205
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1210
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1207
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSmsCapacityOnIcc()I
    .locals 4

    .prologue
    .line 1271
    const/4 v2, -0x1

    .line 1273
    .local v2, "ret":I
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1274
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1275
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1280
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1277
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriptionId()I
    .locals 9

    .prologue
    .line 809
    iget v7, p0, Landroid/telephony/SmsManager;->mSubId:I

    const/16 v8, -0x3ea

    if-ne v7, v8, :cond_2

    .line 810
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    .line 811
    .local v6, "subId":I
    :goto_0
    const/4 v5, 0x0

    .line 812
    .local v5, "isSmsSimPickActivityNeeded":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 814
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 815
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 816
    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 822
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 823
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "getSubscriptionId isSmsSimPickActivityNeeded is true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 826
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.settings"

    .line 827
    const-string/jumbo v8, "com.android.settings.sim.SimDialogActivity"

    .line 826
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    sget-object v7, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 839
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return v6

    .line 810
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "subId":I
    :cond_2
    iget v6, p0, Landroid/telephony/SmsManager;->mSubId:I

    .restart local v6    # "subId":I
    goto :goto_0

    .line 818
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    :catch_0
    move-exception v2

    .line 819
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Exception in getSubscriptionId"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 832
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 835
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Unable to launch Settings application."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 1446
    if-nez p1, :cond_0

    .line 1447
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1450
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1451
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1452
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1455
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v8

    .line 1458
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 1413
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1414
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1415
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1418
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1421
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 451
    const-string/jumbo v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "3gpp2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    :cond_0
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 458
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 459
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 454
    const-string/jumbo v3, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    .line 453
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1176
    const/4 v0, 0x0

    .line 1178
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1179
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1180
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1185
    .end local v0    # "boSupported":Z
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1182
    .restart local v0    # "boSupported":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1237
    const/4 v2, 0x0

    .line 1239
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1240
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1243
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1244
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1241
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1242
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 712
    const/16 v1, 0x5c

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 718
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 723
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 724
    const v3, 0xffff

    and-int v5, p3, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 723
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 745
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 750
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 751
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 752
    const v3, 0xffff

    and-int v5, p3, v3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 750
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1331
    if-nez p2, :cond_0

    .line 1332
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1335
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1336
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 1337
    return-void

    .line 1340
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1342
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v0, 0x60

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 530
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 529
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 527
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 650
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 655
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 656
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_3

    .line 657
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 658
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 657
    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 666
    :cond_4
    const/4 v6, 0x0

    .line 667
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 668
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 669
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 671
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 672
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 674
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    goto :goto_0

    .line 662
    :catch_0
    move-exception v12

    .local v12, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 579
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 578
    return-void
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1714
    if-nez p1, :cond_0

    .line 1715
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1718
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1719
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1721
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1720
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 1724
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1685
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 1686
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1689
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1691
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1690
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1693
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1637
    if-nez p1, :cond_0

    .line 1638
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1643
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1642
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1645
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 293
    const/16 v0, 0x5e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 295
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 294
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 292
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I

    .prologue
    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 422
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 424
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 423
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v11

    .local v11, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 354
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 355
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 354
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 332
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 331
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 330
    return-void
.end method

.method public setAutoPersisting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1743
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1744
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1745
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 1747
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 4
    .param p1, "bool"    # Z

    .prologue
    .line 1253
    const/4 v2, 0x0

    .line 1255
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1256
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ISms;->setSMSPromptEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1252
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 939
    const/16 v1, 0x64

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 940
    const/4 v7, 0x0

    .line 943
    .local v7, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 944
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 946
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 945
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 953
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_0
    :goto_0
    return v7

    .line 949
    .restart local v7    # "success":Z
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1519
    if-nez p1, :cond_0

    .line 1520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1523
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1524
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1525
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1528
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1531
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
