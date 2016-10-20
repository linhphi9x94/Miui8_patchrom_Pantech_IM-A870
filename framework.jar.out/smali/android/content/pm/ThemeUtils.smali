.class public Landroid/content/pm/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ThemeUtils$ThemedUiContext;
    }
.end annotation


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "org.cyanogenmod.intent.action.THEME_CHANGED"

.field public static final CATEGORY_THEME_COMPONENT_PREFIX:Ljava/lang/String; = "org.cyanogenmod.intent.category."

.field public static final COMMON_RES_PATH:Ljava/lang/String; = "assets/overlays/common/"

.field public static final COMMON_RES_SUFFIX:Ljava/lang/String; = ".common"

.field public static final COMMON_RES_TARGET:Ljava/lang/String; = "common"

.field private static final DEFAULT_PKG:Ljava/lang/String; = "default"

.field public static final EXTRA_COMPONENTS:Ljava/lang/String; = "components"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field public static final EXTRA_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final FONT_XML:Ljava/lang/String; = "fonts.xml"

.field public static final ICONS_PATH:Ljava/lang/String; = "assets/icons/"

.field public static final ICON_HASH_FILENAME:Ljava/lang/String; = "hash"

.field private static final IDMAP_HASH_VERSION:B = 0x3t

.field public static final IDMAP_SUFFIX:Ljava/lang/String; = "@idmap"

.field public static final LOCKSCREEN_WALLPAPER_PATH:Ljava/lang/String; = "lockscreen"

.field private static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field private static final MEDIA_CONTENT_URI:Ljava/lang/String; = "content://media/internal/audio/media"

.field public static final OVERLAY_PATH:Ljava/lang/String; = "assets/overlays/"

.field public static final RESOURCE_CACHE_DIR:Ljava/lang/String; = "/data/resource-cache/"

.field private static final SETTINGS_DB:Ljava/lang/String; = "/data/data/com.android.providers.settings/databases/settings.db"

.field private static final SETTINGS_SECURE_TABLE:Ljava/lang/String; = "secure"

.field public static final SYSTEM_ALARMS_PATH:Ljava/lang/String;

.field public static final SYSTEM_MEDIA_PATH:Ljava/lang/String; = "/system/media/audio"

.field public static final SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

.field public static final SYSTEM_RINGTONES_PATH:Ljava/lang/String;

.field public static final SYSTEM_TARGET_API:I = 0x0

.field public static final SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

.field public static final SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/data/system/theme"

.field public static final SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field public static final THEME_BOOTANIMATION_PATH:Ljava/lang/String; = "assets/bootanimation/bootanimation.zip"

.field public static final WALLPAPER_PATH:Ljava/lang/String; = "wallpapers"

.field public static final sSupportedActions:[Ljava/lang/String;

.field public static final sSupportedCategories:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "ringtones"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "notifications"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "alarms"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "icons"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "alarms"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_ALARMS_PATH:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "ringtones"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_RINGTONES_PATH:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/system/media/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "notifications"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 134
    new-array v0, v5, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "org.adw.launcher.THEMES"

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "com.gau.go.launcherex.theme"

    aput-object v1, v0, v3

    .line 137
    const-string/jumbo v1, "com.novalauncher.THEME"

    aput-object v1, v0, v4

    .line 134
    sput-object v0, Landroid/content/pm/ThemeUtils;->sSupportedActions:[Ljava/lang/String;

    .line 141
    new-array v0, v5, [Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "com.fede.launcher.THEME_ICONPACK"

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "com.anddoes.launcher.THEME"

    aput-object v1, v0, v3

    .line 144
    const-string/jumbo v1, "com.teslacoilsw.launcher.THEME"

    aput-object v1, v0, v4

    .line 141
    sput-object v0, Landroid/content/pm/ThemeUtils;->sSupportedCategories:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAudibles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audiblePath"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "audibleDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "files":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 515
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v2, v6

    .line 516
    .local v4, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 518
    .local v5, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_data=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 519
    const-string/jumbo v9, "\""

    .line 518
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    const/4 v9, 0x0

    .line 518
    invoke-virtual {v3, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 520
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 515
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public static clearIconCache()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 301
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 326
    if-nez p0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static completeComponentMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 708
    .local v2, "defaultComponents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    .local v0, "component":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 710
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 704
    .end local v0    # "component":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 345
    .local v15, "os":Ljava/io/OutputStream;
    new-instance v24, Ljava/util/zip/ZipOutputStream;

    new-instance v25, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v24 .. v25}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 346
    .local v24, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 349
    .local v4, "bootAni":Ljava/util/zip/ZipInputStream;
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 350
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 352
    .local v6, "bytes":[B
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v23

    .local v23, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v23, :cond_6

    .line 353
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 354
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 355
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 356
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 357
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 358
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "desc.txt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 360
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 361
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v12

    .local v12, "len":I
    if-lez v12, :cond_5

    .line 362
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 366
    .end local v12    # "len":I
    :cond_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    .local v16, "reader":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, "info":[Ljava/lang/String;
    const-string/jumbo v25, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 372
    .local v22, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 373
    .local v8, "dm":Landroid/util/DisplayMetrics;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 376
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 377
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    .line 378
    .local v19, "scaledWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 384
    .local v18, "scaledHeight":I
    :goto_2
    const/16 v25, 0x0

    aget-object v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 385
    .local v21, "width":I
    const/16 v25, 0x1

    aget-object v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 387
    .local v10, "height":I
    move/from16 v0, v21

    if-ne v0, v10, :cond_3

    .line 388
    move/from16 v18, v19

    .line 397
    :cond_1
    :goto_3
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 399
    .local v7, "crc32":Ljava/util/zip/CRC32;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 400
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v25, "%d %d %s\n"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v26, v28

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x2

    aget-object v27, v11, v27

    const/16 v28, 0x2

    aput-object v27, v26, v28

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 401
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v20, v25, 0x0

    .line 403
    .local v20, "size":I
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 404
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 405
    const-string/jumbo v25, "%s\n"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v13, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 406
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v20, v20, v25

    .line 408
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_4

    .line 380
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    .end local v10    # "height":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v21    # "width":I
    :cond_2
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .line 381
    .restart local v19    # "scaledWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    .restart local v18    # "scaledHeight":I
    goto/16 :goto_2

    .line 391
    .restart local v10    # "height":I
    .restart local v21    # "width":I
    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v17, v25, v26

    .line 392
    .local v17, "scale":F
    int-to-float v0, v10

    move/from16 v25, v0

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v14, v0

    .line 393
    .local v14, "newHeight":I
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 394
    move/from16 v18, v14

    goto/16 :goto_3

    .line 410
    .end local v14    # "newHeight":I
    .end local v17    # "scale":F
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "crc32":Ljava/util/zip/CRC32;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v20    # "size":I
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 411
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 412
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 413
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 414
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 416
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "crc32":Ljava/util/zip/CRC32;
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "height":I
    .end local v11    # "info":[Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v21    # "width":I
    .end local v22    # "wm":Landroid/view/WindowManager;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto/16 :goto_0

    .line 418
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 343
    return-void
.end method

.method public static createAlarmDirIfNotExists()V
    .locals 1

    .prologue
    .line 291
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public static createCacheDirIfNotExists()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 215
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/resource-cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 214
    return-void

    .line 217
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createDirIfNotExists(Ljava/lang/String;)V
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 250
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->dirExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 249
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static createFontDirIfNotExists()V
    .locals 1

    .prologue
    .line 270
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static createIconCacheDirIfNotExists()V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static createIconDirIfNotExists(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 235
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 234
    return-void

    .line 238
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createNotificationDirIfNotExists()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public static createResourcesDirIfNotExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "overlayPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 225
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 224
    return-void

    .line 228
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createRingtoneDirIfNotExists()V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static createThemeDirIfNotExists()V
    .locals 1

    .prologue
    .line 263
    const-string/jumbo v0, "/data/system/theme"

    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->createDirIfNotExists(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static createUiContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    :try_start_0
    const-string/jumbo v2, "com.android.systemui"

    .line 528
    const/4 v3, 0x4

    .line 527
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 529
    .local v1, "uiContext":Landroid/content/Context;
    new-instance v2, Landroid/content/pm/ThemeUtils$ThemedUiContext;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/pm/ThemeUtils$ThemedUiContext;-><init>(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 530
    .end local v1    # "uiContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static dirExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAllComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 624
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "mods_fonts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-string/jumbo v1, "mods_homescreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    const-string/jumbo v1, "mods_alarms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    const-string/jumbo v1, "mods_bootanim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const-string/jumbo v1, "mods_icons"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    const-string/jumbo v1, "mods_lockscreen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    const-string/jumbo v1, "mods_notifications"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    const-string/jumbo v1, "mods_overlays"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    const-string/jumbo v1, "mods_ringtones"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    const-string/jumbo v1, "mods_status_bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    const-string/jumbo v1, "mods_navigation_bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    const-string/jumbo v1, "mods_live_lock_screen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-object v0
.end method

.method public static getCommonPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    const-string/jumbo v0, "common"

    return-object v0
.end method

.method public static getDefaultAudiblePath(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 490
    packed-switch p0, :pswitch_data_0

    .line 504
    :pswitch_0
    const/4 v1, 0x0

    .line 507
    :goto_0
    return-object v1

    .line 492
    :pswitch_1
    const-string/jumbo v2, "ro.config.alarm_alert"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_ALARMS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "ro.config.notification_sound"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_NOTIFICATIONS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .restart local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_RINGTONES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultComponents(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "defaultThemePkg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 677
    .local v3, "defaultComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "system"

    invoke-static {p0, v6}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 678
    .local v5, "systemComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "system"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 679
    invoke-static {p0, v4}, Landroid/content/pm/ThemeUtils;->getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 682
    .end local v3    # "defaultComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 683
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 684
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 685
    .local v0, "component":Ljava/lang/String;
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 688
    .end local v0    # "component":Ljava/lang/String;
    .end local v1    # "component$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "component$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .restart local v0    # "component":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 690
    const-string/jumbo v6, "system"

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 694
    .end local v0    # "component":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public static getDefaultThemePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 586
    const-string/jumbo v4, "default_theme_package"

    .line 585
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "defaultThemePkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 590
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 591
    return-object v0

    .line 593
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "ThemeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Default theme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string/jumbo v3, "system"

    return-object v3
.end method

.method private static getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "assets"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 573
    if-nez p0, :cond_0

    return-object v2

    .line 574
    :cond_0
    const/4 v1, 0x0

    .line 575
    .local v1, "filename":Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 576
    .local v0, "asset":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 577
    move-object v1, v0

    .line 581
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 575
    .restart local v0    # "asset":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getIconHashFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackApkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/resources.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackResPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/content/pm/ThemeUtils;->getIconPackDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/resources.arsc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdmapPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "overlayPkgName"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "idmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 306
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 307
    :cond_0
    return-object v3

    .line 308
    :cond_1
    const/4 v2, 0x0

    .line 309
    .local v2, "is":Ljava/io/InputStream;
    const-string/jumbo v0, "file:///android_asset/"

    .line 310
    .local v0, "ASSET_BASE":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 312
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 313
    .local v2, "is":Ljava/io/InputStream;
    return-object v2
.end method

.method public static getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    const-string/jumbo v2, "lockscreen"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "assets":[Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "asset":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v3

    .line 547
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockscreen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOverlayPathToTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "assets/overlays/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageHashCode(Landroid/content/pm/PackageParser$Package;Ljava/util/jar/StrictJarFile;)I
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "jarFile"    # Ljava/util/jar/StrictJarFile;

    .prologue
    .line 733
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    invoke-virtual {v4}, Landroid/content/pm/ManifestDigest;->hashCode()I

    move-result v2

    .line 734
    .local v2, "hash":I
    :goto_0
    const-string/jumbo v4, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v4}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 735
    .local v3, "je":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    .line 739
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 738
    invoke-static {v4}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    move-result-object v0

    .line 740
    .local v0, "digest":Landroid/content/pm/ManifestDigest;
    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Landroid/content/pm/ManifestDigest;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v2, v4

    .line 744
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/jar/StrictJarFile;->close()V

    .line 750
    .end local v0    # "digest":Landroid/content/pm/ManifestDigest;
    :cond_1
    :goto_1
    mul-int/lit8 v4, v2, 0x1f

    add-int/lit8 v2, v4, 0x3

    .line 751
    return v2

    .line 733
    .end local v2    # "hash":I
    .end local v3    # "je":Ljava/util/zip/ZipEntry;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hash":I
    goto :goto_0

    .line 743
    .restart local v3    # "je":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v4

    .line 744
    invoke-virtual {p1}, Ljava/util/jar/StrictJarFile;->close()V

    .line 743
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 746
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getSupportedComponents(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 645
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v11, "supportedComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "pkg_name= ?"

    .line 648
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 649
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 652
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 653
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    invoke-static {}, Landroid/content/pm/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v6

    .line 655
    .local v6, "allComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "component$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 656
    .local v8, "component":Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 657
    .local v10, "index":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 658
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    .end local v6    # "allComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "component":Ljava/lang/String;
    .end local v9    # "component$iterator":Ljava/util/Iterator;
    .end local v10    # "index":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_2
    return-object v11
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 164
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 168
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/content/pm/ThemeUtils;->getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetPkgName"    # Ljava/lang/String;
    .param p1, "themePkgName"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getOverlayResourceCacheDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 551
    const-string/jumbo v2, "wallpapers"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "assets":[Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->getFirstNonEmptyAsset([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "asset":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v3

    .line 554
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpapers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWallpaperPathList(Landroid/content/res/AssetManager;)Ljava/util/List;
    .locals 7
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v2, "wallpaperList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "wallpapers"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "assets":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 562
    .local v0, "asset":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wallpapers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "asset":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static isPerAppThemeComponent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 722
    const-string/jumbo v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 722
    if-nez v0, :cond_0

    .line 724
    const-string/jumbo v0, "com.android.systemui.navbar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 722
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidAudible(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 422
    if-eqz p0, :cond_1

    .line 423
    const-string/jumbo v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 423
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerThemeChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    return-void
.end method

.method public static setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone"    # Ljava/io/File;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 428
    .local v14, "path":Ljava/lang/String;
    const-string/jumbo v2, ".ogg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v12, "audio/ogg"

    .line 429
    .local v12, "mimeType":Ljava/lang/String;
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v15, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_data"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string/jumbo v2, "title"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v15, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v2, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    const-string/jumbo v4, "is_ringtone"

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    const-string/jumbo v4, "is_notification"

    .line 436
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 435
    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    const-string/jumbo v4, "is_alarm"

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 438
    const-string/jumbo v2, "is_music"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 440
    invoke-static {v14}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 441
    .local v3, "uri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 442
    .local v13, "newUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 443
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_data=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 445
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 442
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 446
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 447
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 449
    .local v10, "id":J
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 450
    const-string/jumbo v2, "content://media/internal/audio/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 451
    .local v13, "newUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 451
    invoke-virtual {v2, v3, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    .end local v10    # "id":J
    .end local v13    # "newUri":Landroid/net/Uri;
    :cond_0
    if-nez v13, :cond_1

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 457
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    const/4 v2, 0x1

    return v2

    .line 428
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string/jumbo v12, "audio/mp3"

    .restart local v12    # "mimeType":Ljava/lang/String;
    goto/16 :goto_0

    .line 434
    .restart local v15    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 436
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 437
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 458
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 459
    .local v9, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public static setDefaultAudible(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 465
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getDefaultAudiblePath(I)Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "audiblePath":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 467
    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 468
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 469
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v10

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_data=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 468
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 472
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 473
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 475
    .local v8, "id":J
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 477
    const-string/jumbo v0, "content://media/internal/audio/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .end local v8    # "id":J
    :cond_0
    if-eqz v1, :cond_1

    .line 480
    invoke-static {p0, p1, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 484
    :cond_1
    return v11

    .line 482
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    return v10
.end method
