.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 999
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1008
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1031
    return-void
.end method

.method public onAuthenticationFidoSucceeded(JLandroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "fidoOut"    # Landroid/hardware/fingerprint/FingerprintFidoOut;

    .prologue
    .line 1020
    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "onAuthenticationFidoSucceeded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1022
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1023
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1024
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1025
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "fidoout"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1026
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1027
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1019
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "userId"    # I

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1013
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v6

    .line 1004
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 1003
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v6, v1, p5, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1002
    return-void
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1036
    return-void
.end method

.method public onRemoved(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1041
    return-void
.end method
