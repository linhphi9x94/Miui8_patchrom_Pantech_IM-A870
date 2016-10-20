.class public Lorg/codeaurora/ims/qtiims/QtiViceInfo;
.super Ljava/lang/Object;
.source "QtiViceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/codeaurora/ims/qtiims/QtiViceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mViceInfoAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;

    invoke-direct {v0}, Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;-><init>()V

    .line 80
    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    return-object v0
.end method

.method public setViceDialogInfoAsString(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    return-void
.end method
