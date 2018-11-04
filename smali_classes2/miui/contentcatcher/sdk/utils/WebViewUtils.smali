.class public Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    }
.end annotation


# static fields
.field private static final COMPARISON_CHAR_INDEX_FROM_TAIL:I = 0x5

.field private static final DBG:Z = false

.field private static final MATCHER_ARRAY_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WebViewUtils"

.field public static final WEBVIEW_NAME_ANDROID:Ljava/lang/String; = "android.webkit.WebView"

.field public static final WEBVIEW_NAME_BAIDU:Ljava/lang/String; = "com.baidu.webkit.sdk.WebView"

.field public static final WEBVIEW_NAME_BAIDU1:Ljava/lang/String; = "com.baidu.blink.WebView"

.field public static final WEBVIEW_NAME_MIUI:Ljava/lang/String; = "com.miui.webkit.WebView"

.field public static final WEBVIEW_NAME_SOGOU:Ljava/lang/String; = "sogou.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT:Ljava/lang/String; = "com.tencent.smtt.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT2:Ljava/lang/String; = "com.tencent.mm.ui.widget.MMWebView"

.field public static final WEBVIEW_NAME_UC:Ljava/lang/String; = "com.uc.webview.export.WebView"

.field private static final mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x1c

    const/16 v5, 0x16

    const/16 v4, 0x14

    const/16 v2, 0x17

    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x32

    new-array v0, v0, [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    .line 29
    sput-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    .line 32
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v4

    .line 33
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v4

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "sogou.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v5

    .line 35
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v5

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "android.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v2

    .line 37
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v2

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.miui.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v2

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.baidu.blink.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v1, v0, v6

    .line 40
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v6

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.baidu.webkit.sdk.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 42
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.uc.webview.export.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 44
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.smtt.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v3}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 46
    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm.ui.widget.MMWebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToWebViewClassMatcher(Ljava/lang/String;)V
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v2

    .line 91
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 92
    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 95
    .local v0, "length":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    :cond_1
    monitor-exit v2

    .line 96
    return-void

    .line 99
    :cond_2
    :try_start_2
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 100
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V

    aput-object v3, v1, v0

    .line 102
    :cond_3
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-wrap0(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 90
    return-void

    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static checkViewMatchedByClassName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 133
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    return v3

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    return v3

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 143
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private static foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "matcherArray"    # [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 65
    .local v1, "length":I
    const/16 v6, 0x32

    if-lt v1, v6, :cond_0

    .line 66
    return v8

    .line 69
    :cond_0
    aget-object v2, p1, v1

    .line 70
    .local v2, "matcher":Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    if-nez v2, :cond_1

    .line 71
    return v8

    .line 73
    :cond_1
    const/4 v5, 0x0

    .line 74
    .local v5, "useEquals":Z
    add-int/lit8 v0, v1, -0x5

    .line 75
    .local v0, "comparisonIndex":I
    iget-object v6, v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "matcherClassName$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "matcherClassName":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const/4 v6, 0x1

    return v6

    .line 84
    .end local v3    # "matcherClassName":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 87
    :cond_4
    return v8
.end method

.method public static initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSystemView(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string/jumbo v0, "android.view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isWebView(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const-class v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v3

    .line 120
    if-nez p0, :cond_0

    monitor-exit v3

    .line 121
    return v4

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-static {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit v3

    .line 129
    return v4

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized removeFromWebViewClassMatcher(Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v2

    .line 106
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 107
    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 110
    .local v0, "length":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    :cond_1
    monitor-exit v2

    .line 111
    return-void

    .line 114
    :cond_2
    :try_start_2
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 115
    sget-object v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->-wrap1(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v2

    .line 105
    return-void

    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
