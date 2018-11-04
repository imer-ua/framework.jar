.class public Lmiui/maml/util/net/SimpleRequest$StringContent;
.super Lmiui/maml/util/net/SimpleRequest$HeaderContent;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/net/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringContent"
.end annotation


# instance fields
.field private body:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-direct {p0}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;-><init>()V

    .line 547
    iput-object p1, p0, Lmiui/maml/util/net/SimpleRequest$StringContent;->body:Ljava/lang/String;

    .line 546
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lmiui/maml/util/net/SimpleRequest$StringContent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StringContent{body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lmiui/maml/util/net/SimpleRequest$StringContent;->body:Ljava/lang/String;

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    const/16 v1, 0x27

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    const/16 v1, 0x7d

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
