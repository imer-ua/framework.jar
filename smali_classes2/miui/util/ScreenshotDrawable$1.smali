.class Lmiui/util/ScreenshotDrawable$1;
.super Ljava/lang/Object;
.source "ScreenshotDrawable.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ScreenshotDrawable;->setVisible(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ScreenshotDrawable;


# direct methods
.method constructor <init>(Lmiui/util/ScreenshotDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    .line 109
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable$1;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$1;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-virtual {v0}, Lmiui/util/ScreenshotDrawable;->processShow()V

    .line 115
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$1;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-static {v0}, Lmiui/util/ScreenshotDrawable;->-get1(Lmiui/util/ScreenshotDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 113
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    return-void
.end method
