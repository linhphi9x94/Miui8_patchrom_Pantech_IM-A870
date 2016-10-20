.class final Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;
.super Ljava/lang/Object;
.source "EdgeGestureService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 392
    iput-object p3, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 394
    const-string/jumbo v1, "display"

    .line 393
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 396
    const-string/jumbo v1, "window"

    .line 395
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 398
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    .line 399
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->updateDisplayInfo()V

    .line 391
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/gesture/EdgeGestureInputFilter;->updateDisplay(Landroid/view/Display;Landroid/view/DisplayInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 402
    :goto_0
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 413
    :cond_1
    const-string/jumbo v0, "EdgeGestureService"

    const-string/jumbo v1, "Default display is not valid."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public observe()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 419
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->updateDisplayInfo()V

    .line 417
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->updateDisplayInfo()V

    .line 437
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 432
    return-void
.end method

.method public unobserve()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 422
    return-void
.end method
