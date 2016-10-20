.class public Lorg/codeaurora/ims/qtiims/QtiImsInterfaceUtils;
.super Ljava/lang/Object;
.source "QtiImsInterfaceUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CALL_RAT_EXTRA_KEY:Ljava/lang/String; = "callRadioTech"

.field public static final QTI_IMS_DEFLECT_EXTRA_KEY:Ljava/lang/String; = "Deflect"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "QtiImsInterfaceUtils"

    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceUtils;->LOG_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 68
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 67
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    .end local v0    # "deflectcall":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    move-object v0, p1

    .line 82
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    const-string/jumbo v0, ""

    .line 87
    :cond_1
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 86
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    return-void
.end method
