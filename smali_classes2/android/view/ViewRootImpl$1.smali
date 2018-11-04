.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 1034
    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .locals 1
    .param p1, "displayState"    # I

    .prologue
    const/4 v0, 0x1

    .line 1068
    if-ne p1, v0, :cond_0

    .line 1069
    const/4 v0, 0x0

    .line 1068
    :cond_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1064
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1037
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1038
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1039
    .local v2, "oldDisplayState":I
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1040
    .local v0, "newDisplayState":I
    if-eq v2, v0, :cond_1

    .line 1041
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1042
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1043
    if-eqz v2, :cond_1

    .line 1044
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v3

    .line 1045
    .local v3, "oldScreenState":I
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v1

    .line 1046
    .local v1, "newScreenState":I
    if-eq v3, v1, :cond_0

    .line 1047
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 1049
    :cond_0
    if-ne v2, v5, :cond_1

    .line 1051
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1052
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1036
    .end local v0    # "newDisplayState":I
    .end local v1    # "newScreenState":I
    .end local v2    # "oldDisplayState":I
    .end local v3    # "oldScreenState":I
    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1060
    return-void
.end method
