.class public abstract Lorg/ifaa/android/manager/IFAAManager;
.super Ljava/lang/Object;
.source "IFAAManager.java"


# static fields
.field private static final IFAA_VERSION_V2:I = 0x2

.field private static final IFAA_VERSION_V3:I = 0x3

.field static sIfaaVer:I

.field static sIsFod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/android/manager/IFAAManager;->sIsFod:Z

    .line 15
    const/4 v0, 0x1

    sput v0, Lorg/ifaa/android/manager/IFAAManager;->sIfaaVer:I

    .line 18
    sget-boolean v0, Lorg/ifaa/android/manager/IFAAManager;->sIsFod:Z

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x3

    sput v0, Lorg/ifaa/android/manager/IFAAManager;->sIfaaVer:I

    .line 10
    :goto_0
    return-void

    .line 20
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 21
    const/4 v0, 0x2

    sput v0, Lorg/ifaa/android/manager/IFAAManager;->sIfaaVer:I

    goto :goto_0

    .line 23
    :cond_1
    const-string/jumbo v0, "teeclientjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public native processCmd(Landroid/content/Context;[B)[B
.end method

.method public abstract startBIOManager(Landroid/content/Context;I)I
.end method
