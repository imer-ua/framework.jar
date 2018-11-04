.class public Lmiui/maml/util/MamlAccessHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "parentView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 26
    iput-object p1, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 24
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 31
    iget-object v3, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    .line 32
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Lmiui/maml/elements/AnimatedScreenElement;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    .line 34
    .local v0, "e":Lmiui/maml/elements/AnimatedScreenElement;
    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    return v2

    .line 32
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 38
    .end local v0    # "e":Lmiui/maml/elements/AnimatedScreenElement;
    :cond_1
    const/high16 v3, -0x80000000

    return v3
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 3
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    .line 43
    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "es":Ljava/util/List;, "Ljava/util/List<Lmiui/maml/elements/AnimatedScreenElement;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 94
    :cond_0
    return v3

    .line 87
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Lmiui/maml/elements/AnimatedScreenElement;>;"
    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 89
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    .line 90
    .local v0, "e":Lmiui/maml/elements/AnimatedScreenElement;
    const-string/jumbo v2, "up"

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x1

    return v2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 53
    iget-object v2, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Lmiui/maml/elements/AnimatedScreenElement;>;"
    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 55
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimatedScreenElement;

    .line 56
    .local v0, "e":Lmiui/maml/elements/AnimatedScreenElement;
    invoke-virtual {v0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .end local v0    # "e":Lmiui/maml/elements/AnimatedScreenElement;
    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v7, 0x0

    .line 62
    iget-object v4, p0, Lmiui/maml/util/MamlAccessHelper;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "es":Ljava/util/List;, "Ljava/util/List<Lmiui/maml/elements/AnimatedScreenElement;>;"
    if-ltz p1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 64
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    .line 65
    .local v1, "e":Lmiui/maml/elements/AnimatedScreenElement;
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, ""

    .line 68
    const-string/jumbo v4, "MamlAccessHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "element.getContentDescription() == null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 72
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v6

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 73
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v7

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 72
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 61
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Lmiui/maml/elements/AnimatedScreenElement;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v4, "MamlAccessHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "virtualViewId not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
