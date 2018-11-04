.class public Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "ContextedRuntimeException.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 99
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/miui/commons/lang3/exception/ExceptionContext;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "context"    # Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    if-nez p3, :cond_0

    .line 149
    new-instance p3, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    .end local p3    # "context":Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    invoke-direct {p3}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    .line 151
    .restart local p3    # "context":Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    :cond_0
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    new-instance v0, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 121
    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 170
    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "baseMessage"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->exceptionContext:Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;

    .line 188
    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ExceptionContext;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/exception/ContextedRuntimeException;

    move-result-object v0

    return-object v0
.end method
