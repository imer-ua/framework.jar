.class public Lmiui/security/SecurityManagerCompat;
.super Ljava/lang/Object;
.source "SecurityManagerCompat.java"


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field public static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final MTK:Ljava/lang/String; = "mediatek"

.field private static final PINECONE:Ljava/lang/String; = "pinecone"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final PRE_SCHEDULE_POWER_OFF_ALARM:I = 0x7

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final RTC_POWEROFF_WAKEUP_QCOM_M:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SecurityManagerCompat"

.field private static final TIME:Ljava/lang/String; = "time"

.field public static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_PINECONE:Ljava/lang/String; = "/sys/class/rtc/rtc1/wakealarm"

.field public static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 117
    .local v0, "hide":Z
    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public static createPackageParser(Ljava/lang/String;)Landroid/content/pm/PackageParser;
    .locals 1
    .param p0, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    return-object v0
.end method

.method public static parsePackage(Landroid/content/pm/PackageParser;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p0, "pp"    # Landroid/content/pm/PackageParser;
    .param p1, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    const/4 v1, 0x0

    return-object v1
.end method

.method private static sendCancelBootAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "time"

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    const-string/jumbo v1, "SecurityManagerCompat"

    const-string/jumbo v2, "Send cancel poweroff alarm broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private static sendSetBootAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "time"

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    const-string/jumbo v1, "SecurityManagerCompat"

    const-string/jumbo v2, "Send set poweroff alarm broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public static startActvity(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 47
    const/4 v3, 0x0

    .line 49
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object v6, p2

    move-object/from16 v7, p3

    .line 47
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 57
    const/4 v3, 0x0

    .line 59
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v12, p5

    .line 57
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "wakeTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 66
    const-string/jumbo v2, "mediatek"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 69
    .local v1, "pi":Landroid/app/PendingIntent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_0

    const/4 v2, 0x7

    :goto_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 69
    .restart local v0    # "am":Landroid/app/AlarmManager;
    .restart local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 70
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_1
    const-string/jumbo v2, "leadcore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const-string/jumbo v2, "/sys/comip/rtc_alarm"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 72
    :cond_2
    const-string/jumbo v2, "pinecone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    const-string/jumbo v2, "/sys/class/rtc/rtc1/wakealarm"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    const-string/jumbo v2, "/sys/class/rtc/rtc1/wakealarm"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 76
    :cond_3
    invoke-static {p0, p2, p3}, Lmiui/security/SecurityManagerCompat;->writeQcomBootTime(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method private static writeQcomBootTime(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeTime"    # J

    .prologue
    .line 82
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/rtc/rtc0/wakealarm"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string/jumbo v3, "/sys/class/rtc/rtc0/wakealarm"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    const-string/jumbo v3, "SecurityManagerCompat"

    const-string/jumbo v4, "Wake up time updated to wakealarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 85
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1

    .line 87
    const-string/jumbo v3, "alarm"

    .line 86
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 89
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 88
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 91
    .local v2, "pi":Landroid/app/PendingIntent;
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SecurityManagerCompat"

    const-string/jumbo v4, "alarm type 5 not supported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :cond_1
    invoke-static {p0, p1, p2}, Lmiui/security/SecurityManagerCompat;->sendCancelBootAlarm(Landroid/content/Context;J)V

    .line 98
    invoke-static {p0, p1, p2}, Lmiui/security/SecurityManagerCompat;->sendSetBootAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method
