.class Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewClassMatcher"
.end annotation


# instance fields
.field public mMatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->addToMatchList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->removeFromMatchList(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>()V

    return-void
.end method

.method private declared-synchronized addToMatchList(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 53
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromMatchList(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 58
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
