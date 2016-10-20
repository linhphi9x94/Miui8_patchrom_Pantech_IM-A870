.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "forView"    # Landroid/view/View;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 1402
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1390
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    .line 1401
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 12
    .param p1, "virtualViewId"    # I

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1522
    add-int/lit8 v7, p1, -0x1

    .line 1523
    .local v7, "ordinal":I
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1524
    .local v0, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v8, v7, 0x3

    .line 1525
    .local v8, "row":I
    rem-int/lit8 v6, v7, 0x3

    .line 1526
    .local v6, "col":I
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get1(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v9

    aget-object v9, v9, v8

    aget-object v1, v9, v6

    .line 1527
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9, v6}, Lcom/android/internal/widget/LockPatternView;->-wrap0(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v4

    .line 1528
    .local v4, "centerX":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9, v8}, Lcom/android/internal/widget/LockPatternView;->-wrap1(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v5

    .line 1529
    .local v5, "centerY":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get9(Lcom/android/internal/widget/LockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->-get6(Lcom/android/internal/widget/LockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v2, v9, v11

    .line 1530
    .local v2, "cellheight":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->-get10(Lcom/android/internal/widget/LockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->-get6(Lcom/android/internal/widget/LockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v3, v9, v11

    .line 1531
    .local v3, "cellwidth":F
    sub-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 1532
    add-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 1533
    sub-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 1534
    add-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 1535
    return-object v0
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1550
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->shouldSpeakPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1040330

    .line 1550
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1552
    :cond_0
    const v1, 0x104032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, -0x80000000

    .line 1564
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v5, p2}, Lcom/android/internal/widget/LockPatternView;->-wrap3(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v3

    .line 1565
    .local v3, "rowHit":I
    if-gez v3, :cond_0

    .line 1566
    return v6

    .line 1568
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v5, p1}, Lcom/android/internal/widget/LockPatternView;->-wrap2(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v0

    .line 1569
    .local v0, "columnHit":I
    if-gez v0, :cond_1

    .line 1570
    return v6

    .line 1572
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternView;->-get7(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v5

    aget-object v5, v5, v3

    aget-boolean v1, v5, v0

    .line 1573
    .local v1, "dotAvailable":Z
    mul-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, 0x1

    .line 1574
    .local v2, "dotId":I
    if-eqz v1, :cond_2

    move v4, v2

    .line 1577
    .local v4, "view":I
    :goto_0
    return v4

    .line 1574
    .end local v4    # "view":I
    :cond_2
    const/high16 v4, -0x80000000

    .restart local v4    # "view":I
    goto :goto_0
.end method

.method private isClickable(I)Z
    .locals 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1477
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_1

    .line 1478
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x3

    .line 1479
    .local v1, "row":I
    add-int/lit8 v3, p1, -0x1

    rem-int/lit8 v0, v3, 0x3

    .line 1480
    .local v0, "col":I
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternView;->-get7(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v3

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1482
    .end local v0    # "col":I
    .end local v1    # "row":I
    :cond_1
    return v2
.end method

.method private shouldSpeakPassword()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1540
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get2(Lcom/android/internal/widget/LockPatternView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    .line 1541
    const/4 v4, -0x3

    .line 1539
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1542
    .local v1, "speakPassword":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1543
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get0(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    .line 1545
    :goto_1
    if-nez v1, :cond_3

    :goto_2
    return v0

    .line 1539
    .end local v1    # "speakPassword":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "speakPassword":Z
    goto :goto_0

    .line 1543
    :cond_1
    const/4 v0, 0x1

    .local v0, "hasHeadphones":Z
    goto :goto_1

    .line 1544
    .end local v0    # "hasHeadphones":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasHeadphones":Z
    goto :goto_1

    .line 1545
    .end local v0    # "hasHeadphones":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1409
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

    .line 1410
    .local v0, "id":I
    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1417
    return-void

    .line 1419
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 1420
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1421
    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    .line 1422
    .local v1, "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    .end local v1    # "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    :cond_2
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1511
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1516
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1518
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1490
    packed-switch p2, :pswitch_data_0

    .line 1501
    const/4 v0, 0x0

    return v0

    .line 1495
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0

    .line 1490
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1442
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1443
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1445
    const v2, 0x1040332

    .line 1444
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1446
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1441
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    iget-object v0, v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 1436
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1456
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternView;->-get8(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1462
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1465
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1470
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1472
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1451
    return-void
.end method
