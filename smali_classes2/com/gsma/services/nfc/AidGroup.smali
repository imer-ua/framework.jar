.class public Lcom/gsma/services/nfc/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"


# instance fields
.field private mAidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public addNewAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid AID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public getAidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    return-object v0
.end method

.method public getAids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    iget-object v2, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 93
    .local v0, "aidArray":[Ljava/lang/String;
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public removeAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid AID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAidList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method
