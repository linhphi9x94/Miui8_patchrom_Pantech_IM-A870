.class Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpamFilterObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;
    }
.end annotation


# instance fields
.field private mFetchAllFilters:Ljava/lang/Runnable;

.field private mTask:Ljava/util/concurrent/Future;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->addToCache(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 880
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 896
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;-><init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mFetchAllFilters:Ljava/lang/Runnable;

    .line 879
    return-void
.end method

.method private addToCache(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 885
    const-string/jumbo v4, "_id"

    .line 884
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 887
    .local v2, "notifId":I
    const-string/jumbo v4, "package_name"

    .line 886
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v4, "normalized_text"

    .line 888
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "normalizedText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap7(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "hash":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get27(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v5

    monitor-enter v5

    .line 892
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get27(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 883
    return-void

    .line 891
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    .line 960
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 961
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 962
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 961
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 963
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->update(Landroid/net/Uri;)V

    .line 959
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 918
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->update(Landroid/net/Uri;)V

    .line 917
    return-void
.end method

.method update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 926
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mFetchAllFilters:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    .line 921
    :goto_1
    return-void

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 928
    :cond_2
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;-><init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/net/Uri;)V

    .line 955
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    goto :goto_1
.end method
