.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 182
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 335
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 336
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 333
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 318
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 317
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 320
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 323
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 324
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 316
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 320
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 326
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 206
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 218
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 238
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 243
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 244
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 253
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 257
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 261
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 265
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 268
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 272
    const/4 v0, -0x2

    .line 271
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 273
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 274
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 277
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 287
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 288
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :catch_0
    move-exception v6

    .line 296
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 350
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 353
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 354
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 353
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 355
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 366
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 369
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 373
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 376
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 379
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 389
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 391
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 390
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 392
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 393
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 395
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 402
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 406
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 346
    return-void

    .line 383
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 391
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 417
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 418
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 419
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 418
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 424
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 412
    return-void
.end method

.method static final startNfcService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1353
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1354
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_0

    .line 1355
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void

    .line 1359
    :cond_0
    :try_start_0
    const-string/jumbo v3, "android.hardware.nfc"

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1361
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.nfc"

    .line 1362
    const-string/jumbo v5, "com.android.nfc.NfcBootstrapService"

    .line 1361
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1363
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    return-void
.end method

.method private startOtherServices()V
    .locals 111

    .prologue
    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 433
    .local v3, "context":Landroid/content/Context;
    const/16 v31, 0x0

    .line 434
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v47, 0x0

    .line 435
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    const/16 v104, 0x0

    .line 436
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    const/16 v33, 0x0

    .line 437
    .local v33, "alarm":Landroid/app/IAlarmManager;
    const/16 v82, 0x0

    .line 438
    .local v82, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 439
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 440
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v83, 0x0

    .line 441
    .local v83, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 442
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v84, 0x0

    .line 443
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v94, 0x0

    .line 444
    .local v94, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v110, 0x0

    .line 445
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v103, 0x0

    .line 446
    .local v103, "usb":Lcom/android/server/usb/UsbService;
    const/16 v91, 0x0

    .line 447
    .local v91, "serial":Lcom/android/server/SerialService;
    const/16 v87, 0x0

    .line 448
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 449
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v71, 0x0

    .line 450
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v97, 0x0

    .line 451
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v45, 0x0

    .line 452
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v36, 0x0

    .line 453
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v81, 0x0

    .line 454
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v62, 0x0

    .line 455
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .line 457
    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 458
    .local v55, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 459
    .local v50, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 460
    .local v51, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 461
    .local v56, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 462
    .local v54, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 463
    .local v52, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 464
    .local v53, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    .line 465
    .local v73, "isEmulator":Z
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 466
    const v5, 0x1070050

    .line 465
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v64

    .line 469
    .local v64, "externalServices":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 472
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 477
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v98, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_46

    .line 479
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v98, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v63, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v63

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_47

    .line 484
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 486
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 492
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v32, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 494
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_48

    move-object/from16 v31, v32

    .line 499
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    .line 500
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v47

    .line 503
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 506
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v105, Lcom/android/server/VibratorService;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 508
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v46, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_49

    .line 512
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v4, "consumer_ir"

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 516
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 515
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v33

    .line 518
    .local v33, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v109

    .line 520
    .local v109, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 522
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v72, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4a

    .line 525
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_26

    const/4 v4, 0x1

    .line 528
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v8, 0x1

    .line 526
    move-object/from16 v0, v72

    invoke-static {v3, v0, v4, v8, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v110

    .line 529
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 530
    const-string/jumbo v4, "input"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v110

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 534
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 535
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/input/InputManagerService;->start()V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 543
    if-eqz v73, :cond_27

    .line 544
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .line 561
    .end local v33    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v47    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    const/16 v95, 0x0

    .line 562
    .local v95, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v89, 0x0

    .line 563
    .local v89, "notification":Landroid/app/INotificationManager;
    const/16 v69, 0x0

    .line 564
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v107, 0x0

    .line 565
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v74, 0x0

    .line 566
    .local v74, "location":Lcom/android/server/LocationManagerService;
    const/16 v48, 0x0

    .line 567
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 568
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v76, 0x0

    .line 569
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v34, 0x0

    .line 570
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v78, 0x0

    .line 571
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v66, 0x0

    .line 572
    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v60, 0x0

    .line 573
    .local v60, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    const/16 v99, 0x0

    .line 576
    .local v99, "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 578
    :try_start_9
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v70, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v70

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 580
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_45

    move-object/from16 v69, v70

    .line 586
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string/jumbo v4, "accessibility"

    .line 588
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 595
    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 600
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 601
    if-nez v55, :cond_1

    .line 602
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 619
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 622
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 628
    :goto_9
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 629
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 630
    const v8, 0x1040409

    .line 629
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 631
    const/4 v8, 0x0

    .line 628
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_44

    .line 635
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    .line 636
    if-nez v54, :cond_3

    .line 638
    :try_start_f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v77, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 640
    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_43

    move-object/from16 v76, v77

    .line 645
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 656
    :cond_3
    if-nez v56, :cond_4

    .line 658
    :try_start_11
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v96, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v96

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 660
    .end local v95    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v96, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_42

    move-object/from16 v95, v96

    .line 666
    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v54, :cond_5

    .line 668
    :try_start_13
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string/jumbo v4, "clipboard"

    .line 670
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 669
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .line 676
    :cond_5
    :goto_d
    if-nez v52, :cond_6

    .line 678
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 680
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    .line 686
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_e
    if-nez v54, :cond_7

    .line 688
    :try_start_15
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    .line 690
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_41

    move-object/from16 v101, v102

    .line 696
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_f
    if-nez v52, :cond_34

    .line 698
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v85, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .line 700
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_18
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_40

    move-object/from16 v84, v85

    .line 706
    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_10
    :try_start_19
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v86, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v86

    move-object/from16 v1, v33

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .line 708
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v86, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3f

    move-object/from16 v6, v86

    .line 714
    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_11
    :try_start_1b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 717
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 715
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 719
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3e

    .line 724
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 727
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 726
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 731
    if-eqz v4, :cond_9

    .line 733
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 737
    :cond_9
    :try_start_1d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .line 740
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1e
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 741
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 742
    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3d

    move-object/from16 v43, v44

    .line 748
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v94

    .line 751
    .local v94, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 750
    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .line 757
    .end local v94    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    if-nez v54, :cond_a

    .line 759
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string/jumbo v4, "updatelock"

    .line 761
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 760
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    .line 772
    :cond_a
    :goto_15
    if-eqz v82, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_2c

    .line 780
    :cond_b
    :goto_16
    if-eqz v31, :cond_c

    .line 781
    :try_start_21
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    .line 787
    :cond_c
    :goto_17
    if-eqz v47, :cond_d

    .line 788
    :try_start_22
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    .line 793
    :cond_d
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 795
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 794
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v89

    .line 796
    .local v89, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 800
    if-nez v51, :cond_e

    .line 802
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v75, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    .line 804
    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .local v75, "location":Lcom/android/server/LocationManagerService;
    :try_start_24
    const-string/jumbo v4, "location"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_3c

    move-object/from16 v74, v75

    .line 810
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_25
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v49, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    .line 812
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_26
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_3b

    move-object/from16 v48, v49

    .line 818
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1a
    if-nez v54, :cond_f

    .line 820
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string/jumbo v4, "search"

    .line 822
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 821
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .line 829
    :cond_f
    :goto_1b
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string/jumbo v4, "dropbox"

    .line 831
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 830
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    .line 836
    :goto_1c
    if-nez v54, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 837
    const v5, 0x1120055

    .line 836
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 839
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v108, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .line 841
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2a
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3a

    move-object/from16 v107, v108

    .line 848
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1d
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v37, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .line 850
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v37, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2c
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_39

    move-object/from16 v36, v37

    .line 855
    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1e
    if-nez v54, :cond_11

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    :cond_11
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v71

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 862
    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    .line 868
    :goto_1f
    if-nez v54, :cond_15

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 874
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 876
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 875
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 874
    if-eqz v4, :cond_14

    .line 878
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 882
    :cond_14
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v92, Lcom/android/server/SerialService;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 885
    .end local v91    # "serial":Lcom/android/server/SerialService;
    .local v92, "serial":Lcom/android/server/SerialService;
    :try_start_2f
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_38

    move-object/from16 v91, v92

    .line 891
    .end local v92    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    if-nez v54, :cond_19

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 904
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 908
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 909
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 915
    :cond_19
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 926
    :goto_21
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string/jumbo v4, "samplingprofiler"

    .line 928
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 927
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1f

    .line 933
    :goto_22
    if-nez v52, :cond_1a

    if-eqz v53, :cond_2d

    .line 943
    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_23
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .line 945
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_33
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_37

    move-object/from16 v40, v41

    .line 950
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_24
    if-nez v52, :cond_1b

    .line 952
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v38, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    .line 959
    :cond_1b
    :goto_25
    if-nez v54, :cond_1c

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 964
    :cond_1c
    if-nez v54, :cond_1d

    .line 966
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v35, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_23

    .line 968
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v35, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_36
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_36

    move-object/from16 v34, v35

    .line 974
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_26
    if-nez v54, :cond_1e

    .line 975
    const-string/jumbo v4, "graphicsstats"

    .line 976
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 979
    :cond_1e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 980
    const v5, 0x112009d

    .line 979
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 982
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v67, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v67

    move-object/from16 v1, v71

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_24

    .line 984
    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v67, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_38
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_35

    move-object/from16 v66, v67

    .line 990
    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 994
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1002
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1007
    :cond_22
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Theme Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v100, Lcom/android/server/ThemeService;

    move-object/from16 v0, v100

    invoke-direct {v0, v3}, Lcom/android/server/ThemeService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_25

    .line 1009
    .end local v99    # "themeService":Lcom/android/server/ThemeService;
    .local v100, "themeService":Lcom/android/server/ThemeService;
    :try_start_3a
    const-string/jumbo v4, "themes"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_34

    move-object/from16 v99, v100

    .line 1014
    .end local v100    # "themeService":Lcom/android/server/ThemeService;
    :goto_28
    if-nez v54, :cond_23

    .line 1016
    :try_start_3b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v79, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_26

    .line 1018
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3c
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_33

    move-object/from16 v78, v79

    .line 1023
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    :try_start_3d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_27

    .line 1036
    :cond_23
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1039
    :try_start_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v61, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v61

    move-object/from16 v1, v71

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_28

    .line 1041
    .end local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v61, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_3f
    const-string/jumbo v4, "edgegestureservice"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_32

    move-object/from16 v60, v61

    .line 1047
    .end local v61    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    :goto_2b
    if-nez v54, :cond_24

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1052
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1053
    const-string/jumbo v8, "service.adb.tcp.port"

    const-string/jumbo v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1052
    invoke-static {v4, v5, v8}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1057
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1058
    new-instance v8, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v9, 0x0

    .line 1056
    invoke-virtual {v4, v5, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1062
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v90

    .line 1063
    .local v90, "safeMode":Z
    if-eqz v90, :cond_2e

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1066
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1073
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v81

    .end local v81    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v81, Lcom/android/server/MmsServiceBroker;

    .line 1075
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/4 v4, 0x0

    move-object/from16 v0, v64

    array-length v5, v0

    :goto_2d
    if-ge v4, v5, :cond_2f

    aget-object v93, v64, v4

    .line 1077
    .local v93, "service":Ljava/lang/String;
    :try_start_40
    const-string/jumbo v8, "SystemServer"

    move-object/from16 v0, v93

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, v93

    invoke-virtual {v8, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_29

    .line 1075
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 495
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v90    # "safeMode":Z
    .end local v93    # "service":Ljava/lang/String;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "alarm":Landroid/app/IAlarmManager;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v82    # "mountService":Landroid/os/storage/IMountService;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v91    # "serial":Lcom/android/server/SerialService;
    .local v94, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v59

    .line 496
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v59, "e":Ljava/lang/Throwable;
    :goto_2f
    :try_start_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_1

    goto/16 :goto_0

    .line 556
    .end local v47    # "contentService":Lcom/android/server/content/ContentService;
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v58

    .local v58, "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v97, v98

    .line 557
    .end local v33    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_30
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 501
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .restart local v33    # "alarm":Landroid/app/IAlarmManager;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 527
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v33, "alarm":Landroid/app/IAlarmManager;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 545
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_27
    :try_start_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 546
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 556
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_30

    .line 547
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 548
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 547
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 549
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 550
    :cond_29
    if-eqz v50, :cond_2a

    .line 551
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 553
    :cond_2a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_2

    goto/16 :goto_3

    .line 581
    .end local v33    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v47    # "contentService":Lcom/android/server/content/ContentService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v89, "notification":Landroid/app/INotificationManager;
    .restart local v95    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "themeService":Lcom/android/server/ThemeService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v59

    .line 582
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 589
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v59

    .line 590
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 596
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v59

    .line 597
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 608
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2b
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 610
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 609
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_6

    move-result-object v82

    .local v82, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_8

    .line 611
    .local v82, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v59

    .line 612
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 623
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v59

    .line 624
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 641
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v59

    .line 642
    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 661
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v59

    .line 662
    .end local v95    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 671
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v59

    .line 672
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 681
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v59

    .line 682
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 691
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v59

    .line 692
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 701
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v59

    .line 702
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 709
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v59

    .line 710
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 720
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v83

    .line 721
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_37
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 743
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v59

    .line 744
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 752
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v94    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v59

    .line 753
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 762
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v59

    .line 763
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 774
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2c
    :try_start_44
    invoke-interface/range {v82 .. v82}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_44} :catch_13

    goto/16 :goto_16

    .line 775
    :catch_13
    move-exception v68

    .local v68, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_16

    .line 782
    .end local v68    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v59

    .line 783
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 789
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v59

    .line 790
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 805
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v89, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v59

    .line 806
    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 813
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v59

    .line 814
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 823
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v59

    .line 824
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 832
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v59

    .line 833
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 842
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v59

    .line 843
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 851
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v59

    .line 852
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 864
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v59

    .line 865
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 886
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v59

    .line 887
    .end local v91    # "serial":Lcom/android/server/SerialService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 917
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v59

    .line 918
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 929
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v59

    .line 930
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 935
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2d
    :try_start_45
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v88, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_20

    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v87, v88

    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_23

    .line 937
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v59

    .line 938
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 946
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v59

    .line 947
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 954
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v59

    .line 955
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 969
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v59

    .line 970
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 985
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v59

    .line 986
    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1010
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v59

    .line 1011
    .end local v99    # "themeService":Lcom/android/server/ThemeService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting Theme Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1019
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v59

    .line 1020
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1030
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v59

    .line 1031
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1042
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v59

    .line 1043
    .end local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1069
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v90    # "safeMode":Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1079
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v93    # "service":Ljava/lang/String;
    :catch_29
    move-exception v59

    .line 1080
    .restart local v59    # "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v93

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v8, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1087
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v93    # "service":Ljava/lang/String;
    :cond_2f
    :try_start_46
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 1092
    :goto_44
    if-eqz v76, :cond_30

    .line 1094
    :try_start_47
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .line 1101
    :cond_30
    :goto_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1106
    :try_start_48
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .line 1111
    :goto_46
    if-eqz v90, :cond_31

    .line 1112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1118
    :cond_31
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1119
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1120
    .local v80, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/view/WindowManager;

    .line 1121
    .local v106, "w":Landroid/view/WindowManager;
    invoke-interface/range {v106 .. v106}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v80

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1126
    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 1132
    :goto_47
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 1139
    :goto_48
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v90

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 1144
    :goto_49
    if-eqz v60, :cond_32

    .line 1146
    :try_start_4c
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 1152
    :cond_32
    :goto_4a
    if-eqz v66, :cond_33

    .line 1154
    :try_start_4d
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 1160
    :cond_33
    :goto_4b
    new-instance v65, Landroid/content/IntentFilter;

    invoke-direct/range {v65 .. v65}, Landroid/content/IntentFilter;-><init>()V

    .line 1161
    .local v65, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.tmobile.intent.action.APP_FAILURE"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    const-string/jumbo v4, "com.tmobile.intent.action.APP_FAILURE_RESET"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v4, "org.cyanogenmod.intent.action.THEME_CHANGED"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v4, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v4, "package"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1168
    new-instance v4, Lcom/android/server/AppsFailureReceiver;

    invoke-direct {v4}, Lcom/android/server/AppsFailureReceiver;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1171
    move-object v12, v7

    .line 1172
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1173
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1174
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v43

    .line 1175
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v84

    .line 1176
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v107

    .line 1177
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v69

    .line 1178
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v74

    .line 1179
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v48

    .line 1180
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v87

    .line 1181
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v40

    .line 1182
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v101

    .line 1183
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v95

    .line 1184
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v34

    .line 1185
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v71

    .line 1186
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v97

    .line 1187
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v78

    .line 1188
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v36

    .line 1189
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v81

    .line 1190
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v30, v99

    .line 1197
    .local v30, "themeServiceF":Lcom/android/server/ThemeService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v30}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/ThemeService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 431
    return-void

    .line 1088
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v30    # "themeServiceF":Lcom/android/server/ThemeService;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v65    # "filter":Landroid/content/IntentFilter;
    .end local v80    # "metrics":Landroid/util/DisplayMetrics;
    .end local v106    # "w":Landroid/view/WindowManager;
    :catch_2a
    move-exception v59

    .line 1089
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1095
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v59

    .line 1096
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1107
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v59

    .line 1108
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1127
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v80    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v106    # "w":Landroid/view/WindowManager;
    :catch_2d
    move-exception v59

    .line 1128
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1133
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v59

    .line 1134
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1140
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v59

    .line 1141
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1147
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v59

    .line 1148
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1155
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v59

    .line 1156
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1042
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v80    # "metrics":Landroid/util/DisplayMetrics;
    .end local v90    # "safeMode":Z
    .end local v106    # "w":Landroid/view/WindowManager;
    .restart local v61    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    :catch_32
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v60, v61

    .end local v61    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v60, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_43

    .line 1019
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v60, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_33
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_42

    .line 1010
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v100    # "themeService":Lcom/android/server/ThemeService;
    :catch_34
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v99, v100

    .end local v100    # "themeService":Lcom/android/server/ThemeService;
    .local v99, "themeService":Lcom/android/server/ThemeService;
    goto/16 :goto_41

    .line 985
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v99, "themeService":Lcom/android/server/ThemeService;
    :catch_35
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_40

    .line 969
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_36
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v34, v35

    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3f

    .line 946
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_37
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3e

    .line 886
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92    # "serial":Lcom/android/server/SerialService;
    :catch_38
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v91, v92

    .end local v92    # "serial":Lcom/android/server/SerialService;
    .local v91, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_3d

    .line 851
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .local v91, "serial":Lcom/android/server/SerialService;
    :catch_39
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v36, v37

    .end local v37    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_3c

    .line 842
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3a
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_3b

    .line 813
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3b
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v48, v49

    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3a

    .line 805
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    :catch_3c
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v74, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_39

    .line 743
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v74, "location":Lcom/android/server/LocationManagerService;
    .local v89, "notification":Landroid/app/INotificationManager;
    .restart local v94    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_3d
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_38

    .line 720
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3e
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    goto/16 :goto_37

    .line 709
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3f
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v86

    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_36

    .line 701
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_40
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_35

    .line 691
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_41
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_34

    .line 661
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_42
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v95, v96

    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v95, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_33

    .line 641
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v95, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_43
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_32

    .line 632
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_44
    move-exception v57

    .local v57, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 581
    .end local v57    # "e":Landroid/os/RemoteException;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v82    # "mountService":Landroid/os/storage/IMountService;
    :catch_45
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_31

    .line 556
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .end local v95    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v99    # "themeService":Lcom/android/server/ThemeService;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "alarm":Landroid/app/IAlarmManager;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_46
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_30

    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v97, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_30

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_48
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_30

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_49
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30

    .end local v33    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4a
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v97, v98

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30

    .line 495
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v97    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "alarm":Landroid/app/IAlarmManager;
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    :catch_4b
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_2f

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v33    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v47    # "contentService":Lcom/android/server/content/ContentService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "mountService":Landroid/os/storage/IMountService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v99    # "themeService":Lcom/android/server/ThemeService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_34
    move-object/from16 v2, v83

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_14

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v95    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_35
    move-object/from16 v2, v83

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2b
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1346
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1347
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1346
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1349
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1344
    return-void
.end method
