.class public Lcom/android/internal/telephony/cat/TextMessage;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/TextMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/TextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:Lcom/android/internal/telephony/cat/Duration;

.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public isHighPriority:Z

.field public responseNeeded:Z

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userClear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/TextMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 31
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 31
    iput-object v3, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v0, v2

    .line 41
    goto :goto_1

    :cond_2
    move v0, v2

    .line 42
    goto :goto_2

    :cond_3
    move v1, v2

    .line 43
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, " iconSelfExplanatory="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, " isHighPriority="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, " responseNeeded="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, " userClear="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, " duration="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v0, v2

    .line 59
    goto :goto_2

    :cond_3
    move v1, v2

    .line 60
    goto :goto_3
.end method
