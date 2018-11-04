.class public Lmiui/security/TidaSignature$SHA256withRSA;
.super Lmiui/security/TidaSignature;
.source "TidaSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/TidaSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256withRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/security/TidaSignature;-><init>()V

    .line 45
    const-string/jumbo v0, "SHA256withRSA"

    iput-object v0, p0, Lmiui/security/TidaSignature;->mAlgorithm:Ljava/lang/String;

    .line 47
    invoke-static {}, Lmiui/security/TidaSignature;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "new SHA256withRSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
