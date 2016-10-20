.class Lcom/android/server/notification/NotificationManagerService$7;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 2611
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2614
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activeSession$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 2615
    .local v0, "activeSession":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 2616
    .local v2, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2617
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 2618
    return-void

    .line 2621
    .end local v0    # "activeSession":Landroid/media/session/MediaController;
    .end local v2    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 2613
    return-void
.end method
