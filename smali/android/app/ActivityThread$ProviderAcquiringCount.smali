.class final Landroid/app/ActivityThread$ProviderAcquiringCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderAcquiringCount"
.end annotation


# instance fields
.field public acquiringCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "aCount"    # I

    .prologue
    .line 3924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3925
    iput p1, p0, Landroid/app/ActivityThread$ProviderAcquiringCount;->acquiringCount:I

    .line 3924
    return-void
.end method
