.class public Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field private static final MW_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpNfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4


# instance fields
.field private mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxFlag:Z

.field private mEnable:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSeNameApduService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z

.field private seExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;


# direct methods
.method static synthetic -get0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return v0
.end method

.method static synthetic -get3(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return v0
.end method

.method static synthetic -set0(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 71
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 73
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 71
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 73
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 137
    :cond_2
    return-void
.end method

.method private ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "apduService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v14

    .line 191
    .local v14, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 192
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "sEname":Ljava/lang/String;
    const/4 v10, 0x0

    .line 195
    .local v10, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getModifiable()Z

    move-result v8

    .line 196
    .local v8, "modifiable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v11

    .line 197
    .local v11, "bannerId":I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 198
    .local v10, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    .line 199
    .local v3, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v9

    .line 200
    .local v9, "ApduAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget-object v6, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 201
    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 200
    invoke-direct/range {v2 .. v8}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    .local v2, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v8, :cond_0

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/AidGroup;

    .line 204
    .local v12, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v6, v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v13    # "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/AidGroup;

    .line 208
    .restart local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v6, v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v12    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v2, v11}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 214
    invoke-virtual {v2, v10}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 216
    return-object v2
.end method

.method private ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 18
    .param p1, "mService"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 226
    .local v3, "onHost":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getModifiable()Z

    move-result v14

    .line 228
    .local v14, "modifiable":Z
    const/4 v5, 0x0

    .line 229
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    const/4 v7, 0x0

    .line 234
    .local v7, "requiresUnlock":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 235
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 236
    .local v16, "seId":I
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 237
    .local v17, "seName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 238
    .local v15, "powerstate":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 240
    .local v8, "bannerId":I
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 241
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ServiceInfo;

    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 242
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v10, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 244
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 246
    const-string/jumbo v9, "com.nxp.uicc.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    const/16 v16, 0x2

    .line 257
    :goto_0
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 258
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 259
    .end local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string/jumbo v10, "Fixme: NXP:<Activity Name>"

    const/4 v12, 0x0

    move/from16 v9, p2

    .line 258
    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 260
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v1

    .line 248
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string/jumbo v9, "com.nxp.uicc2.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 249
    const/16 v16, 0x4

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v9, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 251
    const/16 v16, 0x1

    goto :goto_0

    .line 252
    :cond_2
    const-string/jumbo v9, "com.nxp.host.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 253
    const/16 v16, 0x0

    goto :goto_0

    .line 255
    :cond_3
    const-string/jumbo v9, "NxpNfcController"

    const-string/jumbo v10, "wrong Se name"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v6, 0x0

    .line 330
    const/4 v2, 0x0

    .line 332
    .local v2, "result":Z
    invoke-virtual {p3}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "serviceName":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 335
    .local v1, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2, v3, v1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 342
    .end local v2    # "result":Z
    :cond_0
    if-nez v2, :cond_1

    .line 343
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "GSMA: commitOffHostService Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v6

    .line 338
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "Exception:commitOffHostService failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    return v6

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/16 v18, 0x0

    .line 360
    .local v18, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 361
    .local v10, "userId":I
    const/16 v21, 0x0

    .line 362
    .local v21, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 363
    .local v4, "onHost":Z
    const/4 v6, 0x0

    .line 364
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v7, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, "requiresUnlock":Z
    const/4 v14, 0x0

    .line 368
    .local v14, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 369
    .local v19, "seId":I
    const/16 v17, -0x1

    .line 370
    .local v17, "powerstate":I
    const/4 v15, 0x1

    .line 373
    .local v15, "modifiable":Z
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 374
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 375
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v9, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 377
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 380
    const/16 v20, 0x0

    .line 381
    .local v20, "secureElement":Ljava/lang/String;
    const-string/jumbo v5, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SIM1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 382
    :cond_0
    const-string/jumbo v20, "com.nxp.uicc.ID"

    .line 391
    .end local v20    # "secureElement":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "com.nxp.uicc.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 392
    const/16 v19, 0x2

    .line 403
    :goto_1
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 404
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 405
    const-string/jumbo v11, "Fixme: NXP:<Activity Name>"

    .line 406
    const/4 v13, 0x0

    move-object/from16 v5, p3

    move/from16 v9, p4

    .line 404
    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 408
    .local v2, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v5, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v5, v10, v0, v1, v2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 418
    .end local v18    # "result":Z
    :cond_1
    if-nez v18, :cond_a

    .line 419
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v5, 0x0

    return v5

    .line 383
    .end local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .restart local v18    # "result":Z
    .restart local v20    # "secureElement":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "SIM2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    const-string/jumbo v20, "com.nxp.uicc2.ID"

    .local v20, "secureElement":Ljava/lang/String;
    goto :goto_0

    .line 385
    .local v20, "secureElement":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "eSE1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "eSE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    :cond_4
    const-string/jumbo v20, "com.nxp.smart_mx.ID"

    .local v20, "secureElement":Ljava/lang/String;
    goto :goto_0

    .line 388
    .local v20, "secureElement":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "wrong Se name"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v20    # "secureElement":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "com.nxp.uicc2.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 394
    const/16 v19, 0x4

    goto :goto_1

    .line 395
    :cond_7
    const-string/jumbo v5, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 396
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 397
    :cond_8
    const-string/jumbo v5, "com.nxp.host.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 398
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 400
    :cond_9
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "wrong Se name"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 414
    .restart local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :catch_0
    move-exception v16

    .line 415
    .local v16, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "NxpNfcController"

    const-string/jumbo v9, "Exception:commitOffHostService failed"

    move-object/from16 v0, v16

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/4 v5, 0x0

    return v5

    .line 422
    .end local v16    # "e":Landroid/os/RemoteException;
    .end local v18    # "result":Z
    :cond_a
    const/4 v5, 0x1

    return v5
.end method

.method public deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, "result":Z
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 272
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v3, p1, p2, v0}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    .end local v2    # "result":Z
    :goto_0
    if-nez v2, :cond_0

    .line 277
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v3, 0x0

    return v3

    .line 273
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "Exception:deleteOffHostService failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 435
    .local v2, "userId":I
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v4, v2, p1, v3}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 439
    .end local v1    # "result":Z
    :goto_0
    if-nez v1, :cond_0

    .line 440
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v3, 0x0

    return v3

    .line 436
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NxpNfcController"

    const-string/jumbo v4, "Exception:deleteOffHostService failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v1, p2, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NxpNfcController"

    const-string/jumbo v2, "enableMultiReception failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    return-void
.end method

.method public enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V
    .locals 5
    .param p1, "cb"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "ownerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string/jumbo v3, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 310
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 312
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, v3, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v2

    .line 319
    .local v2, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    return-object v2

    .line 313
    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "getDefaultOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-object v6

    .line 321
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string/jumbo v4, "NxpNfcController"

    const-string/jumbo v5, "getDefaultOffHostService: Service is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v6
.end method

.method public getDefaultOffHostService(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 501
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService: Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x1

    .line 505
    .local v1, "isLast":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 506
    .local v12, "userId":I
    const/4 v3, 0x0

    .line 507
    .local v3, "seName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 509
    .local v11, "seId":I
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v12, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v9

    .line 510
    .local v9, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v11

    .line 511
    const/4 v0, 0x2

    if-ne v0, v11, :cond_0

    .line 512
    const-string/jumbo v3, "com.nxp.uicc.ID"

    .line 520
    .end local v3    # "seName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDefaultOffHostService: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 523
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 529
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v9    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v10

    .line 530
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService failed"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v0, 0x0

    return v0

    .line 513
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v3    # "seName":Ljava/lang/String;
    .restart local v9    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const/4 v0, 0x4

    if-ne v0, v11, :cond_1

    .line 514
    :try_start_1
    const-string/jumbo v3, "com.nxp.uicc2.ID"

    .local v3, "seName":Ljava/lang/String;
    goto :goto_0

    .line 515
    .local v3, "seName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    if-ne v0, v11, :cond_2

    .line 516
    const-string/jumbo v3, "com.nxp.smart_mx.ID"

    .local v3, "seName":Ljava/lang/String;
    goto :goto_0

    .line 518
    .local v3, "seName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "Wrong SE ID"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    .end local v3    # "seName":Ljava/lang/String;
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    .line 528
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    .line 526
    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getDefaultOffHostService: End"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x1

    return v0
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nxp/nfc/gsma/internal/NxpOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 292
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 298
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v3, v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "NxpNfcController"

    const-string/jumbo v7, "getOffHostServices failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    const/4 v6, 0x0

    return-object v6

    .line 300
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v2
.end method

.method public getOffHostServices(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 452
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 453
    .local v13, "userId":I
    const/4 v1, 0x0

    .line 454
    .local v1, "isLast":Z
    const/4 v3, 0x0

    .line 455
    .local v3, "seName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 457
    .local v12, "seId":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v9, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v13, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 461
    const/4 v11, 0x0

    .end local v3    # "seName":Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 463
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 466
    :cond_0
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v12

    .line 467
    const/4 v0, 0x2

    if-ne v0, v12, :cond_1

    .line 468
    const-string/jumbo v3, "com.nxp.uicc.ID"

    .line 477
    :goto_1
    const-string/jumbo v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOffHostServices: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 480
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 487
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 488
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "getOffHostServices failed"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    const/4 v0, 0x0

    return v0

    .line 469
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v11    # "i":I
    :cond_1
    const/4 v0, 0x4

    if-ne v0, v12, :cond_2

    .line 470
    :try_start_1
    const-string/jumbo v3, "com.nxp.uicc2.ID"

    .local v3, "seName":Ljava/lang/String;
    goto :goto_1

    .line 471
    .end local v3    # "seName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    if-ne v0, v12, :cond_3

    .line 472
    const-string/jumbo v3, "com.nxp.smart_mx.ID"

    .restart local v3    # "seName":Ljava/lang/String;
    goto :goto_1

    .line 474
    .end local v3    # "seName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "NxpNfcController"

    const-string/jumbo v2, "Wrong SE ID"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    .line 485
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p2

    .line 483
    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 461
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 492
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "aidGroup$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public isNxpNfcEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
