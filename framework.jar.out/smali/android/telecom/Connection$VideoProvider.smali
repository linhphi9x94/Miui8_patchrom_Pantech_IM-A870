.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_REMOVE_VIDEO_CALLBACK:I = 0xc

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_REQUEST_CONNECTION_DATA_USAGE:I = 0xa

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_ZOOM:I = 0x6

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE:I = 0x5

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 682
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 831
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 832
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 830
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 682
    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 842
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 843
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 841
    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 1
    .param p1, "dataUsage"    # J

    .prologue
    .line 1129
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Connection$VideoProvider;->setCallDataUsage(J)V

    .line 1128
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 6
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 1147
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1148
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1150
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v2

    .line 1152
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeCameraCapabilities callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1083
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1084
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1086
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v2

    .line 1088
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changePeerDimensions callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1082
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 6
    .param p1, "videoQuality"    # I

    .prologue
    .line 1172
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1173
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1175
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1176
    :catch_0
    move-exception v2

    .line 1177
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "changeVideoQuality callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1171
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .line 1058
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1059
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1061
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v2

    .line 1063
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "handleCallSessionEvent callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1057
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onRequestConnectionDataUsage()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Landroid/net/Uri;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1000
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1003
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v2

    .line 1005
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyRequest callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 999
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 1031
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1032
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1034
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v2

    .line 1037
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "receiveSessionModifyResponse callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1030
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public setCallDataUsage(J)V
    .locals 7
    .param p1, "dataUsage"    # J

    .prologue
    .line 1110
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    .line 1111
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallback;

    .line 1113
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallback;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v2

    .line 1115
    .local v2, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v3, "setCallDataUsage callback failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1109
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
