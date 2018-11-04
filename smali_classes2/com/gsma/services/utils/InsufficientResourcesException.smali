.class public Lcom/gsma/services/utils/InsufficientResourcesException;
.super Ljava/lang/Exception;
.source "InsufficientResourcesException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
