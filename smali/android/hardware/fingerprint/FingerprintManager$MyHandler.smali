.class Landroid/hardware/fingerprint/FingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 789
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    .line 790
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 789
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 793
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    .line 794
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 793
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    .line 876
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 879
    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap0(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 881
    return-void

    .line 883
    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 884
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    .line 875
    :cond_2
    :goto_0
    return-void

    .line 885
    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 886
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 869
    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I

    .prologue
    .line 862
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 864
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 865
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 861
    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .prologue
    .line 856
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 855
    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .prologue
    .line 845
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 849
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    .line 851
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->-wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendFidoAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    .locals 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "fidoOut"    # Landroid/hardware/fingerprint/FingerprintFidoOut;

    .prologue
    .line 892
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "sendFidoAuthenticatedSucceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    instance-of v1, v1, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;

    if-eqz v1, :cond_0

    .line 894
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "sendFidoAuthenticatedSucceeded callback"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 896
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;

    invoke-virtual {v1, v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;->onAuthenticationFidoSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Landroid/hardware/fingerprint/FingerprintFidoOut;)V

    .line 891
    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendRemovedResult(JII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v1, 0x0

    .line 828
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    .line 830
    .local v6, "reqFingerId":I
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v7

    .line 831
    .local v7, "reqGroupId":I
    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    if-eq p3, v6, :cond_0

    .line 832
    const-string/jumbo v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finger id didn\'t match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 835
    :cond_0
    if-eq p4, v7, :cond_1

    .line 836
    const-string/jumbo v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Group id didn\'t match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v8

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 827
    .end local v6    # "reqFingerId":I
    .end local v7    # "reqGroupId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 799
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 798
    :goto_0
    return-void

    .line 801
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    goto :goto_0

    .line 804
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAcquiredResult(JI)V

    goto :goto_0

    .line 807
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    goto :goto_0

    .line 810
    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_0

    .line 813
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendErrorResult(JI)V

    goto :goto_0

    .line 816
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 817
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 816
    invoke-direct {p0, v2, v3, v1, v4}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    .line 821
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "fidoout"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintFidoOut;

    .line 822
    .local v0, "data":Landroid/hardware/fingerprint/FingerprintFidoOut;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendFidoAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintFidoOut;)V

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
