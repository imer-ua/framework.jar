.class public Lcom/gsma/services/nfc/NfcController;
.super Ljava/lang/Object;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/NfcController$Callbacks;,
        Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4

.field private static sNfcController:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/gsma/services/nfc/NfcController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCb:Lcom/gsma/services/nfc/NfcController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

.field private mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

.field private mOffHostServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation
.end field

.field private mOffhostService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/gsma/services/nfc/NfcController;)Lcom/gsma/services/nfc/NfcController$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCb:Lcom/gsma/services/nfc/NfcController$Callbacks;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->sNfcController:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServiceList:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffhostService:Ljava/util/HashMap;

    .line 60
    iput-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    .line 64
    new-instance v0, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;-><init>(Lcom/gsma/services/nfc/NfcController;)V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    .line 65
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-direct {v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServiceList:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffhostService:Ljava/util/HashMap;

    .line 60
    iput-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    .line 69
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;-><init>(Lcom/gsma/services/nfc/NfcController;)V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    .line 71
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-direct {v0, p1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    .line 68
    return-void
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
    .line 329
    .local p1, "mAidGroups":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/nfc/AidGroup;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v3, "mApduAidGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    const/4 v4, 0x0

    .line 331
    .local v4, "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
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

    .line 333
    .local v5, "mGroup":Lcom/gsma/services/nfc/AidGroup;
    new-instance v4, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v4, "mCeAidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v2

    .line 335
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

    .line 336
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
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
    .line 343
    iget-object v1, p1, Lcom/gsma/services/nfc/OffHostService;->mAidGroupList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/gsma/services/nfc/NfcController;->convertToCeAidGroupList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 344
    .local v7, "mAidGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget v1, p1, Lcom/gsma/services/nfc/OffHostService;->mUserId:I

    iget-object v2, p1, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    iget-object v4, p1, Lcom/gsma/services/nfc/OffHostService;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/gsma/services/nfc/OffHostService;->mServiceName:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/gsma/services/nfc/OffHostService;->mModifiable:Z

    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    .local v0, "mNxpOffHostService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 347
    iget v1, p1, Lcom/gsma/services/nfc/OffHostService;->mBannerResId:I

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 348
    iget-object v1, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    return-object v0
.end method

.method public static getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callbacks"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context or NfcController.Callbacks cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    new-instance v0, Lcom/gsma/services/nfc/NfcController;

    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/NfcController;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "controller":Lcom/gsma/services/nfc/NfcController;
    invoke-interface {p1, v0}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V

    .line 163
    return-void
.end method

.method private getRandomString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v2, 0x2710

    .line 254
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 255
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v1, v2, 0x2710

    .line 256
    .local v1, "randomNum":I
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public defineOffHostService(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 7
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SEName"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v6, 0x1

    .line 270
    .local v6, "modifiable":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid description provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid SEName provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/gsma/services/nfc/NfcController;->getRandomString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "serviceName":Ljava/lang/String;
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget v1, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    .local v0, "offHostService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 280
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 281
    new-instance v1, Lcom/gsma/services/nfc/OffHostService;

    invoke-direct {v1, v0}, Lcom/gsma/services/nfc/OffHostService;-><init>(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)V

    return-object v1
.end method

.method public deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)V
    .locals 4
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iget v2, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/NfcController;->convertToNxpOffhostService(Lcom/gsma/services/nfc/OffHostService;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z

    .line 289
    return-void
.end method

.method public disableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string/jumbo v1, "Host Card Emulation (HCE) is supported"

    invoke-direct {v0, v1}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string/jumbo v1, "Host Card Emulation (HCE) is supported"

    invoke-direct {v0, v1}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableNfcController(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 2
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCb:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 191
    invoke-virtual {p0}, Lcom/gsma/services/nfc/NfcController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCb:Lcom/gsma/services/nfc/NfcController$Callbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 189
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNxpCallback:Lcom/gsma/services/nfc/NfcController$NxpNfcControllerCallback;

    invoke-virtual {v0, v1}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V

    goto :goto_0
.end method

.method public getDefaultOffHostService()Lcom/gsma/services/nfc/OffHostService;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v2, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iget v3, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    invoke-virtual {v2, v3, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v1

    .line 323
    .local v1, "service":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v1, :cond_0

    .line 324
    new-instance v2, Lcom/gsma/services/nfc/OffHostService;

    invoke-direct {v2, v1}, Lcom/gsma/services/nfc/OffHostService;-><init>(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)V

    return-object v2

    .line 326
    :cond_0
    return-object v4
.end method

.method public getOffHostServices()[Lcom/gsma/services/nfc/OffHostService;
    .locals 9

    .prologue
    .line 302
    iget-object v7, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    iget v8, p0, Lcom/gsma/services/nfc/NfcController;->mUserId:I

    invoke-virtual {v7, v8, v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 304
    .local v2, "mNxpOffhost":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v4, "mOffHostList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/OffHostService;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mHost$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .line 306
    .local v0, "mHost":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    new-instance v3, Lcom/gsma/services/nfc/OffHostService;

    invoke-direct {v3, v0}, Lcom/gsma/services/nfc/OffHostService;-><init>(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)V

    .line 307
    .local v3, "mOffHost":Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "mHost":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .end local v3    # "mOffHost":Lcom/gsma/services/nfc/OffHostService;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lcom/gsma/services/nfc/OffHostService;

    .line 310
    .local v5, "offHostServices":[Lcom/gsma/services/nfc/OffHostService;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/gsma/services/nfc/OffHostService;

    return-object v7
.end method

.method public isCardEmulationEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string/jumbo v1, "Host Card Emulation (HCE) is supported"

    invoke-direct {v0, v1}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    invoke-virtual {v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->isNxpNfcEnabled()Z

    move-result v0

    return v0
.end method
