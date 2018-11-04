.class Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
.super Ljava/lang/Object;
.source "JoyoseManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/JoyoseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JoyoseManagerDeath"
.end annotation


# instance fields
.field private mToken:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method constructor <init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V
    .locals 0
    .param p1, "token"    # Lcom/xiaomi/joyose/IJoyoseInterface;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 22
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Lcom/xiaomi/joyose/JoyoseManager;->-set0(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;

    .line 28
    iget-object v0, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;->mToken:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v0}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 26
    :cond_0
    return-void
.end method
