.class final Lcom/android/server/gesture/EdgeGestureService$H;
.super Landroid/os/Handler;
.source "EdgeGestureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gesture/EdgeGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gesture/EdgeGestureService;


# direct methods
.method public constructor <init>(Lcom/android/server/gesture/EdgeGestureService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/gesture/EdgeGestureService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    .line 344
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method

.method private updateServiceHandler(II)V
    .locals 2
    .param p1, "positions"    # I
    .param p2, "sensitivity"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get4(Lcom/android/server/gesture/EdgeGestureService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureInputFilter;->updatePositions(I)V

    .line 378
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get3(Lcom/android/server/gesture/EdgeGestureService;)Lcom/android/server/gesture/EdgeGestureInputFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->updateSensitivity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 374
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 356
    :pswitch_1
    const/16 v0, 0x7d17

    invoke-virtual {p0, v0}, Lcom/android/server/gesture/EdgeGestureService$H;->removeMessages(I)V

    .line 357
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/gesture/EdgeGesturePosition;

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap0(Lcom/android/server/gesture/EdgeGestureService;IILcom/android/internal/util/gesture/EdgeGesturePosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap2(Lcom/android/server/gesture/EdgeGestureService;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get0(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v1}, Lcom/android/server/gesture/EdgeGestureService;->-get1(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;->updateServiceHandler(II)V

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-wrap2(Lcom/android/server/gesture/EdgeGestureService;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v0}, Lcom/android/server/gesture/EdgeGestureService;->-get0(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureService$H;->this$0:Lcom/android/server/gesture/EdgeGestureService;

    invoke-static {v1}, Lcom/android/server/gesture/EdgeGestureService;->-get1(Lcom/android/server/gesture/EdgeGestureService;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/gesture/EdgeGestureService$H;->updateServiceHandler(II)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x7d17
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
