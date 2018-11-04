.class public Lorg/egret/plugin/mi/runtime/EgretLoader;
.super Ljava/lang/Object;
.source "EgretLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameEngineMethod;,
        Lorg/egret/plugin/mi/runtime/EgretLoader$GameOptionName;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EgretLoader"

.field private static final MI_APPID:Ljava/lang/String; = "2000"

.field private static final MI_APPKEY:Ljava/lang/String; = "3321031F35156D389B0B272910695E3F"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gameEngine:Ljava/lang/Object;

.field private launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

.field private options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lorg/egret/plugin/mi/runtime/EgretLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGameEngine()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/egret/plugin/mi/runtime/EgretLoader;Ljava/lang/Class;)V
    .locals 0
    .param p1, "gameEngineClass"    # Ljava/lang/Class;

    .prologue
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->startGame(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "EgretLoader(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    .line 58
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    .line 54
    :cond_0
    return-void
.end method

.method private callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, v0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 248
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 249
    :cond_0
    return-object v3

    .line 253
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 255
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 256
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    return-object v3
.end method

.method private callInitRuntime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    .line 174
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    aput-object v2, v0, v3

    .line 175
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "game_engine_init"

    invoke-direct {p0, v2, v1, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private callSetGameOptions()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 162
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v3, "optionSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v6, "EgretLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v4, v8

    .line 168
    .local v4, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v3, v0, v8

    .line 169
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v5, "game_engine_set_options"

    invoke-direct {p0, v5, v4, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private callSetRuntimeView()V
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v1, "game_engine_get_view"

    invoke-direct {p0, v1}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 180
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->setScreenOrientation()V

    .line 182
    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    return v7

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "setEgretRuntimeListener"

    .line 69
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 67
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return v8

    .line 72
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    return v7
.end method

.method private checkEgretGameEngine()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "Egret game engine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setScreenOrientation()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    .line 190
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 186
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    .line 193
    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private startGame(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "gameEngineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    new-instance v2, Lorg/egret/plugin/mi/runtime/EgretLoader$2;

    invoke-direct {v2, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$2;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    return-void
.end method

.method private startGameEngine()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetGameOptions()V

    .line 157
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callInitRuntime()V

    .line 158
    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callSetRuntimeView()V

    .line 155
    return-void
.end method


# virtual methods
.method public checkEgretContext()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "The context is not activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    return-void

    .line 202
    :cond_1
    const-string/jumbo v0, "game_engine_onPause"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 210
    :cond_1
    const-string/jumbo v0, "game_engine_onResume"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "EgretLoader"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretGameEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    return-void

    .line 218
    :cond_1
    const-string/jumbo v0, "game_engine_onStop"

    invoke-direct {p0, v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->callGameEngineMethod(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->gameEngine:Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const-string/jumbo v0, "gameId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string/jumbo p1, "egret.runtime.gameId"

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void

    .line 85
    :cond_2
    const-string/jumbo v0, "gameUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string/jumbo p1, "egret.runtime.loaderUrl"

    .line 87
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.updateUrl"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setScreenOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1, "orientation"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    const-string/jumbo v2, "landscape"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.screenOrientation"

    const-string/jumbo v2, "portrait"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public start(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v0, "EgretLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 115
    const-string/jumbo v3, "egret"

    .line 114
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "egretRoot":Ljava/lang/String;
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.egretRoot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->options:Ljava/util/HashMap;

    const-string/jumbo v1, "egret.runtime.libraryLoaderType"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    iget-object v1, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->activity:Landroid/app/Activity;

    .line 119
    const-string/jumbo v3, "2000"

    const-string/jumbo v4, "3321031F35156D389B0B272910695E3F"

    const/4 v5, 0x0

    .line 118
    invoke-direct/range {v0 .. v5}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    .line 120
    iget-object v0, p0, Lorg/egret/plugin/mi/runtime/EgretLoader;->launcher:Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;

    new-instance v1, Lorg/egret/plugin/mi/runtime/EgretLoader$1;

    invoke-direct {v1, p0}, Lorg/egret/plugin/mi/runtime/EgretLoader$1;-><init>(Lorg/egret/plugin/mi/runtime/EgretLoader;)V

    invoke-virtual {v0, v1}, Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher;->run(Lorg/egret/plugin/mi/java/egretruntimelauncher/EgretRuntimeLauncher$EgretRuntimeDownloadListener;)V

    .line 109
    return-void
.end method

.method public stopEgretRuntime()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->onStop()V

    .line 222
    return-void
.end method
