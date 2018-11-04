.class public Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatus"
.end annotation


# static fields
.field private static final CONNECT_CHOICE_EXISTS:I = 0x1

.field private static final CONNECT_CHOICE_NOT_EXISTS:I = -0x1

.field public static final DISABLED_ASSOCIATION_REJECTION:I = 0x2

.field public static final DISABLED_AUTHENTICATION_FAILURE:I = 0x3

.field public static final DISABLED_AUTHENTICATION_NO_CREDENTIALS:I = 0x7

.field public static final DISABLED_BAD_LINK:I = 0x1

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0x9

.field public static final DISABLED_DHCP_FAILURE:I = 0x4

.field public static final DISABLED_DNS_FAILURE:I = 0x5

.field public static final DISABLED_NO_INTERNET:I = 0x8

.field public static final DISABLED_TLS_VERSION_MISMATCH:I = 0x6

.field public static final INVALID_NETWORK_SELECTION_DISABLE_TIMESTAMP:J = -0x1L

.field public static final NETWORK_SELECTION_DISABLED_MAX:I = 0xa

.field public static final NETWORK_SELECTION_ENABLE:I = 0x0

.field public static final NETWORK_SELECTION_ENABLED:I = 0x0

.field public static final NETWORK_SELECTION_PERMANENTLY_DISABLED:I = 0x2

.field public static final NETWORK_SELECTION_STATUS_MAX:I = 0x3

.field public static final NETWORK_SELECTION_TEMPORARY_DISABLED:I = 0x1

.field private static final QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

.field private static final QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;


# instance fields
.field private mCandidate:Landroid/net/wifi/ScanResult;

.field private mCandidateScore:I

.field private mConnectChoice:Ljava/lang/String;

.field private mConnectChoiceTimestamp:J

.field private mHasEverConnected:Z

.field private mNetworkSeclectionDisableCounter:[I

.field private mNetworkSelectionBSSID:Ljava/lang/String;

.field private mNetworkSelectionDisableReason:I

.field private mSeenInLastQualifiedNetworkSelection:Z

.field private mStatus:I

.field private mTemporarilyDisabledTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 887
    new-array v0, v5, [Ljava/lang/String;

    .line 888
    const-string/jumbo v1, "NETWORK_SELECTION_ENABLED"

    aput-object v1, v0, v2

    .line 889
    const-string/jumbo v1, "NETWORK_SELECTION_TEMPORARY_DISABLED"

    aput-object v1, v0, v3

    .line 890
    const-string/jumbo v1, "NETWORK_SELECTION_PERMANENTLY_DISABLED"

    aput-object v1, v0, v4

    .line 887
    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    .line 942
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 943
    const-string/jumbo v1, "NETWORK_SELECTION_ENABLE"

    aput-object v1, v0, v2

    .line 944
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_BAD_LINK"

    aput-object v1, v0, v3

    .line 945
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION "

    aput-object v1, v0, v4

    .line 946
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    aput-object v1, v0, v5

    .line 947
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 948
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_DNS_FAILURE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 949
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_TLS_VERSION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 950
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 951
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_NO_INTERNET"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 952
    const-string/jumbo v1, "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 942
    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    .line 862
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 989
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 1006
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    .line 1138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 1136
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    return-void
.end method

.method public static getNetworkDisableReasonString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 1146
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1147
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 1149
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearDisableReasonCounter()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1301
    return-void
.end method

.method public clearDisableReasonCounter(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v1, 0x0

    .line 1291
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1292
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput v1, v0, p1

    .line 1290
    return-void

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .prologue
    .line 1327
    iget v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 1328
    iget v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 1329
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1331
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    .line 1332
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v2, v2, v0

    .line 1331
    aput v2, v1, v0

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    :cond_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 1335
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 1336
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1338
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1326
    return-void
.end method

.method public getCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getCandidateScore()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    return v0
.end method

.method public getConnectChoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectChoiceTimestamp()J
    .locals 2

    .prologue
    .line 1108
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    return-wide v0
.end method

.method public getDisableReasonCounter(I)I
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1250
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1251
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v0, v0, p1

    return v0

    .line 1253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisableTime()J
    .locals 2

    .prologue
    .line 1240
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-wide v0
.end method

.method public getHasEverConnected()Z
    .locals 1

    .prologue
    .line 1133
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return v0
.end method

.method public getNetworkDisableReasonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1157
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_DISABLE_REASON:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNetworkSelectionBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionDisableReason()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return v0
.end method

.method public getNetworkSelectionStatus()I
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    return v0
.end method

.method public getNetworkStatusString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1125
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSeenInLastQualifiedNetworkSelection()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    return v0
.end method

.method public incrementDisableReasonCounter(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1277
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1278
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 1276
    return-void

    .line 1280
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDisabledByReason(I)Z
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1224
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1171
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNetworkPermanentlyDisabled()Z
    .locals 2

    .prologue
    .line 1185
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkTemporaryDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1178
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1363
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableReasonCounter(II)V

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 1376
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 1360
    return-void

    .line 1373
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1374
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1376
    goto :goto_2
.end method

.method public setCandidate(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "scanCandidate"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1059
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidate:Landroid/net/wifi/ScanResult;

    .line 1058
    return-void
.end method

.method public setCandidateScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 1076
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mCandidateScore:I

    .line 1075
    return-void
.end method

.method public setConnectChoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "newConnectChoice"    # Ljava/lang/String;

    .prologue
    .line 1100
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    .line 1099
    return-void
.end method

.method public setConnectChoiceTimestamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 1117
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceTimestamp:J

    .line 1116
    return-void
.end method

.method public setDisableReasonCounter(II)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "value"    # I

    .prologue
    .line 1264
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1265
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput p2, v0, p1

    .line 1263
    return-void

    .line 1267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisableTime(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 1232
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    .line 1231
    return-void
.end method

.method public setHasEverConnected(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1129
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    .line 1128
    return-void
.end method

.method public setNetworkSelectionBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    .line 1322
    return-void
.end method

.method public setNetworkSelectionDisableReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 1210
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1211
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    .line 1209
    return-void

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal reason value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkSelectionStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1193
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1194
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    .line 1192
    :cond_0
    return-void
.end method

.method public setSeenInLastQualifiedNetworkSelection(Z)V
    .locals 0
    .param p1, "seen"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mSeenInLastQualifiedNetworkSelection:Z

    .line 1042
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 1342
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1346
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1349
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1351
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1357
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    return-void

    .line 1355
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1357
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
