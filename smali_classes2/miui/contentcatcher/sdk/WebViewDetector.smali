.class public Lmiui/contentcatcher/sdk/WebViewDetector;
.super Ljava/lang/Object;
.source "WebViewDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    }
.end annotation


# static fields
.field public static final DETECTOR_NAME_IN_JS:Ljava/lang/String; = "MiWebViewDetector"

.field public static final TAG:Ljava/lang/String; = "WebViewDetector"

.field private static volatile sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;


# instance fields
.field private mCallback:Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

.field private mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/contentcatcher/sdk/WebViewDetector$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/contentcatcher/sdk/WebViewDetector;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/WebViewDetector;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 22
    :cond_1
    sget-object v0, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

    .line 43
    .local v0, "callback":Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lmiui/contentcatcher/sdk/WebViewDetector$Callback;->onWebContentCatched(Ljava/lang/String;)V

    .line 40
    .end local v0    # "callback":Lmiui/contentcatcher/sdk/WebViewDetector$Callback;
    :cond_0
    return-void
.end method

.method public setActiveCallback(Lmiui/contentcatcher/sdk/WebViewDetector$Callback;)V
    .locals 1
    .param p1, "callback"    # Lmiui/contentcatcher/sdk/WebViewDetector$Callback;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/WebViewDetector;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public setCustomDetector(Lmiui/contentcatcher/sdk/WebViewDetector;)V
    .locals 2
    .param p1, "detector"    # Lmiui/contentcatcher/sdk/WebViewDetector;

    .prologue
    .line 34
    const-class v0, Lmiui/contentcatcher/sdk/WebViewDetector;

    monitor-enter v0

    .line 35
    :try_start_0
    sput-object p1, Lmiui/contentcatcher/sdk/WebViewDetector;->sDetector:Lmiui/contentcatcher/sdk/WebViewDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
