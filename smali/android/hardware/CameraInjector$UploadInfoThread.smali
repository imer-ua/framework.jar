.class Landroid/hardware/CameraInjector$UploadInfoThread;
.super Ljava/lang/Thread;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadInfoThread"
.end annotation


# instance fields
.field mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;


# direct methods
.method private constructor <init>(Landroid/hardware/CameraInjector$CameraExInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/CameraInjector$CameraExInfo;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$UploadInfoThread;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/CameraInjector$CameraExInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/CameraInjector$UploadInfoThread;-><init>(Landroid/hardware/CameraInjector$CameraExInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v3, :cond_1

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_save_camera_info"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.miui.klo.bugreport"

    const-string/jumbo v4, "com.miui.klo.bugreport.service.ReceiveCameraInfoService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "starttime"

    iget-object v4, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-get4(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 118
    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-get2(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 119
    const-string/jumbo v3, "endtime"

    iget-object v4, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-get2(Landroid/hardware/CameraInjector$CameraExInfo;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 121
    :cond_0
    const-string/jumbo v4, "frontorback"

    iget-object v3, p0, Landroid/hardware/CameraInjector$UploadInfoThread;->mCameraExInfo:Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v5, "camera-id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
