.class public Lmiui/util/AutoDisableScreenButtonsManager;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_KEY_PRESS_INTERVAL:I = 0x7d0

.field private static final PREF_ADSB_NOT_SHOW_PROMPTS:Ljava/lang/String; = "ADSB_NOT_SHOW_PROMPTS"

.field private static final SettingsActionComponent:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "AutoDisableScreenButtonsManager"

.field private static final TMP_DISABLE_BUTTON:I = 0x2


# instance fields
.field private mCloudConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurUserId:I

.field private mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mScreenButtonPressedKeyCode:I

.field private mScreenButtonPressedTime:J

.field private mScreenButtonsDisabled:Z

.field private mScreenButtonsTmpDisabled:Z

.field private mStatusBarVisibleOld:Z

.field private mToastShowTime:J

.field private mTwice:Z

.field private mUserSetting:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .locals 1

    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/util/AutoDisableScreenButtonsManager;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lmiui/util/AutoDisableScreenButtonsManager;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lmiui/util/AutoDisableScreenButtonsManager;Z)V
    .locals 0
    .param p1, "tmp"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->showSettings()V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "com.android.settings/.AutoDisableScreenButtonsAppListSettingsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 60
    sput-object v0, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 50
    iput-boolean v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    .line 70
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;

    invoke-direct {v0, p0, p2}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V

    .line 71
    .local v0, "observer":Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
    invoke-virtual {v0}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->observe()V

    .line 67
    return-void
.end method

.method private static getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 294
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 295
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 296
    return-object v3

    .line 298
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 300
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2

    .line 302
    :cond_1
    return-object v3
.end method

.method private resetButtonsStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Lmiui/util/AutoDisableScreenButtonsManager;->saveDisableButtonsStatus(Z)V

    .line 285
    iput-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 283
    return-void
.end method

.method private saveDisableButtonsStatus(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    .line 270
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 271
    const-string/jumbo v2, "screen_buttons_state"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 270
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 268
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveTmpDisableButtonsStatus(Z)V
    .locals 4
    .param p1, "tmp"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 276
    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 280
    const-string/jumbo v2, "screen_buttons_state"

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iget v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 279
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 274
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFloat()V
    .locals 2

    .prologue
    .line 202
    const-string/jumbo v0, "AutoDisableScreenButtonsManager"

    const-string/jumbo v1, "showing auto disable screen buttons float window..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    .line 207
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$3;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$3;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$4;

    invoke-direct {v1, p0}, Lmiui/util/AutoDisableScreenButtonsManager$4;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->show()V

    .line 201
    return-void
.end method

.method private showPromptsIfNeeds()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 230
    iget-object v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "ADSB_NOT_SHOW_PROMPTS"

    invoke-static {v5, v6}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_0

    move v2, v4

    .line 232
    .end local v3    # "obj":Ljava/lang/Object;
    .local v2, "notShow":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 233
    return v4

    .line 231
    .end local v2    # "notShow":Z
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 236
    .restart local v2    # "notShow":Z
    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    const v4, 0x110900bf

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 239
    const v5, 0x110900c0

    .line 237
    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 240
    iget-object v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v6, 0x110900c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v4, v7, v5}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 243
    new-instance v5, Lmiui/util/AutoDisableScreenButtonsManager$5;

    invoke-direct {v5, p0}, Lmiui/util/AutoDisableScreenButtonsManager$5;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;)V

    .line 242
    const v6, 0x110900c1

    .line 237
    invoke-virtual {v4, v6, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 251
    .local v0, "adlg":Lmiui/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 252
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 253
    return v7
.end method

.method private showSettings()V
    .locals 5

    .prologue
    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    :try_start_0
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "AutoDisableScreenButtonsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity exception, component = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager$2;

    invoke-direct {v0, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$2;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showToast(ZLandroid/os/Handler;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 177
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x110900bc

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .line 176
    return-void

    .line 178
    :cond_0
    const v0, 0x110900bd

    goto :goto_0
.end method

.method private showToastInner(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 194
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 195
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 196
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 198
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method

.method private updateSettings()V
    .locals 8

    .prologue
    .line 330
    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 331
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 333
    :try_start_0
    const-string/jumbo v4, "screen_buttons_state"

    iget v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    const/4 v7, 0x0

    .line 332
    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 334
    .local v0, "btnState":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    const-string/jumbo v4, "auto_disable_screen_button"

    iget v6, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 343
    invoke-static {v2, v4, v6}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "userSetting":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    :cond_0
    :goto_1
    const-string/jumbo v4, "auto_disable_screen_button_cloud_setting"

    .line 349
    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "cloudConfig":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_2
    monitor-exit v5

    .line 329
    return-void

    .line 336
    .end local v1    # "cloudConfig":Ljava/lang/String;
    .end local v3    # "userSetting":Ljava/lang/String;
    :pswitch_0
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    .end local v0    # "btnState":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 339
    .restart local v0    # "btnState":I
    :pswitch_1
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    goto :goto_0

    .line 346
    .restart local v3    # "userSetting":Ljava/lang/String;
    :cond_2
    iput-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    .line 347
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .restart local v1    # "cloudConfig":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    .line 353
    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "disableForSingleKey"    # Z
    .param p4, "disableForLidClose"    # Z
    .param p5, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "disable":Z
    invoke-virtual {p5}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    .line 114
    .local v1, "isVirtual":Z
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 115
    .local v2, "isVirtualHardKey":Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 137
    return v4

    .line 114
    .end local v2    # "isVirtualHardKey":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isVirtualHardKey":Z
    goto :goto_0

    .line 119
    :sswitch_0
    if-eqz p3, :cond_1

    if-eqz v1, :cond_4

    .line 126
    :cond_1
    :sswitch_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    .line 127
    :cond_2
    if-eqz p4, :cond_5

    invoke-static {}, Lmiui/util/SmartCoverManager;->deviceDisableKeysWhenLidClose()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableForLidClose keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x1

    .line 139
    :cond_3
    :goto_1
    return v0

    .line 120
    :cond_4
    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableForSingleKey keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    .line 122
    goto :goto_1

    .line 130
    :cond_5
    invoke-virtual {p0, p1, p2}, Lmiui/util/AutoDisableScreenButtonsManager;->screenButtonsInterceptKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    const-string/jumbo v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screenButtonsDisabled keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x1

    goto :goto_1

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public isScreenButtonsDisabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStatusBarVisibilityChange(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 75
    iget-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    if-eq p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/util/AutoDisableScreenButtonsManager$1;

    invoke-direct {v1, p0, p1}, Lmiui/util/AutoDisableScreenButtonsManager$1;-><init>(Lmiui/util/AutoDisableScreenButtonsManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public onUserSwitch(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 166
    iget v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    if-eq v0, p1, :cond_0

    .line 167
    iput p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 168
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->updateSettings()V

    .line 165
    :cond_0
    return-void
.end method

.method public resetTmpButtonsStatus()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 288
    return-void
.end method

.method public screenButtonsInterceptKey(IZ)Z
    .locals 8
    .param p1, "keycode"    # I
    .param p2, "down"    # Z

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    return v4

    .line 146
    :cond_0
    if-eqz p2, :cond_2

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 148
    .local v0, "time":J
    iget-wide v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 149
    iget v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    if-ne v2, p1, :cond_1

    iget-boolean v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 148
    if-eqz v2, :cond_1

    .line 150
    iput-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 151
    invoke-direct {p0}, Lmiui/util/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    .line 152
    return v4

    .line 154
    :cond_1
    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    .line 155
    iput p1, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    .line 156
    iput-boolean v5, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 157
    iget-wide v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 158
    iput-wide v0, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mToastShowTime:J

    .line 159
    iget-object v2, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x110900be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v2, v3}, Lmiui/util/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .line 162
    .end local v0    # "time":J
    :cond_2
    return v5
.end method
