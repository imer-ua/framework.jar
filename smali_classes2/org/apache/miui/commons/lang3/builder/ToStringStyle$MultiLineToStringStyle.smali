.class final Lorg/apache/miui/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2254
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2255
    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 2257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2267
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
