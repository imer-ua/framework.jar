.class Landroid/app/ReceiverReporter$ReceiverObj;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverObj"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private receiver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 51
    instance-of v1, p1, Landroid/app/ReceiverReporter$ReceiverObj;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 52
    nop

    nop

    .line 54
    .local v0, "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    .end local v0    # "receiverObj":Landroid/app/ReceiverReporter$ReceiverObj;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    const-string/jumbo v2, ", receiver: "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    iget-object v2, p0, Landroid/app/ReceiverReporter$ReceiverObj;->receiver:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
