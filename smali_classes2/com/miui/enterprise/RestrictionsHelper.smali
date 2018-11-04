.class public Lcom/miui/enterprise/RestrictionsHelper;
.super Ljava/lang/Object;
.source "RestrictionsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getControlState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static handleAirplaneChange(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Z

    .prologue
    const/4 v3, 0x0

    .line 75
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 76
    return p1

    .line 78
    :cond_0
    const-string/jumbo v1, "airplane_state"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "wifiState":I
    if-nez v0, :cond_1

    .line 80
    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "Airplane mod is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v3

    .line 83
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 84
    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "Airplane mod is force opened"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x1

    return v1

    .line 87
    :cond_2
    return p1
.end method

.method public static handleBluetoothChange(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 57
    return v4

    .line 59
    :cond_0
    const-string/jumbo v1, "bluetooth_state"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "bluetoothState":I
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bluetooth restrict state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 62
    return v5

    .line 64
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 65
    return v5

    .line 67
    :cond_2
    return v4
.end method

.method public static hasAirplaneRestriction(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string/jumbo v0, "airplane_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNFCRestriction(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string/jumbo v0, "nfc_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_0

    .line 21
    return v1

    .line 23
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_0

    .line 28
    return v1

    .line 30
    :cond_0
    invoke-static {p0, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static hasWifiRestriction(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string/jumbo v0, "wifi_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCameraRestricted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x0

    return v1

    .line 41
    :cond_0
    const-string/jumbo v1, "disallow_camera"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, "isRestricted":Z
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Camera is restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v0
.end method

.method public static isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 96
    const-string/jumbo v0, "disallow_sdcard"

    .line 95
    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v0, "Enterprise"

    const-string/jumbo v1, "Sdcard is restricted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v2

    .line 100
    :cond_1
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 101
    const-string/jumbo v0, "disable_usb_device"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 102
    const-string/jumbo v0, "Enterprise"

    const-string/jumbo v1, "Usb device is restricted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v2

    .line 105
    :cond_2
    return v1
.end method

.method private static isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    sget-boolean v3, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v3, :cond_0

    .line 118
    return v2

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "state":I
    const-string/jumbo v3, "Enterprise"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v0, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static isUsbDeviceRestricted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    return v1

    .line 50
    :cond_0
    const-string/jumbo v1, "disable_usb_device"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 51
    .local v0, "isRestricted":Z
    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Usb device is restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return v0
.end method
