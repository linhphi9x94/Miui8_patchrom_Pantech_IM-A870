.class public Lcom/android/server/gesture/EdgeGestureService;
.super Landroid/service/gesture/IEdgeGestureService$Stub;
.source "EdgeGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;,
        Lcom/android/server/gesture/EdgeGestureService$H;,
        Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_INPUT:Z = false

.field public static final MSG_EDGE_GESTURE_ACTIVATION:I = 0x7d17

.field public static final MSG_UPDATE_SERVICE:I = 0x7d19

.field public static final TAG:Ljava/lang/String; = "EdgeGestureService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

.field private final mEdgeGestureActivationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalPositions:I

.field private mGlobalSensitivity:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/gesture/EdgeGestureService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/gesture/EdgeGestureService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/gesture/EdgeGestureService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/gesture/EdgeGestureService;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 1
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService;->propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/gesture/EdgeGestureService;Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/gesture/EdgeGestureService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->updateMonitoring()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureService$Stub;-><init>()V

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "EdgeGestureHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 179
    return-void
.end method

.method private enforceMonitoringLocked()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/android/server/gesture/EdgeGestureInputFilter;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    .line 242
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->registerSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->observe()V

    .line 237
    return-void
.end method

.method private findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .locals 3
    .param p1, "listener"    # Landroid/os/IBinder;

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 306
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v2, v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->listener:Landroid/service/gesture/IEdgeGestureActivationListener;

    invoke-interface {v2}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    return-object v0

    .line 310
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private propagateActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    .locals 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;

    .prologue
    .line 323
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 326
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v3, p3, Lcom/android/internal/util/gesture/EdgeGesturePosition;->FLAG:I

    invoke-static {v0, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap0(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    move-object v2, v0

    .line 335
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .end local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap1(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :goto_1
    monitor-exit v4

    return v3

    .line 336
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    goto :goto_0

    .line 338
    .end local v2    # "target":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 323
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private removeListenerRecord(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 313
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private shutdownMonitoringLocked()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->unobserve()V

    .line 251
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterSecondaryInputFilter(Landroid/view/IInputFilter;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    .line 246
    return-void
.end method

.method private updateMonitoring()V
    .locals 8

    .prologue
    .line 207
    iget-object v6, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 208
    const/4 v5, 0x0

    :try_start_0
    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 209
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 210
    const/4 v2, 0x0

    .line 211
    .local v2, "someLongLiving":Z
    const/4 v0, 0x0

    .line 212
    .local v0, "activePositions":I
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "someLongLiving":Z
    .local v4, "temp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 213
    .local v3, "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    iget v7, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 214
    invoke-virtual {v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    iget v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->positions:I

    or-int/2addr v0, v5

    .line 217
    :cond_0
    iget v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    if-eqz v5, :cond_1

    .line 218
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    iget v7, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->sensitivity:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 220
    :cond_1
    iget-boolean v5, v3, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->longLiving:Z

    or-int/2addr v2, v5

    .local v2, "someLongLiving":Z
    goto :goto_0

    .line 222
    .end local v2    # "someLongLiving":Z
    .end local v3    # "temp":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_2
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    .line 223
    .local v1, "havePositions":Z
    :goto_1
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    not-int v7, v0

    and-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    .line 225
    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    if-nez v5, :cond_3

    .line 226
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    .line 229
    :cond_3
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    .line 230
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->enforceMonitoringLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit v6

    .line 206
    return-void

    .line 222
    .end local v1    # "havePositions":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "havePositions":Z
    goto :goto_1

    .line 231
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 232
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService;->shutdownMonitoringLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 207
    .end local v0    # "activePositions":I
    .end local v1    # "havePositions":Z
    .end local v4    # "temp$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump EdgeGestureService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 461
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    const-string/jumbo v4, ", uid="

    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    return-void

    .line 466
    :cond_0
    const-string/jumbo v3, "EDGE GESTURE SERVICE (dumpsys edgegestureservice)\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 468
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mInputFilter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mInputFilter:Lcom/android/server/gesture/EdgeGestureInputFilter;

    const-string/jumbo v5, "    "

    invoke-virtual {v3, p2, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 472
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mGlobalPositions=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalPositions:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mGlobalSensitivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureService;->mGlobalSensitivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 476
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Active record: #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 480
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    .line 481
    .local v0, "i":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    .line 482
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Listener #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v3, "    "

    invoke-virtual {v1, p2, v3}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_4
    monitor-exit v4

    .line 457
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    .line 446
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/gesture/IEdgeGestureService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    :goto_0
    if-nez v1, :cond_0

    .line 450
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v2, "EdgeGestureService crashed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :cond_0
    throw v0

    .line 449
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerEdgeGestureActivationListener(Landroid/service/gesture/IEdgeGestureActivationListener;)Landroid/service/gesture/IEdgeGestureHostCallback;
    .locals 8
    .param p1, "listener"    # Landroid/service/gesture/IEdgeGestureActivationListener;

    .prologue
    const/4 v7, 0x0

    .line 257
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.INJECT_EVENTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string/jumbo v3, "EdgeGestureService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: can\'t register from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    const-string/jumbo v5, ", uid="

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-object v7

    .line 264
    :cond_0
    if-nez p1, :cond_1

    .line 265
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_1
    const/4 v1, 0x0

    .line 269
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 270
    :try_start_0
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v1

    .line 271
    .local v1, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    if-nez v1, :cond_2

    .line 272
    new-instance v2, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    invoke-direct {v2, p0, p1}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/service/gesture/IEdgeGestureActivationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .local v2, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/service/gesture/IEdgeGestureActivationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    :try_start_2
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mEdgeGestureActivationListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_2
    monitor-exit v4

    .line 282
    return-object v1

    .line 275
    .end local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "EdgeGestureService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recipient died during registration pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .line 277
    return-object v7

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4

    throw v3

    .restart local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    .restart local v1    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$H;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/gesture/EdgeGestureService$H;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/gesture/EdgeGestureService$1;

    invoke-direct {v2, p0}, Lcom/android/server/gesture/EdgeGestureService$1;-><init>(Lcom/android/server/gesture/EdgeGestureService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    new-instance v0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;-><init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mDisplayObserver:Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;

    .line 201
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 185
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateEdgeGestureActivationListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "listener"    # Landroid/os/IBinder;
    .param p2, "positionFlags"    # I

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/gesture/EdgeGestureService;->findListenerRecordLocked(Landroid/os/IBinder;)Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;

    move-result-object v0

    .line 292
    .local v0, "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    if-nez v0, :cond_1

    .line 293
    const-string/jumbo v1, "EdgeGestureService"

    const-string/jumbo v3, "Unknown listener on update listener. Register first?"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "listener not registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 296
    .restart local v0    # "record":Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;
    :cond_1
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;->-wrap2(Lcom/android/server/gesture/EdgeGestureService$EdgeGestureActivationListenerRecord;I)V

    .line 298
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d19

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 286
    return-void
.end method
