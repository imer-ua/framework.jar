.class public Lmiui/securityspace/XSpaceIntentCompat;
.super Ljava/lang/Object;
.source "XSpaceIntentCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareToLeaveUser(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 10
    return-void
.end method
