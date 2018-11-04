.class public Landroid/util/MiuiMultiWindowUtils;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"


# static fields
.field static final ENABLE_WHITELIST:Z = false

.field static final FREEFORM_TO_NAVIBAR:I = 0x96

.field static final FREEFORM_WINDOW_HEIGHT:I = 0x42e

.field static final FREEFORM_WINDOW_MIN:I = 0x2bc

.field static final FREEFORM_WINDOW_WIDTH:I = 0x3a2

.field static final TAG:Ljava/lang/String; = "FreeformWindow"

.field private static sGameList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIMList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sGameList:Ljava/util/HashMap;

    .line 40
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sGameList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.happyelements.AndroidAnimal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sGameList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.tmgp.sgame"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sGameList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.netease.onmyoji.mi"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils;->sIMList:Ljava/util/HashMap;

    .line 47
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sIMList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sIMList:Ljava/util/HashMap;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitFreeFormWindowIfNeeded()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 218
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v1, v4, v3

    .line 220
    .local v1, "i":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, v1, v7, v8}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public static getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gb_boosting"

    .line 130
    const/4 v8, -0x2

    .line 129
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 131
    .local v1, "gameKey":I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 133
    .local v2, "isLaunchMultiWindow":Z
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 153
    .local v5, "tAm":Landroid/app/IActivityManager;
    const/4 v6, 0x3

    :try_start_0
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    .line 154
    .local v4, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v4, :cond_1

    .line 155
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_1

    .line 156
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_1

    .line 157
    const-string/jumbo v6, "FreeformWindow"

    const-string/jumbo v7, "current focusStack is DOCKED and will cancel freeform"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v2, 0x0

    .line 164
    .end local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_1
    :goto_1
    const-string/jumbo v6, "FreeformWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isLaunchMultiWindow:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " gameKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "options":Landroid/app/ActivityOptions;
    if-eqz v2, :cond_2

    .line 167
    invoke-static {p1}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 169
    .local v3, "options":Landroid/app/ActivityOptions;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 173
    .end local v3    # "options":Landroid/app/ActivityOptions;
    :cond_2
    return-object v3

    .line 131
    .end local v2    # "isLaunchMultiWindow":Z
    .end local v5    # "tAm":Landroid/app/IActivityManager;
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "isLaunchMultiWindow":Z
    goto :goto_0

    .line 160
    .restart local v5    # "tAm":Landroid/app/IActivityManager;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFreeformRect(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "portrait"    # Z

    .prologue
    .line 93
    if-nez p0, :cond_0

    const/4 v11, 0x0

    return-object v11

    .line 94
    :cond_0
    const-string/jumbo v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 95
    .local v10, "wm":Landroid/view/WindowManager;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v6, "stackBound":Landroid/graphics/Rect;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 100
    .local v5, "shortSide":I
    const/16 v9, 0x3a2

    .line 101
    .local v9, "windowWidth":I
    const/16 v8, 0x42e

    .line 103
    .local v8, "windowHeith":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v2, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 104
    .local v2, "displayWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 106
    .local v1, "displayHeight":I
    const/16 v11, 0x3a2

    if-le v2, v11, :cond_1

    const/16 v11, 0x42e

    if-gt v1, v11, :cond_2

    .line 107
    :cond_1
    const-string/jumbo v11, "FreeformWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The freeform window ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 108
    const-string/jumbo v13, ") is bigger than screen ("

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 108
    const-string/jumbo v13, "x"

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 108
    const-string/jumbo v13, ")"

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    mul-int/lit8 v11, v2, 0x3

    div-int/lit8 v9, v11, 0x5

    .line 110
    mul-int/lit8 v11, v1, 0x3

    div-int/lit8 v8, v11, 0x5

    .line 112
    :cond_2
    const/16 v11, 0x2bc

    if-ge v9, v11, :cond_3

    .line 113
    const/16 v9, 0x2bc

    .line 116
    :cond_3
    const/16 v11, 0x2bc

    if-ge v8, v11, :cond_4

    .line 117
    const/16 v8, 0x2bc

    .line 120
    :cond_4
    if-eqz p1, :cond_5

    sub-int v11, v5, v9

    div-int/lit8 v3, v11, 0x2

    .line 121
    .local v3, "left":I
    :goto_0
    add-int v4, v3, v9

    .line 122
    .local v4, "right":I
    if-eqz p1, :cond_6

    const/16 v7, 0x96

    .line 123
    .local v7, "top":I
    :goto_1
    add-int v0, v7, v8

    .line 125
    .local v0, "buttom":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v3, v7, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v11

    .line 120
    .end local v0    # "buttom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v7    # "top":I
    :cond_5
    const/16 v3, 0x96

    goto :goto_0

    .line 122
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    :cond_6
    sub-int v11, v5, v8

    div-int/lit8 v7, v11, 0x2

    goto :goto_1
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    if-nez p0, :cond_0

    const/4 v2, -0x1

    return v2

    .line 80
    :cond_0
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 81
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v0, "stackBound":Landroid/graphics/Rect;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static moveTaskToStack(IIZ)I
    .locals 7
    .param p0, "taskId"    # I
    .param p1, "stackId"    # I
    .param p2, "toTop"    # Z

    .prologue
    .line 177
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToStack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isOnTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 180
    .local v1, "mInterface":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 182
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v4, 0x1

    .line 187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToStack failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    .end local v0    # "exception":Landroid/os/RemoteException;
    .end local v1    # "mInterface":Landroid/app/IActivityManager;
    .end local v2    # "identity":J
    :goto_0
    const/4 v4, -0x1

    return v4

    .line 186
    .restart local v1    # "mInterface":Landroid/app/IActivityManager;
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    .line 187
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw v4

    .line 190
    .end local v1    # "mInterface":Landroid/app/IActivityManager;
    .end local v2    # "identity":J
    :cond_0
    const-string/jumbo v4, "FreeformWindow"

    const-string/jumbo v5, "only support mobileqq & wechat"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static resizeTask(ILandroid/graphics/Rect;I)I
    .locals 7
    .param p0, "taskId"    # I
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .prologue
    .line 196
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " resizeMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bounds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/util/MiuiMultiWindowUtils;->supportFreeFromWindow(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 199
    .local v1, "mInterface":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 201
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v4, 0x1

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return v4

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "FreeformWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resizeTask failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    .end local v0    # "exception":Landroid/os/RemoteException;
    .end local v1    # "mInterface":Landroid/app/IActivityManager;
    .end local v2    # "identity":J
    :goto_0
    const/4 v4, -0x1

    return v4

    .line 205
    .restart local v1    # "mInterface":Landroid/app/IActivityManager;
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v4

    .line 209
    .end local v1    # "mInterface":Landroid/app/IActivityManager;
    .end local v2    # "identity":J
    :cond_0
    const-string/jumbo v4, "FreeformWindow"

    const-string/jumbo v5, "only support mobileqq & wechat"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportFreeFromWindow(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 66
    const-string/jumbo v1, ""

    .line 68
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    sget-object v2, Landroid/util/MiuiMultiWindowUtils;->sIMList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static supportFreeFromWindow(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Landroid/util/MiuiMultiWindowUtils;->sIMList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
