.class final Lmiui/mqsas/sdk/BootEventManager$1;
.super Ljava/lang/Object;
.source "BootEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lmiui/mqsas/sdk/event/BootEvent;


# direct methods
.method constructor <init>(Lmiui/mqsas/sdk/event/BootEvent;)V
    .locals 0
    .param p1, "val$event"    # Lmiui/mqsas/sdk/event/BootEvent;

    .prologue
    .line 100
    iput-object p1, p0, Lmiui/mqsas/sdk/BootEventManager$1;->val$event:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Begin to report boot event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/BootEventManager$1;->val$event:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 102
    return-void
.end method
