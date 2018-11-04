.class public Lmiui/securitycenter/powercenter/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/securitycenter/powercenter/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field static final APP:I = 0x6

.field static final BLUETOOTH:I = 0x4

.field static final CAMERA:I = 0x9

.field static final CELL:I = 0x1

.field static final FLASHLIGHT:I = 0x7

.field static final IDLE:I = 0x0

.field static final OTHER:I = 0xa

.field static final PHONE:I = 0x2

.field static final SCREEN:I = 0x5

.field static final USER:I = 0x8

.field static final WIFI:I = 0x3


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:I

.field gpsTime:J

.field mobileRxBytes:J

.field mobileTxBytes:J

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field uid:I

.field usageTime:J

.field value:D

.field wakeLockTime:J

.field wifiRunningTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IID)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drainType"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 37
    iput p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    .line 38
    iput-wide p4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    .line 39
    iput p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 40
    invoke-direct {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getNameAndPackageName(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private getNameAndPackageName(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 117
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget v8, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "packages":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 124
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v3, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 125
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 126
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 129
    :cond_1
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    array-length v8, v3

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v5, v3, v7

    .line 137
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 138
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget v9, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v9, :cond_5

    .line 140
    iget v9, v4, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 139
    invoke-virtual {v6, v5, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    .restart local v1    # "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 142
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 144
    :cond_4
    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 135
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 131
    .end local v5    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lmiui/securitycenter/powercenter/BatterySipper;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lmiui/securitycenter/powercenter/BatterySipper;

    .prologue
    .line 50
    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public getDrainType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    return v0
.end method

.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    return-object v0

    .line 57
    :cond_0
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 63
    :cond_2
    const-string/jumbo v0, "drainType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 66
    :cond_3
    const-string/jumbo v0, "usageTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 69
    :cond_4
    const-string/jumbo v0, "cpuTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 72
    :cond_5
    const-string/jumbo v0, "gpsTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 75
    :cond_6
    const-string/jumbo v0, "wifiRunningTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 78
    :cond_7
    const-string/jumbo v0, "cpuFgTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 81
    :cond_8
    const-string/jumbo v0, "wakeLockTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 84
    :cond_9
    const-string/jumbo v0, "mobileRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 87
    :cond_a
    const-string/jumbo v0, "mobileTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 90
    :cond_b
    const-string/jumbo v0, "noCoveragePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 93
    :cond_c
    const-string/jumbo v0, "defaultPackageName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0

    .line 96
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method
