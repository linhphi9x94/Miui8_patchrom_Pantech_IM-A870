.class final Lcom/android/server/notification/NotificationManagerService$PolicyAccess;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PolicyAccess"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final PERM:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 4007
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4009
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 4010
    const-string/jumbo v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4009
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->PERM:[Ljava/lang/String;

    .line 4007
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public getGrantedPackages()Landroid/util/ArraySet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4040
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4042
    .local v1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4045
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 4046
    const-string/jumbo v8, "enabled_notification_policy_access_packages"

    .line 4047
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 4044
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 4048
    .local v4, "setting":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 4049
    const-string/jumbo v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4050
    .local v6, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 4051
    aget-object v5, v6, v0

    .line 4052
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 4053
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4055
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4050
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4058
    :cond_1
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4061
    .end local v0    # "i":I
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 4062
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4061
    throw v7

    .line 4062
    .restart local v4    # "setting":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4064
    return-object v1
.end method

.method public getRequestingPackages()[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4068
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 4069
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->PERM:[Ljava/lang/String;

    .line 4070
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 4068
    invoke-interface {v5, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 4071
    .local v2, "list":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 4072
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-array v5, v8, [Ljava/lang/String;

    return-object v5

    .line 4073
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 4074
    .local v0, "N":I
    new-array v4, v0, [Ljava/lang/String;

    .line 4075
    .local v4, "rt":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4076
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 4075
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4078
    :cond_2
    return-object v4
.end method

.method public isPackageGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 4014
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getGrantedPackages()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    const/4 v7, 0x0

    .line 4018
    if-nez p1, :cond_0

    return-void

    .line 4019
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getGrantedPackages()Landroid/util/ArraySet;

    move-result-object v2

    .line 4021
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 4022
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 4026
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 4024
    .end local v0    # "changed":Z
    :cond_1
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 4027
    :cond_2
    const-string/jumbo v4, ":"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 4028
    .local v3, "setting":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 4029
    .local v1, "currentUser":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4030
    const-string/jumbo v5, "enabled_notification_policy_access_packages"

    .line 4029
    invoke-static {v4, v5, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4033
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 4036
    const/high16 v6, 0x40000000    # 2.0f

    .line 4033
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 4036
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4033
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4017
    return-void
.end method
