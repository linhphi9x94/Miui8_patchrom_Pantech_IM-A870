.class Lcom/android/server/display/LiveDisplayController$3;
.super Ljava/lang/Object;
.source "LiveDisplayController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LiveDisplayController;->updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/LiveDisplayController;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$3;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$3;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/display/LiveDisplayController;->-wrap0(Lcom/android/server/display/LiveDisplayController;I)V

    .line 286
    return-void
.end method
