.class final Lorg/apache/miui/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2218
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2219
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseClassName(Z)V

    .line 2220
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2221
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseFieldNames(Z)V

    .line 2222
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2223
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2217
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2231
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
