.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 7433
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7434
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    .line 7433
    return-void
.end method


# virtual methods
.method public onHighTextContrastStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 7438
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchHighTextContrastChange(Z)V

    .line 7437
    return-void
.end method
