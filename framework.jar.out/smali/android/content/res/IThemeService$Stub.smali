.class public abstract Landroid/content/res/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Landroid/content/res/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.res.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_cacheComposedIcon:I = 0x7

.field static final TRANSACTION_getProgress:I = 0x6

.field static final TRANSACTION_isThemeApplying:I = 0x5

.field static final TRANSACTION_isThemeBeingProcessed:I = 0x9

.field static final TRANSACTION_processThemeResources:I = 0x8

.field static final TRANSACTION_rebuildResourceCache:I = 0xc

.field static final TRANSACTION_registerThemeProcessingListener:I = 0xa

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1

.field static final TRANSACTION_unregisterThemeProcessingListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.content.res.IThemeService"

    invoke-virtual {p0, p0, v0}, Landroid/content/res/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.content.res.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/res/IThemeService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/res/IThemeService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/res/IThemeService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/res/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 43
    :sswitch_0
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v9, 0x1

    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v9, 0x1

    return v9

    .line 57
    .end local v0    # "_arg0":Landroid/content/res/IThemeChangeListener;
    :sswitch_2
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v9, 0x1

    return v9

    .line 66
    .end local v0    # "_arg0":Landroid/content/res/IThemeChangeListener;
    :sswitch_3
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 69
    sget-object v9, Landroid/content/res/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeChangeRequest;

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    .line 76
    .local v6, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v6}, Landroid/content/res/IThemeService$Stub;->requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v9, 0x1

    return v9

    .line 72
    .end local v6    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/content/res/ThemeChangeRequest;
    goto :goto_0

    .line 75
    .end local v2    # "_arg0":Landroid/content/res/ThemeChangeRequest;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_1

    .line 82
    .end local v6    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->applyDefaultTheme()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v9, 0x1

    return v9

    .line 89
    :sswitch_5
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->isThemeApplying()Z

    move-result v8

    .line 91
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v9, 0x1

    return v9

    .line 92
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 97
    .end local v8    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->getProgress()I

    move-result v7

    .line 99
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v9, 0x1

    return v9

    .line 105
    .end local v7    # "_result":I
    :sswitch_7
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    sget-object v9, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 114
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Landroid/content/res/IThemeService$Stub;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v8

    .line 116
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v8, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v9, 0x1

    return v9

    .line 111
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 117
    .end local v3    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 122
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/res/IThemeService$Stub;->processThemeResources(Ljava/lang/String;)Z

    move-result v8

    .line 126
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v8, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v9, 0x1

    return v9

    .line 127
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 132
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/res/IThemeService$Stub;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v8

    .line 136
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v8, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v9, 0x1

    return v9

    .line 137
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 142
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_a
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeProcessingListener;

    move-result-object v1

    .line 145
    .local v1, "_arg0":Landroid/content/res/IThemeProcessingListener;
    invoke-virtual {p0, v1}, Landroid/content/res/IThemeService$Stub;->registerThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v9, 0x1

    return v9

    .line 151
    .end local v1    # "_arg0":Landroid/content/res/IThemeProcessingListener;
    :sswitch_b
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/res/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeProcessingListener;

    move-result-object v1

    .line 154
    .restart local v1    # "_arg0":Landroid/content/res/IThemeProcessingListener;
    invoke-virtual {p0, v1}, Landroid/content/res/IThemeService$Stub;->unregisterThemeProcessingListener(Landroid/content/res/IThemeProcessingListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v9, 0x1

    return v9

    .line 160
    .end local v1    # "_arg0":Landroid/content/res/IThemeProcessingListener;
    :sswitch_c
    const-string/jumbo v9, "android.content.res.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->rebuildResourceCache()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v9, 0x1

    return v9

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
