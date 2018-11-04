.class public Lmiui/maml/elements/WebViewScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/WebViewScreenElement$MamlInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML WebViewScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "WebView"

.field private static final USE_NETWORK_ALL:I = 0x2

.field private static final USE_NETWORK_WIFI:I = 0x1


# instance fields
.field private mCachePage:Z

.field private mCurUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;

.field private mViewAdded:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/WebViewScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/elements/WebViewScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/WebViewScreenElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 114
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 42
    iput v9, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 115
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    .line 116
    new-instance v4, Landroid/webkit/WebView;

    iget-object v5, p0, Lmiui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 117
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$1;

    invoke-direct {v5, p0}, Lmiui/maml/elements/WebViewScreenElement$1;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$2;

    invoke-direct {v5, p0}, Lmiui/maml/elements/WebViewScreenElement$2;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 132
    const-string/jumbo v4, "userAgent"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "ua":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lmiui/maml/elements/WebViewScreenElement;Lmiui/maml/elements/WebViewScreenElement$MamlInterface;)V

    const-string/jumbo v6, "maml"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 139
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .line 141
    .local v3, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v4, "uriExp"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 142
    .local v1, "uriExp":Lmiui/maml/data/Expression;
    new-instance v4, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v5, "uri"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 144
    const-string/jumbo v4, "cachePage"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 145
    const-string/jumbo v4, "useNetwork"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "useNetwork":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "all"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    :cond_1
    iput v9, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 113
    :goto_0
    return-void

    .line 148
    :cond_2
    const-string/jumbo v4, "wifi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    iput v8, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    goto :goto_0

    .line 151
    :cond_3
    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method private canUseNetwork()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    iget v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    return v2

    .line 225
    :cond_0
    iget v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    if-ne v0, v2, :cond_1

    .line 226
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    return v2

    .line 229
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final finishWebView()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$10;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$10;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method private final initWebView()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$9;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$9;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :cond_1
    return-void
.end method

.method private pauseWebView(Z)V
    .locals 2
    .param p1, "pause"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$8;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$8;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "changed":Z
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v3

    float-to-int v2, v3

    .line 330
    .local v2, "width":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    .line 331
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 332
    const/4 v0, 0x1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    float-to-int v1, v3

    .line 335
    .local v1, "height":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_1

    .line 336
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 337
    const/4 v0, 0x1

    .line 339
    :cond_1
    return v0
.end method

.method private final updateView()V
    .locals 4

    .prologue
    .line 315
    iget-boolean v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v0

    .line 317
    .local v0, "x":F
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 318
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v1

    .line 319
    .local v1, "y":F
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    .line 321
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v2}, Lmiui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, p0, Lmiui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lmiui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 343
    return-void
.end method

.method protected doTick(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 236
    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->updateView()V

    .line 233
    return-void

    .line 238
    :cond_1
    const-string/jumbo v1, "MAML WebViewScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 174
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->finishWebView()V

    .line 175
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCachePage:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 172
    :cond_0
    return-void
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$6;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$6;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 160
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 164
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->initWebView()V

    .line 157
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string/jumbo v0, "MAML WebViewScreenElement"

    const-string/jumbo v1, "ViewManager must be set before init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lmiui/maml/elements/WebViewScreenElement;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "MAML WebViewScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl canceled due to useNetwork setting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$3;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$3;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 246
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 247
    move v0, p1

    .line 248
    .local v0, "_v":Z
    iget-object v1, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement$7;

    invoke-direct {v2, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$7;-><init>(Lmiui/maml/elements/WebViewScreenElement;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 258
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$5;

    invoke-direct {v1, p0}, Lmiui/maml/elements/WebViewScreenElement$5;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 181
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 266
    iget-boolean v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public runjs(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsfun"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/elements/WebViewScreenElement$4;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/WebViewScreenElement$4;-><init>(Lmiui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
