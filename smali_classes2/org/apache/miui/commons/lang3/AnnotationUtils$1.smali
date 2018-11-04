.class final Lorg/apache/miui/commons/lang3/AnnotationUtils$1;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/AnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setDefaultFullDetail(Z)V

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setArrayContentDetail(Z)V

    .line 59
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseClassName(Z)V

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseShortClassName(Z)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    .line 62
    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, ")"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, ", "

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setArrayStart(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v0, p3, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_0

    .line 94
    check-cast p3, Ljava/lang/annotation/Annotation;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p3

    .line 96
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 75
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iface$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 76
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/annotation/Annotation;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    move-object v1, v2

    .line 80
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    move-object v0, v2

    .line 84
    .end local v0    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string/jumbo v4, ""

    :goto_0
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v4, 0x0

    const/16 v6, 0x40

    .line 84
    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
