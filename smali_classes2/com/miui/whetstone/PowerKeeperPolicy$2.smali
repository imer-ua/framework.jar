.class Lcom/miui/whetstone/PowerKeeperPolicy$2;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

.field final synthetic val$b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;
    .param p2, "val$b"    # Landroid/os/IBinder;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$b:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 562
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-set0(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)Lcom/miui/whetstone/IPowerKeeperClient;

    .line 563
    const-string/jumbo v0, "PowerKeeperPolicy"

    const-string/jumbo v1, "powerkeeper died, reset handle to null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-wrap2(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 560
    return-void
.end method
