.class public final Landroid/provider/MiuiSettings$Key;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final CLOSE_APP:Ljava/lang/String; = "close_app"

.field public static final CLOSE_TALKBACK:Ljava/lang/String; = "close_talkback"

.field public static final DOUBLE_CLICK_POWER_KEY:Ljava/lang/String; = "double_click_power_key"

.field public static final GO_TO_SLEEP:Ljava/lang/String; = "go_to_sleep"

.field public static final KEY_BANK_CARD:Ljava/lang/String; = "key_bank_card_in_ese"

.field public static final KEY_BANK_CARD_DISABLE:I = 0x0

.field public static final KEY_COMBINATION_POWER_BACK:Ljava/lang/String; = "key_combination_power_back"

.field public static final KEY_COMBINATION_POWER_HOME:Ljava/lang/String; = "key_combination_power_home"

.field public static final KEY_COMBINATION_POWER_MENU:Ljava/lang/String; = "key_combination_power_menu"

.field public static final KEY_DOUBLE_PRESS_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_double_press_ai_button_settings"

.field public static final KEY_NONE:Ljava/lang/String; = "key_none"

.field public static final KEY_SINGLE_PRESS_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_single_press_ai_button_settings"

.field public static final KEY_TRANS_CARD:Ljava/lang/String; = "key_trans_card_in_ese"

.field public static final KEY_TRANS_CARD_DISABLE:I = 0x0

.field public static final KEY_UPDATED:Ljava/lang/String; = "key_updated"

.field public static final LAUNCH_CAMERA:Ljava/lang/String; = "launch_camera"

.field public static final LAUNCH_GOOGLE_SEARCH:Ljava/lang/String; = "launch_google_search"

.field public static final LAUNCH_RECENTS:Ljava/lang/String; = "launch_recents"

.field public static final LAUNCH_VOICE_ASSISTANT:Ljava/lang/String; = "launch_voice_assistant"

.field public static final LONG_PRESS_BACK_KEY:Ljava/lang/String; = "long_press_back_key"

.field public static final LONG_PRESS_HOME_KEY:Ljava/lang/String; = "long_press_home_key"

.field public static final LONG_PRESS_MENU_KEY:Ljava/lang/String; = "long_press_menu_key"

.field public static final LONG_PRESS_MENU_KEY_WHEN_LOCK:Ljava/lang/String; = "long_press_menu_key_when_lock"

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI:Ljava/lang/String; = "long_press_power_launch_xiaoai"

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI_DISABLE:I = 0x0

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI_ENABLE:I = 0x1

.field public static final LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "key_long_press_volume_down"

.field public static final LONG_PRESS_VOLUME_DOWN_DEFAULT:Ljava/lang/String; = "none"

.field public static final LONG_PRESS_VOLUME_DOWN_PAY:Ljava/lang/String; = "public_transportation_shortcuts"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP:Ljava/lang/String; = "Street-snap"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP_MOVIE:Ljava/lang/String; = "Street-snap-movie"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP_PICTURE:Ljava/lang/String; = "Street-snap-picture"

.field public static final MI_PAY:Ljava/lang/String; = "mi_pay"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final SCREEN_SHOT:Ljava/lang/String; = "screen_shot"

.field public static final SEND_BACK_WHEN_XIAOAI_APPEAR:Ljava/lang/String; = "send_back_when_xiaoai_appear"

.field public static final SHOW_MENU:Ljava/lang/String; = "show_menu"

.field public static final SINGLE_KEY_USE_ACTION:Ljava/lang/String; = "single_key_use_enable"

.field public static final SINGLE_KEY_USE_DISABLE:I = 0x0

.field public static final SINGLE_KEY_USE_ENABLE:I = 0x1

.field public static final SPLIT_SCREEN:Ljava/lang/String; = "split_screen"

.field public static final THREE_GESTURE_DOWN:Ljava/lang/String; = "three_gesture_down"

.field public static final TURN_ON_TORCH:Ljava/lang/String; = "turn_on_torch"

.field public static final VOLUMEKEY_LAUNCH_CAMERA:Ljava/lang/String; = "volumekey_launch_camera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 6404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6405
    const/4 v2, -0x2

    .line 6404
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6406
    .local v0, "function":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6407
    const-string/jumbo v1, "double_click_power_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6408
    const/4 v0, 0x0

    .line 6439
    .end local v0    # "function":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 6410
    .restart local v0    # "function":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "three_gesture_down"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6411
    const-string/jumbo v0, "screen_shot"

    goto :goto_0

    .line 6413
    :cond_2
    const-string/jumbo v1, "long_press_home_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6414
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_3

    .line 6415
    const-string/jumbo v0, "launch_voice_assistant"

    goto :goto_0

    .line 6417
    :cond_3
    const-string/jumbo v0, "launch_google_search"

    goto :goto_0

    .line 6420
    :cond_4
    const-string/jumbo v1, "long_press_menu_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6421
    const-string/jumbo v0, "show_menu"

    goto :goto_0

    .line 6423
    :cond_5
    const-string/jumbo v1, "long_press_menu_key_when_lock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6424
    const-string/jumbo v0, "turn_on_torch"

    goto :goto_0

    .line 6426
    :cond_6
    const-string/jumbo v1, "long_press_back_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6427
    const/4 v0, 0x0

    .local v0, "function":Ljava/lang/String;
    goto :goto_0

    .line 6429
    .local v0, "function":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "key_combination_power_home"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6430
    const/4 v0, 0x0

    .local v0, "function":Ljava/lang/String;
    goto :goto_0

    .line 6432
    .local v0, "function":Ljava/lang/String;
    :cond_8
    const-string/jumbo v1, "key_combination_power_back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6433
    const/4 v0, 0x0

    .local v0, "function":Ljava/lang/String;
    goto :goto_0

    .line 6435
    .local v0, "function":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, "key_combination_power_menu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6436
    const/4 v0, 0x0

    .local v0, "function":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isTSMClientInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 6283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6284
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 6286
    :try_start_0
    const-string/jumbo v3, "com.miui.tsmclient"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6287
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 6288
    const/4 v3, 0x1

    return v3

    .line 6290
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 6294
    :cond_0
    return v5
.end method

.method public static updateOldKeyFunctionToNew(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    .line 6446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6447
    const-string/jumbo v4, "key_updated"

    .line 6446
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    .line 6449
    const-string/jumbo v3, "screen_key_long_press_app_switch"

    .line 6448
    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6451
    .local v2, "menuAction":Ljava/lang/String;
    const-string/jumbo v3, "screen_key_long_press_home"

    .line 6450
    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6453
    .local v1, "homeAction":Ljava/lang/String;
    const-string/jumbo v3, "screen_key_long_press_back"

    .line 6452
    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6454
    .local v0, "backAction":Ljava/lang/String;
    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6456
    const-string/jumbo v4, "long_press_home_key"

    const-string/jumbo v5, "launch_voice_assistant"

    .line 6455
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6465
    :cond_0
    :goto_0
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6467
    const-string/jumbo v4, "long_press_back_key"

    const-string/jumbo v5, "close_app"

    .line 6466
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6476
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6477
    const-string/jumbo v4, "key_updated"

    const/4 v5, 0x1

    .line 6476
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6445
    .end local v0    # "backAction":Ljava/lang/String;
    .end local v1    # "homeAction":Ljava/lang/String;
    .end local v2    # "menuAction":Ljava/lang/String;
    :cond_2
    return-void

    .line 6457
    .restart local v0    # "backAction":Ljava/lang/String;
    .restart local v1    # "homeAction":Ljava/lang/String;
    .restart local v2    # "menuAction":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6459
    const-string/jumbo v4, "long_press_back_key"

    const-string/jumbo v5, "launch_voice_assistant"

    .line 6458
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 6460
    :cond_4
    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6462
    const-string/jumbo v4, "long_press_menu_key"

    const-string/jumbo v5, "launch_voice_assistant"

    .line 6461
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 6468
    :cond_5
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6470
    const-string/jumbo v4, "long_press_home_key"

    const-string/jumbo v5, "close_app"

    .line 6469
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 6471
    :cond_6
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6473
    const-string/jumbo v4, "long_press_menu_key"

    const-string/jumbo v5, "close_app"

    .line 6472
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1
.end method
