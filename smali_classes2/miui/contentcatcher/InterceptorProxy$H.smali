.class Lmiui/contentcatcher/InterceptorProxy$H;
.super Landroid/os/Handler;
.source "InterceptorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/InterceptorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CREATE:I = 0x1

.field public static final ACTIVITY_DESTROY:I = 0x6

.field public static final ACTIVITY_PAUSE:I = 0x4

.field public static final ACTIVITY_RESUME:I = 0x3

.field public static final ACTIVITY_START:I = 0x2

.field public static final ACTIVITY_STOP:I = 0x5

.field public static final CONTENT_CHANGED:I = 0x7

.field public static final CREATE_INJECTOR:I


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptorProxyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/contentcatcher/IInterceptorContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/app/Activity;Lmiui/contentcatcher/IInterceptorContainer;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "interceptorProxy"    # Lmiui/contentcatcher/IInterceptorContainer;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    .line 307
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mInterceptorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/contentcatcher/IInterceptorContainer;

    .local v1, "interceptorProxy":Lmiui/contentcatcher/IInterceptorContainer;
    if-nez v1, :cond_1

    .line 316
    .end local v1    # "interceptorProxy":Lmiui/contentcatcher/IInterceptorContainer;
    :cond_0
    return-void

    .line 318
    .restart local v1    # "interceptorProxy":Lmiui/contentcatcher/IInterceptorContainer;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 313
    :cond_2
    :goto_0
    return-void

    .line 320
    :pswitch_0
    const/4 v0, 0x0

    .line 321
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 322
    invoke-static {v0}, Lmiui/contentcatcher/InterceptorFactory;->createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/contentcatcher/IInterceptorContainer;->setInterceptor(Lcom/miui/internal/contentcatcher/IInterceptor;)V

    goto :goto_0

    .line 326
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityCreate()V

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 332
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStart()V

    goto :goto_0

    .line 336
    :pswitch_3
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 337
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityResume()V

    goto :goto_0

    .line 341
    :pswitch_4
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 342
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityPause()V

    goto :goto_0

    .line 346
    :pswitch_5
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStop()V

    goto :goto_0

    .line 351
    :pswitch_6
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 352
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityDestroy()V

    goto :goto_0

    .line 356
    :pswitch_7
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 357
    invoke-interface {v1}, Lmiui/contentcatcher/IInterceptorContainer;->getInterceptor()Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
