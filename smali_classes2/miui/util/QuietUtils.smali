.class public Lmiui/util/QuietUtils;
.super Ljava/lang/Object;
.source "QuietUtils.java"


# static fields
.field private static AUTHORIZE_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "QuietUtils"

.field public static final TYPE_AUDIO_MANAGER:I = 0x8

.field public static final TYPE_MEDIA_PLAYER:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x5

.field public static final TYPE_POWER_MANAGER:I = 0x1

.field public static final TYPE_POWER_MANAGER_SERVICE:I = 0x3

.field public static final TYPE_POWER_MANAGER_WAKEUP:I = 0x2

.field public static final TYPE_SOUND_POOL:I = 0x6

.field public static final TYPE_VIBRATOR:I = 0x4

.field public static final ZENMODE_TYPE_ALLW_FROM:Ljava/lang/String; = "5"

.field public static final ZENMODE_TYPE_CALL_STATUS:Ljava/lang/String; = "3"

.field public static final ZENMODE_TYPE_EVENT_STATUS:Ljava/lang/String; = "4"

.field public static final ZENMODE_TYPE_MESSAGE_STATUS:Ljava/lang/String; = "2"

.field public static final ZENMODE_TYPE_STATUS:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    new-array v1, v6, [Ljava/lang/String;

    .line 81
    const-string/jumbo v2, "android"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.deskclock"

    aput-object v2, v1, v4

    .line 82
    const-string/jumbo v2, "com.android.providers.telephony"

    aput-object v2, v1, v5

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/util/QuietUtils;->AUTHORIZE_PACKAGE:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 86
    const-string/jumbo v2, "com.android.phone"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.incallui"

    aput-object v2, v1, v4

    .line 87
    const-string/jumbo v2, "com.android.server.telecom"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.miui.voip"

    aput-object v2, v1, v6

    .line 88
    const-string/jumbo v2, "com.android.mms"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/util/QuietUtils;->PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isCheckTopActivity"    # Z

    .prologue
    const/4 v1, 0x1

    .line 281
    sget-object v0, Lmiui/util/QuietUtils;->AUTHORIZE_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    return v1

    .line 285
    :cond_0
    if-eqz p2, :cond_1

    .line 286
    invoke-static {p0, p1}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_1

    .line 287
    return v1

    .line 289
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkNewQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 10
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "targetPkg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 221
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    return v9

    .line 223
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 224
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 226
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "cPkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v3

    .line 228
    .local v3, "zenMode":I
    const-string/jumbo v4, "QuietUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cpkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    packed-switch p0, :pswitch_data_0

    .line 269
    :cond_1
    :pswitch_0
    return v9

    .line 231
    :pswitch_1
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    const-string/jumbo v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    const-string/jumbo v4, "com.android.deskclock"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    const-string/jumbo v4, "QuietUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "POWER_MANAGER_WAKEUP pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v7

    .line 240
    :pswitch_2
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 243
    return v7

    .line 248
    :pswitch_3
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    return v7

    .line 254
    :pswitch_4
    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    if-ne p1, v8, :cond_1

    .line 255
    :cond_2
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 254
    if-eqz v4, :cond_1

    .line 256
    const-string/jumbo v4, "com.android.phone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    const-string/jumbo v4, "com.miui.voip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    const-string/jumbo v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 259
    invoke-static {v8}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 262
    const-string/jumbo v4, "QuietUtils"

    const-string/jumbo v5, "speaker volume is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v7

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static checkQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "targetPkg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 100
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_0

    .line 101
    invoke-static {p0, p1, p2, p3}, Lmiui/util/QuietUtils;->checkNewQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 104
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 105
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 107
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cPkg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 214
    :cond_1
    :pswitch_0
    return v4

    .line 110
    :pswitch_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, p1

    if-nez v3, :cond_2

    .line 111
    const/16 v3, 0x1a

    if-ne p1, v3, :cond_3

    .line 115
    :cond_2
    :goto_0
    const-string/jumbo v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string/jumbo v3, "com.android.deskclock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const-string/jumbo v3, "com.google.android.talk"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 110
    if-eqz v3, :cond_1

    .line 119
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "POWER_MANAGER pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v6

    .line 112
    :cond_3
    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    .line 113
    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    .line 114
    if-ne p1, v6, :cond_1

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const-string/jumbo v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    const-string/jumbo v3, "com.android.deskclock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "POWER_MANAGER_WAKEUP pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v6

    .line 134
    :pswitch_3
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const-string/jumbo v3, "com.android.deskclock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    const-string/jumbo v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    const-string/jumbo v3, "com.android.cellbroadcastreceiver"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "CL"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_4
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_5

    .line 139
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VIBRATOR pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v6

    .line 142
    :cond_5
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VIBRATOR pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v6

    .line 150
    :pswitch_4
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_8

    .line 153
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NOTIFICATION pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " targetPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v6

    .line 151
    :cond_6
    if-eqz p2, :cond_7

    move-object v3, p2

    goto :goto_1

    :cond_7
    const-string/jumbo v3, ""

    goto :goto_1

    .line 156
    :cond_8
    if-eqz p3, :cond_9

    .line 157
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NOTIFICATION pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " targetPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v6

    .line 161
    :cond_9
    if-eqz p2, :cond_1

    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NOTIFICATION pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " targetPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v6

    .line 171
    :pswitch_5
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_a

    .line 173
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOUND_POOL pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v6

    .line 176
    :cond_a
    invoke-static {v1, v0, v6}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SOUND_POOL pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v6

    .line 184
    :pswitch_6
    if-ne p1, v5, :cond_1

    .line 185
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 184
    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_b

    .line 187
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MEDIA_PLAYER pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v6

    .line 190
    :cond_b
    invoke-static {v1, v0, v6}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MEDIA_PLAYER pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v6

    .line 198
    :pswitch_7
    const/4 v3, 0x5

    if-eq p1, v3, :cond_c

    if-ne p1, v5, :cond_1

    .line 199
    :cond_c
    const-string/jumbo v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    invoke-static {v1, v0}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 198
    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_d

    .line 203
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AUDIO_MANAGER pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v6

    .line 206
    :cond_d
    invoke-static {v1, v0, v6}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    const-string/jumbo v3, "QuietUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AUDIO_MANAGER pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v6

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 299
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const-string/jumbo v2, "com.miui.voip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    sget-object v2, Lmiui/util/QuietUtils;->PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    :cond_3
    :goto_1
    return v0

    .line 305
    :cond_4
    const-string/jumbo v2, "4"

    invoke-static {p0, v2}, Lmiui/util/QuietUtils;->isZenmode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method private static isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 352
    :try_start_0
    const-string/jumbo v6, "activity"

    .line 351
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 353
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 354
    .local v3, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appProcess$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 355
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v6, v8, :cond_0

    .line 356
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 357
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 358
    const/4 v6, 0x1

    return v6

    .line 356
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "appProcess$iterator":Ljava/util/Iterator;
    .end local v3    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 364
    .local v4, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "QuietUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Fail to get RunningProcessInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_2
    return v7
.end method

.method private static isZenmode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v6, 0x0

    .line 323
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "content://antispamCommon/zenmode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 326
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 327
    const/4 v0, 0x1

    .line 332
    if-eqz v6, :cond_0

    .line 334
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 335
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 332
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v6, :cond_2

    .line 334
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 335
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 329
    .end local v7    # "e":Ljava/lang/Exception;
    .local v6, "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v7

    .line 330
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "QuietUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception when checkZenmodConfig :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 331
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0
.end method
