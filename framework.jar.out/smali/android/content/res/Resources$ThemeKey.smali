.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 1964
    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x4

    .line 1972
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    .line 1973
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1976
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    .line 1977
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1980
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1981
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1982
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1984
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p1

    mul-int/lit8 v1, v0, 0x1f

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 1971
    return-void

    .line 1984
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .prologue
    .line 2033
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 2034
    .local v0, "other":Landroid/content/res/Resources$ThemeKey;
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2035
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 2036
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2037
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 2038
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2032
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2005
    if-ne p0, p1, :cond_0

    .line 2006
    return v6

    .line 2009
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 2010
    :cond_1
    return v5

    .line 2009
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v2, p1

    .line 2013
    check-cast v2, Landroid/content/res/Resources$ThemeKey;

    .line 2014
    .local v2, "t":Landroid/content/res/Resources$ThemeKey;
    iget v3, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iget v4, v2, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-eq v3, v4, :cond_3

    .line 2015
    return v5

    .line 2018
    :cond_3
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 2019
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 2020
    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v3, v3, v1

    iget-object v4, v2, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v4, v4, v1

    if-eq v3, v4, :cond_5

    .line 2021
    :cond_4
    return v5

    .line 2019
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2025
    :cond_6
    return v6
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2000
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$ThemeKey;

    .prologue
    const/4 v1, 0x0

    .line 1993
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 1994
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 1995
    iget v0, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1992
    return-void

    .line 1993
    :cond_0
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1994
    :cond_1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move-object v1, v0

    goto :goto_1
.end method
