.class Lcom/android/server/net/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityExtension"

.field private static extensionFailed:Z

.field private static tetherExtensionClass:Ljava/lang/Class;

.field private static tetherExtensionObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 46
    sput-object v0, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTetherStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p0, "uidStats"    # Landroid/net/NetworkStats;
    .param p1, "devStats"    # Landroid/net/NetworkStats;
    .param p2, "xtStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 52
    invoke-static {}, Lcom/android/server/net/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "getTetherStats"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 57
    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    sget-object v2, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 56
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 58
    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "error in invoke method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadTetherExtJar()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    const-string/jumbo v2, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    .line 81
    .local v2, "realProvider":Ljava/lang/String;
    const-string/jumbo v3, "/system/framework/ConnectivityExt.jar"

    .line 82
    .local v3, "realProviderPath":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/net/NetPluginDelegate;->extensionFailed:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 86
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/ConnectivityExt.jar"

    .line 87
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 86
    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 89
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v6, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 90
    sget-object v6, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 93
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/server/net/NetPluginDelegate;->extensionFailed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/android/server/net/NetPluginDelegate;->extensionFailed:Z

    if-eqz v6, :cond_1

    :goto_1
    return v4

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ConnectivityExtension"

    const-string/jumbo v7, "Connectivity extension is not available"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput-boolean v5, Lcom/android/server/net/NetPluginDelegate;->extensionFailed:Z

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 99
    goto :goto_1
.end method

.method static setQuota(Ljava/lang/String;J)V
    .locals 7
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J

    .prologue
    .line 66
    invoke-static {}, Lcom/android/server/net/NetPluginDelegate;->loadTetherExtJar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setQuota"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/android/server/net/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 70
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling setQuota Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
