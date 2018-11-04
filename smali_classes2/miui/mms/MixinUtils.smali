.class public Lmiui/mms/MixinUtils;
.super Ljava/lang/Object;
.source "MixinUtils.java"


# static fields
.field private static final EU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PK_MCC:Ljava/lang/String; = "410"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    .line 16
    const-string/jumbo v2, "AT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "BE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "BG"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "CY"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "CZ"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 17
    const-string/jumbo v2, "DE"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "DK"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "EE"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "ES"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "FI"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 18
    const-string/jumbo v2, "FR"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "GB"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "GR"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "HR"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "HU"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 19
    const-string/jumbo v2, "IE"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "IT"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "LT"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "LU"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "LV"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 20
    const-string/jumbo v2, "MT"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "NL"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "PL"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "PT"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "RO"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 21
    const-string/jumbo v2, "SE"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "SI"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "SK"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/mms/MixinUtils;->EU:Ljava/util/Set;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInEURegion()Z
    .locals 3

    .prologue
    .line 24
    const-string/jumbo v1, "ro.miui.region"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "country":Ljava/lang/String;
    sget-object v1, Lmiui/mms/MixinUtils;->EU:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMxSupported()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    return v3

    .line 55
    :cond_1
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_2

    .line 56
    return v4

    .line 59
    :cond_2
    invoke-static {}, Lmiui/mms/MixinUtils;->isInEURegion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    return v3

    .line 64
    :cond_3
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 65
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 66
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string/jumbo v2, "410"

    invoke-static {v0, v2}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    return v3

    .line 65
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_5
    return v4
.end method

.method public static isMxSupported(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    return v1

    .line 37
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    .line 38
    return v2

    .line 40
    :cond_2
    invoke-static {}, Lmiui/mms/MixinUtils;->isInEURegion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    return v1

    .line 44
    :cond_3
    const-string/jumbo v0, "410"

    invoke-static {p0, v0}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    return v1

    .line 47
    :cond_4
    return v2
.end method

.method private static matchImsi(ILjava/lang/String;)Z
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
