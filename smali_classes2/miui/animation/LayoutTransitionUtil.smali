.class public Lmiui/animation/LayoutTransitionUtil;
.super Ljava/lang/Object;
.source "LayoutTransitionUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 15
    return-void
.end method

.method public static endChangingAnimations(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 11
    return-void
.end method
