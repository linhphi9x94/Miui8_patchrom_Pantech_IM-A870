.class Lcom/android/server/policy/PhoneWindowManager$14;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 6291
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 6294
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 6301
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_0

    .line 6302
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->updatePowerMenuActions()V

    .line 6308
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 6310
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Lcom/android/server/policy/PhoneWindowManager;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6293
    :cond_1
    return-void

    .line 6308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
