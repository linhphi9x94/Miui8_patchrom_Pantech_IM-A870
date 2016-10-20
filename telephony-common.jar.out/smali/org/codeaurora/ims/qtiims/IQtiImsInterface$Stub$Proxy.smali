.class Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQtiImsInterface.java"

# interfaces
.implements Lorg/codeaurora/ims/qtiims/IQtiImsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 201
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-void

    .line 203
    :catchall_0
    move-exception v1

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    return-object v0
.end method

.method public getPacketCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 221
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    return-void

    .line 223
    :catchall_0
    move-exception v1

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw v1
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v1
.end method

.method public registerForViceRefreshInfo(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 283
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-void

    .line 285
    :catchall_0
    move-exception v1

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    throw v1
.end method

.method public sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    return-void

    .line 266
    :catchall_0
    move-exception v1

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 5
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "reason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "dialingNumber"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    if-eqz p9, :cond_0

    invoke-interface {p9}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    iget-object v1, p0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    return-void

    .line 176
    :catchall_0
    move-exception v1

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v1
.end method
