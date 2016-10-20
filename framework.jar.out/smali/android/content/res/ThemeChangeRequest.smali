.class public final Landroid/content/res/ThemeChangeRequest;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeChangeRequest$RequestType;,
        Landroid/content/res/ThemeChangeRequest$Builder;,
        Landroid/content/res/ThemeChangeRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ThemeChangeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WALLPAPER_ID:I = -0x1


# instance fields
.field private final mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

.field private final mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Landroid/content/res/ThemeChangeRequest$1;

    invoke-direct {v0}, Landroid/content/res/ThemeChangeRequest$1;-><init>()V

    .line 161
    sput-object v0, Landroid/content/res/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 36
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "numComponents":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    iget-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 134
    iget-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {}, Landroid/content/res/ThemeChangeRequest$RequestType;->values()[Landroid/content/res/ThemeChangeRequest$RequestType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/ThemeChangeRequest;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/ThemeChangeRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;J)V
    .locals 2
    .param p3, "requestType"    # Landroid/content/res/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/ThemeChangeRequest$RequestType;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "perAppThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    .line 120
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    :cond_1
    iput-object p3, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 123
    iput-wide p4, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;JLandroid/content/res/ThemeChangeRequest;)V
    .locals 0
    .param p1, "components"    # Ljava/util/Map;
    .param p2, "perAppThemes"    # Ljava/util/Map;
    .param p3, "requestType"    # Landroid/content/res/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;J)V

    return-void
.end method

.method private getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "mods_alarms"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBootanimationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "mods_bootanim"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "mods_fonts"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconsThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "mods_icons"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "mods_lockscreen"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "mods_notifications"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumChangesRequested()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverlayThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "mods_overlays"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPerAppOverlays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqeustType()Landroid/content/res/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public getRingtoneThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "mods_ringtones"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "mods_status_bar"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThemeComponentsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperId()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    return-wide v0
.end method

.method public getWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "mods_homescreen"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 147
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "component":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v2    # "component":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    invoke-virtual {v4}, Landroid/content/res/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-wide v4, p0, Landroid/content/res/ThemeChangeRequest;->mWallpaperId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    return-void
.end method
