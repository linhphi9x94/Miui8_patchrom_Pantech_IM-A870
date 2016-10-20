.class public Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final GRAYSCALE_MATRIX:[F

.field private static final INVERSION_MATRIX_VALUE_ONLY:[F

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 35
    const-class v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    .line 52
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    .line 34
    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAdjustments(Landroid/content/Context;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v11, -0x1

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 93
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 96
    .local v2, "colorMatrix":[F
    const-string/jumbo v8, "accessibility_display_inversion_enabled"

    .line 95
    invoke-static {v3, v8, v10, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_0

    .line 97
    sget-object v8, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->INVERSION_MATRIX_VALUE_ONLY:[F

    invoke-static {v2, v8}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    move-result-object v2

    .line 101
    .end local v2    # "colorMatrix":[F
    :cond_0
    const-string/jumbo v8, "live_display_color_matrix"

    .line 100
    invoke-static {v3, v8, p1}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "adj":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 103
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "tmp":[Ljava/lang/String;
    array-length v8, v7

    if-ne v8, v9, :cond_2

    .line 105
    new-array v1, v9, [F

    .line 107
    .local v1, "adjMatrix":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 108
    :try_start_0
    aget-object v8, v7, v6

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v1, v6

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v2, v1}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 118
    .end local v1    # "adjMatrix":[F
    .end local v6    # "i":I
    .end local v7    # "tmp":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v8, "accessibility_display_daltonizer_enabled"

    .line 117
    invoke-static {v3, v8, v10, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_4

    .line 120
    const-string/jumbo v8, "accessibility_display_daltonizer"

    const/16 v9, 0xc

    .line 119
    invoke-static {v3, v8, v9, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 123
    .local v4, "daltonizerMode":I
    if-nez v4, :cond_3

    .line 124
    sget-object v8, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->GRAYSCALE_MATRIX:[F

    invoke-static {v2, v8}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->multiply([F[F)[F

    move-result-object v2

    .line 125
    .local v2, "colorMatrix":[F
    invoke-static {v11}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    .line 133
    .end local v2    # "colorMatrix":[F
    .end local v4    # "daltonizerMode":I
    :goto_2
    invoke-static {v2}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setColorTransform([F)V

    .line 91
    return-void

    .line 111
    .restart local v1    # "adjMatrix":[F
    .restart local v6    # "i":I
    .restart local v7    # "tmp":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 112
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v1    # "adjMatrix":[F
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    .end local v7    # "tmp":[Ljava/lang/String;
    .restart local v4    # "daltonizerMode":I
    :cond_3
    invoke-static {v4}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    goto :goto_2

    .line 130
    .end local v4    # "daltonizerMode":I
    :cond_4
    invoke-static {v11}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->setDaltonizerMode(I)V

    goto :goto_2
.end method

.method public static hasAdjustments(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "accessibility_display_inversion_enabled"

    .line 70
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    return v3

    .line 76
    :cond_0
    const-string/jumbo v1, "accessibility_display_daltonizer_enabled"

    .line 75
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    return v3

    .line 81
    :cond_1
    const-string/jumbo v1, "live_display_color_matrix"

    .line 80
    invoke-static {v0, v1, p1}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    return v3

    .line 85
    :cond_2
    return v2
.end method

.method private static multiply([F[F)[F
    .locals 6
    .param p0, "matrix"    # [F
    .param p1, "other"    # [F

    .prologue
    const/4 v1, 0x0

    .line 137
    if-nez p0, :cond_0

    .line 138
    return-object p1

    .line 140
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "result":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 141
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 142
    return-object v0
.end method

.method private static setColorTransform([F)V
    .locals 7
    .param p0, "m"    # [F

    .prologue
    .line 175
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 176
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 178
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    if-eqz p0, :cond_0

    .line 180
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 182
    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    :cond_1
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_2
    :goto_1
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setDaltonizerMode(I)V
    .locals 6
    .param p0, "mode"    # I

    .prologue
    .line 153
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 154
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
