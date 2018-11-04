.class public Lmiui/telephony/TelephonyManagerEx;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManagerEx$Holder;
    }
.end annotation


# static fields
.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyManagerEx;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;-><init>()V

    return-void
.end method

.method private static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v4, "country_detector"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 1282
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 1283
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 1284
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1288
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 1289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1290
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1291
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .end local v1    # "countryIso":Ljava/lang/String;
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v1
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1250
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1299
    invoke-static {p0}, Lmiui/telephony/TelephonyManagerEx;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "defaultCountryIso":Ljava/lang/String;
    const-string/jumbo v9, "IN"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1301
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v9, "100"

    const/4 v10, 0x0

    aput-object v9, v1, v10

    const-string/jumbo v9, "101"

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string/jumbo v9, "102"

    const/4 v10, 0x2

    aput-object v9, v1, v10

    const-string/jumbo v9, "108"

    const/4 v10, 0x3

    aput-object v9, v1, v10

    .line 1302
    .local v1, "INemergencyNumbers":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v10, v1

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v0, v1, v9

    .line 1303
    .local v0, "INemergencyNum":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1304
    const-string/jumbo v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLocalEmergencyNumberInternal :number:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not a real IN emergency number,return false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v9, 0x0

    return v9

    .line 1302
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1309
    .end local v0    # "INemergencyNum":Ljava/lang/String;
    .end local v1    # "INemergencyNumbers":[Ljava/lang/String;
    :cond_1
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    invoke-virtual {v9}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v5

    .line 1310
    .local v5, "phoneCount":I
    const/4 v9, 0x2

    if-ge v5, v9, :cond_3

    .line 1311
    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    :goto_1
    return v9

    :cond_2
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    goto :goto_1

    .line 1316
    :cond_3
    const-string/jumbo v9, "IT"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "MM"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1317
    :cond_4
    const/4 v2, 0x0

    .line 1318
    .local v2, "count":I
    const/4 v8, -0x1

    .line 1319
    .local v8, "validSlot":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 1320
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    .line 1321
    add-int/lit8 v2, v2, 0x1

    .line 1322
    move v8, v4

    .line 1319
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1325
    :cond_6
    const-string/jumbo v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLocalEmergencyNumberInternal : in Italy or Myanmar,insert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " sim card, validSlot is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v9, 0x1

    if-ne v2, v9, :cond_a

    .line 1327
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v9, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    .line 1328
    .local v7, "subId":I
    if-eqz p2, :cond_7

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1329
    :cond_7
    if-nez p2, :cond_9

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    .line 1328
    if-eqz v9, :cond_9

    .line 1331
    :cond_8
    const/4 v9, 0x1

    return v9

    .line 1333
    :cond_9
    const/4 v9, 0x0

    return v9

    .line 1337
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v7    # "subId":I
    .end local v8    # "validSlot":I
    :cond_a
    const/4 v6, 0x0

    .local v6, "slotId":I
    :goto_3
    if-ge v6, v5, :cond_e

    .line 1338
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v9, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    .line 1339
    .restart local v7    # "subId":I
    if-eqz p2, :cond_b

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1340
    :cond_b
    if-nez p2, :cond_d

    invoke-static {p0, v7, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    .line 1339
    if-eqz v9, :cond_d

    .line 1342
    :cond_c
    const/4 v9, 0x1

    return v9

    .line 1337
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1345
    .end local v7    # "subId":I
    :cond_e
    const/4 v9, 0x0

    return v9
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1276
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private normalizeSlotId(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 72
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_0

    .line 73
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    return v0

    .line 75
    :cond_0
    return p1
.end method

.method private normalizeSubscriptionId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 79
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_0

    .line 80
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0

    .line 82
    :cond_0
    return p1
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 3

    .prologue
    .line 1073
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 3

    .prologue
    .line 1048
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error call ITelecomService#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1117
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1121
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    .line 1122
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1123
    const/4 v0, 0x0

    return v0

    .line 1126
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityForSubscription(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1130
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    .line 1131
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    return v0

    .line 1135
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 1064
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    const/4 v1, 0x0

    return v1
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSlot(I)Ljava/util/List;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSubscription(I)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 770
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 775
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 780
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v3

    .line 271
    .local v3, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v3, :cond_0

    .line 272
    return-object v7

    .line 274
    :cond_0
    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lmiui/telephony/IMiuiTelephony;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "getCellLocationForSlot returning null because bundle is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v7

    .line 279
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 280
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "getCellLocationForSlot returning null because CellLocation is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-object v7

    .line 284
    :cond_2
    return-object v1

    .line 285
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v3    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCellLocationForSlot returning null due to Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v7
.end method

.method public getCellLocationForSubscription(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 309
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCtVolteSupportedMode()I
    .locals 1

    .prologue
    .line 1380
    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CT_VOLTE_SUPPORTED_MODE:I

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 790
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    .line 791
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 792
    const/4 v0, 0x0

    return v0

    .line 795
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 800
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    .line 801
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 802
    const/4 v0, 0x0

    return v0

    .line 805
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 810
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 815
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    .line 816
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 817
    const/4 v0, 0x0

    return v0

    .line 820
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 825
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    .line 826
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 827
    const/4 v0, 0x0

    return v0

    .line 830
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 182
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 187
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 5
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
    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 146
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceIdList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 112
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 117
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 199
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getImei(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 200
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getImeiForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v2
.end method

.method public getImeiForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 208
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList()Ljava/util/List;
    .locals 5
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
    const/4 v2, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 157
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getImeiList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 158
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImeiList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 730
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 735
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 220
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getMeid(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 221
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMeidForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v2
.end method

.method public getMeidForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 229
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList()Ljava/util/List;
    .locals 5
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
    const/4 v2, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 168
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getMeidList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 169
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMeidList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 124
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/telephony/IMiuiTelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 125
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object v2
.end method

.method public getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1180
    :try_start_0
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_1

    .line 1181
    const-class v2, Lmiui/telephony/TelephonyManagerEx;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :try_start_1
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 1183
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2

    .line 1188
    :cond_1
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_2

    .line 1189
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    return-object v1

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v3
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 854
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 867
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSlot(I)Ljava/util/List;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSubscription(I)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkClass(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 590
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 497
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 502
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 467
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 472
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 482
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 487
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 512
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 517
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 601
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 443
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 448
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 679
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 684
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 649
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 654
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 664
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 669
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 694
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 699
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 629
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSlot(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 634
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 639
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSmallDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 135
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/telephony/IMiuiTelephony;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSmallDeviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v2
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1151
    const/4 v1, 0x0

    .line 1153
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1154
    .local v2, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v2, :cond_2

    move-object v1, v3

    .line 1159
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    if-nez v1, :cond_1

    .line 1160
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-static {p2}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1161
    invoke-virtual {p0, p2}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 1163
    :cond_1
    :goto_1
    return-object v1

    .line 1154
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_2
    :try_start_1
    invoke-interface {v2, p1, p2, p3, p4}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1155
    .end local v2    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getSpn error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1161
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, p3

    .local v1, "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 715
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 720
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    .line 937
    .local v0, "slot":I
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 939
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 941
    aget-object v3, v2, v0

    return-object v3

    .line 944
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 760
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 765
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 745
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 750
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 565
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 572
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    .line 612
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    .line 613
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 614
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const/4 v2, 0x1

    return v2

    .line 613
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasIccCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 624
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1231
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1232
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isImsRegistered(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1233
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isImsRegistered exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    return v2
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 539
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSubscription(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 551
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 1080
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    .line 1081
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1082
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    const/4 v2, 0x1

    return v2

    .line 1081
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOnForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1090
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscription(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1095
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    const/4 v1, 0x0

    return v1
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1142
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1143
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isSameOperator error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    return v2
.end method

.method public isSmsCapable()Z
    .locals 1

    .prologue
    .line 915
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 902
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1215
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1216
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByPlatform()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1217
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVolteEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    return v2
.end method

.method public isVtEnabledByPlatform()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1203
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVtEnabledByPlatform()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1204
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "isVtEnabledByPlatform exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    return v2
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 878
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 877
    return-void
.end method

.method public listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .prologue
    .line 883
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 884
    .local v0, "subId":I
    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 882
    return-void
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .prologue
    .line 889
    invoke-virtual {p2, p1}, Landroid/telephony/PhoneStateListener;->updateSubscription(I)I

    move-result v0

    .line 890
    .local v0, "old":I
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 891
    invoke-virtual {p2, v0}, Landroid/telephony/PhoneStateListener;->updateSubscription(I)I

    .line 888
    return-void
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1168
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1169
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .end local p3    # "value":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lmiui/telephony/IMiuiTelephony;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 1170
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "onOperatorNumericOrNameSet error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    return-object p3
.end method

.method public putTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2c

    .line 962
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v2

    .line 964
    .local v2, "slot":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 965
    .local v0, "data":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 966
    .local v5, "valArray":[Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 968
    .local v4, "v":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 969
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 973
    .end local v5    # "valArray":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 974
    const-string/jumbo v3, ""

    .line 975
    .local v3, "str":Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 976
    aget-object v3, v5, v1

    .line 978
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    const-string/jumbo p4, ""

    .end local p4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    if-eqz v5, :cond_4

    .line 985
    add-int/lit8 v1, v2, 0x1

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 986
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 989
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v7, 0x0

    .line 1350
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v0

    .line 1351
    .local v0, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1352
    invoke-interface/range {v0 .. v5}, Lmiui/telephony/IMiuiTelephony;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    .end local v0    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v6

    .line 1355
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setCallForwardingOption exception"

    invoke-static {v1, v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1356
    if-eqz p5, :cond_0

    .line 1357
    const/4 v1, -0x1

    invoke-virtual {p5, v1, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIccCardActivate(IZ)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .prologue
    .line 1365
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1366
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-eqz v1, :cond_0

    .line 1367
    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->setIccCardActivate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "setIccCardActivate error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1108
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    const/4 v1, 0x1

    return v1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    const/4 v1, 0x0

    return v1
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 1056
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error call ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1013
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSlot(ILjava/lang/String;)[I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1017
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscription(ILjava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1022
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1030
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSlot(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1034
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1039
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method
