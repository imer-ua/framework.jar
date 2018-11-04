.class Lmiui/util/SmartCoverManager$PowerManagerWrapper;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SmartCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerWrapper"
.end annotation


# instance fields
.field final GO_TO_SLEEP:Ljava/lang/String;

.field final GO_TO_SLEEP_FLAG_NO_DOZE:I

.field final GO_TO_SLEEP_REASON_LID_SWITCH:I

.field final WAKE_UP:Ljava/lang/String;

.field mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lmiui/util/SmartCoverManager;


# direct methods
.method constructor <init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/util/SmartCoverManager;
    .param p2, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 260
    iput-object p1, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x3

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_REASON_LID_SWITCH:I

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP_FLAG_NO_DOZE:I

    .line 255
    const-string/jumbo v0, "wakeUp"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->WAKE_UP:Ljava/lang/String;

    .line 256
    const-string/jumbo v0, "goToSleep"

    iput-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->GO_TO_SLEEP:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 260
    return-void
.end method

.method private varargs callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    const/4 v3, 0x0

    .line 282
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 287
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v3, :cond_0

    .line 288
    return v5

    .line 283
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 293
    :try_start_1
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    return v6

    .line 297
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    return v5

    .line 294
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    return v5
.end method

.method private isAutoBrightnessMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    iget-object v2, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v2}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 326
    const-string/jumbo v3, "screen_brightness_mode"

    .line 327
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v4

    .line 324
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private restoreScreenBrightnessByLid()V
    .locals 8

    .prologue
    .line 305
    const-string/jumbo v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 307
    .local v1, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->isAutoBrightnessMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 309
    const-string/jumbo v5, "screen_auto_brightness_adj"

    .line 310
    iget-object v6, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v6}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v6

    .line 309
    const/high16 v7, 0x7fc00000    # NaNf

    .line 308
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 311
    .local v2, "screenAutoBrightnessAdjustmentSetting":F
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 304
    .end local v2    # "screenAutoBrightnessAdjustmentSetting":F
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v4, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v4}, Lmiui/util/SmartCoverManager;->-get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 314
    const-string/jumbo v5, "screen_brightness"

    iget-object v6, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    .line 315
    iget-object v7, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->this$0:Lmiui/util/SmartCoverManager;

    invoke-static {v7}, Lmiui/util/SmartCoverManager;->-get1(Lmiui/util/SmartCoverManager;)I

    move-result v7

    .line 313
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 316
    .local v3, "screenBrightnessSetting":I
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v3    # "screenBrightnessSetting":I
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartCoverManager"

    const-string/jumbo v5, "exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method goToSleep()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 265
    const-string/jumbo v0, "goToSleep"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 265
    new-array v2, v5, [Ljava/lang/Class;

    .line 266
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    .line 265
    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 264
    :cond_0
    return-void
.end method

.method wakeUp()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    invoke-direct {p0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->restoreScreenBrightnessByLid()V

    .line 274
    const-string/jumbo v0, "wakeUp"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "lid switch open"

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->callMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 271
    :cond_0
    return-void
.end method
