.class Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;
.super Ljava/lang/Object;
.source "MQSEventManagerDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/MQSEventManagerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/mqsas/sdk/MQSEventManagerDelegate;


# direct methods
.method constructor <init>(Lmiui/mqsas/sdk/MQSEventManagerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    .prologue
    .line 288
    iput-object p1, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;->this$0:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Mqsas binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lmiui/mqsas/sdk/MQSEventManagerDelegate$1;->this$0:Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->-set0(Lmiui/mqsas/sdk/MQSEventManagerDelegate;Lmiui/mqsas/IMQSService;)Lmiui/mqsas/IMQSService;

    .line 290
    return-void
.end method
