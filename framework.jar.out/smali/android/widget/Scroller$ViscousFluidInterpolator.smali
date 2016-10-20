.class Landroid/widget/Scroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 578
    invoke-static {v2}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 580
    sget v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v2}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    sput v0, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 568
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static viscousFluid(F)F
    .locals 3
    .param p0, "x"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 584
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    .line 585
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    .line 586
    neg-float v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v2, v0

    sub-float/2addr p0, v0

    .line 592
    :goto_0
    return p0

    .line 589
    :cond_0
    sub-float v0, v2, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float p0, v2, v0

    .line 590
    const v0, 0x3f21d2a7

    mul-float/2addr v0, p0

    .line 588
    const v1, 0x3ebc5ab2

    .line 590
    add-float p0, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    .line 597
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Landroid/widget/Scroller$ViscousFluidInterpolator;->viscousFluid(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 598
    .local v0, "interpolated":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 599
    sget v1, Landroid/widget/Scroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v1, v0

    return v1

    .line 601
    :cond_0
    return v0
.end method
