.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN$1;,
        Landroid/widget/Toast$TN$2;
    }
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 360
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 330
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 337
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 346
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 347
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 363
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 364
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 365
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 366
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 367
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 368
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 369
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 360
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 446
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 447
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    return-void

    .line 453
    :cond_0
    const/16 v2, 0x40

    .line 452
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 454
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 444
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 460
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 396
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v9, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v8, v9, :cond_5

    .line 398
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 399
    iget-object v8, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 400
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 401
    .local v2, "context":Landroid/content/Context;
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 403
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 406
    :cond_0
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 407
    .local v0, "appIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 409
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 411
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 415
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v8, "window"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 420
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 421
    .local v1, "config":Landroid/content/res/Configuration;
    iget v8, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 422
    .local v4, "gravity":I
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 423
    and-int/lit8 v8, v4, 0x7

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    .line 424
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 426
    :cond_2
    and-int/lit8 v8, v4, 0x70

    const/16 v9, 0x70

    if-ne v8, v9, :cond_3

    .line 427
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 429
    :cond_3
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Landroid/widget/Toast$TN;->mX:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 430
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Landroid/widget/Toast$TN;->mY:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 431
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 432
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 433
    iget-object v8, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v6, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 434
    iget-object v8, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 436
    iget-object v8, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 439
    :cond_4
    iget-object v8, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v9, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 393
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "gravity":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 412
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method
