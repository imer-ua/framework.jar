.class public Lmiui/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 0
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 10
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    return-void
.end method
