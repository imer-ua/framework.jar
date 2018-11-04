.class public abstract Lmiui/telephony/MiuiTelephonyBase;
.super Lmiui/telephony/IMiuiTelephony$Stub;
.source "MiuiTelephonyBase.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "MiuiTelephonyBase"

    sput-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/telephony/IMiuiTelephony$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected getCellLocation method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public isImsRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatformForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUserForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatformForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ResultReceiver;

    .prologue
    .line 76
    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected setCallForwardingOption method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public setIccCardActivate(IZ)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "isActivate"    # Z

    .prologue
    .line 79
    return-void
.end method
