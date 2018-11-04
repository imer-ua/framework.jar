.class public Lcom/gsma/services/nfc/OffHostService;
.super Ljava/lang/Object;
.source "OffHostService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OffHostService"


# instance fields
.field mAidGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field mBanner:Landroid/graphics/drawable/Drawable;

.field mBannerResId:I

.field mContext:Landroid/content/Context;

.field mDescription:Ljava/lang/String;

.field mModifiable:Z

.field mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

.field mPackageName:Ljava/lang/String;

.field mSEName:Ljava/lang/String;

.field mServiceName:Ljava/lang/String;

.field mUserId:I


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "SELocation"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "modifiable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 33
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    .line 39
    iput p1, p0, Lcom/gsma/services/nfc/OffHostService;->mUserId:I

    .line 40
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)V
    .locals 5
    .param p1, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    .line 29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    .line 31
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 33
    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    .line 48
    iget v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mUserId:I

    iput v2, p0, Lcom/gsma/services/nfc/OffHostService;->mUserId:I

    .line 49
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 50
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 51
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    .line 52
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    .line 53
    iget-boolean v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    iput-boolean v2, p0, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    .line 54
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/gsma/services/nfc/OffHostService;->convertToOffHostAidGroupList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getBannerId()I

    move-result v2

    iput v2, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    .line 57
    invoke-virtual {p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    .line 58
    iget-object v2, p1, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 60
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    .local v1, "pManager":Landroid/content/pm/PackageManager;
    iget v2, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    if-lez v2, :cond_0

    .line 64
    :try_start_0
    const-string/jumbo v2, "OffHostService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBannerResId(): getDrawable() with mBannerResId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OffHostService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertToCeAidGroupList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "mAidGroups":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/nfc/AidGroup;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v3, "mApduAidGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v4, 0x0

    .line 229
    .local v4, "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "aidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v6, "mGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gsma/services/nfc/AidGroup;

    .line 231
    .local v5, "mGroup":Lcom/gsma/services/nfc/AidGroup;
    new-instance v4, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v4, "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v2

    .line 233
    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getAidList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v4    # "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v5    # "mGroup":Lcom/gsma/services/nfc/AidGroup;
    :cond_1
    return-object v3
.end method

.method private convertToNxpOffhostService(Lcom/gsma/services/nfc/OffHostService;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 8
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 242
    iget-object v1, p1, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/gsma/services/nfc/OffHostService;->convertToCeAidGroupList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 243
    .local v7, "mAidGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget v1, p1, Lcom/gsma/services/nfc/OffHostService;->mUserId:I

    iget-object v2, p1, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    iget-object v4, p1, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    .line 244
    iget-boolean v6, p1, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    .line 243
    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    .local v0, "mNxpOffHostService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    iget-object v1, p1, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget v1, p1, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 247
    iget-object v1, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    return-object v0
.end method

.method private convertToOffHostAidGroupList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "mAidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v5, "mOffHostAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mCeAidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    .line 275
    .local v3, "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/gsma/services/nfc/OffHostService;->defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;

    move-result-object v2

    .line 276
    .local v2, "mAidGroup":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/gsma/services/nfc/AidGroup;->addNewAid(Ljava/lang/String;)V

    goto :goto_1

    .line 279
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "mAidGroup":Lcom/gsma/services/nfc/AidGroup;
    .end local v3    # "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    return-object v5
.end method

.method private setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V
    .locals 0
    .param p1, "nxpNfcController"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 267
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/utils/InsufficientResourcesException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "status":Z
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iget v2, p0, Lcom/gsma/services/nfc/OffHostService;->mUserId:I

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p0}, Lcom/gsma/services/nfc/OffHostService;->convertToNxpOffhostService(Lcom/gsma/services/nfc/OffHostService;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z

    move-result v0

    .line 260
    .local v0, "status":Z
    const-string/jumbo v1, "GSMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " commit status value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string/jumbo v2, "Routing Table is Full, Cannot Commit"

    invoke-direct {v1, v2}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_0
    return-void
.end method

.method public defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid description provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid category provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_3
    new-instance v0, Lcom/gsma/services/nfc/AidGroup;

    invoke-direct {v0, p1, p2}, Lcom/gsma/services/nfc/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .local v0, "aidGroup":Lcom/gsma/services/nfc/AidGroup;
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v0
.end method

.method public deleteAidGroup(Lcom/gsma/services/nfc/AidGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/gsma/services/nfc/AidGroup;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public getAidGroups()[Lcom/gsma/services/nfc/AidGroup;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/gsma/services/nfc/AidGroup;

    .line 220
    .local v0, "aidGroup":[Lcom/gsma/services/nfc/AidGroup;
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/gsma/services/nfc/AidGroup;

    return-object v1

    .line 222
    .end local v0    # "aidGroup":[Lcom/gsma/services/nfc/AidGroup;
    :cond_0
    new-array v1, v2, [Lcom/gsma/services/nfc/AidGroup;

    return-object v1
.end method

.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiable()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(I)V
    .locals 6
    .param p1, "bannerResId"    # I

    .prologue
    .line 149
    const-string/jumbo v3, "OffHostService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBannerResId() with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput p1, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    .line 152
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    .local v1, "pManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "packName":Ljava/lang/String;
    iget v3, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    if-lez v3, :cond_0

    .line 156
    :try_start_0
    const-string/jumbo v3, "OffHostService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBannerResId(): getDrawable() with mBannerResId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OffHostService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iget-object v9, p0, Lcom/gsma/services/nfc/OffHostService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 107
    .local v6, "pManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    .line 108
    .local v7, "packName":Ljava/lang/String;
    const-string/jumbo v9, "OffHostService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBanner() Resources packName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\\$"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-string/jumbo v10, "drawable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v4

    if-eqz v9, :cond_3

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 114
    .local v3, "f":[Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .local v0, "counter":I
    array-length v5, v3

    .local v5, "max":I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 115
    aget-object v9, v3, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 116
    .local v8, "resId":I
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 118
    iput v8, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    .line 119
    iput-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 120
    const-string/jumbo v9, "OffHostService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBanner() Resources GOT THE DRAWABLE On loop "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    const-string/jumbo v11, "got resId : "

    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "counter":I
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "f":[Ljava/lang/reflect/Field;
    .end local v5    # "max":I
    .end local v8    # "resId":I
    :cond_0
    :goto_2
    iget v9, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    if-nez v9, :cond_1

    .line 134
    const-string/jumbo v9, "OffHostService"

    const-string/jumbo v10, "bannerId  set to 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v9, -0x1

    iput v9, p0, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    .line 136
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_1
    return-void

    .line 114
    .restart local v0    # "counter":I
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "f":[Ljava/lang/reflect/Field;
    .restart local v5    # "max":I
    .restart local v8    # "resId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "counter":I
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "f":[Ljava/lang/reflect/Field;
    .end local v5    # "max":I
    .end local v8    # "resId":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "OffHostService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBanner() Resources exception ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
