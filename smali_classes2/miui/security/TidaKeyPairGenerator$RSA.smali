.class public Lmiui/security/TidaKeyPairGenerator$RSA;
.super Lmiui/security/TidaKeyPairGenerator;
.source "TidaKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/TidaKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/security/TidaKeyPairGenerator;-><init>()V

    .line 40
    const-string/jumbo v1, "RSA"

    iput-object v1, p0, Lmiui/security/TidaKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v1, p0, Lmiui/security/TidaKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/TidaKeyPairGenerator;->mKpg:Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
