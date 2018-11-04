.class public Landroid/os/statistics/BinderSuperviser;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$BinderCallFields;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvation;,
        Landroid/os/statistics/BinderSuperviser$BinderWrapper;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "binder"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "binder"    # Ljava/lang/Object;

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, "interfaceDescriptor":Ljava/lang/String;
    :try_start_0
    instance-of v2, p0, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    if-eqz v2, :cond_2

    .line 449
    nop

    nop

    .end local p0    # "binder":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    .end local v1    # "interfaceDescriptor":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    return-object v1

    .line 450
    .restart local v1    # "interfaceDescriptor":Ljava/lang/String;
    .restart local p0    # "binder":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v2, p0, Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 451
    check-cast p0, Landroid/os/IBinder;

    .end local p0    # "binder":Ljava/lang/Object;
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .local v1, "interfaceDescriptor":Ljava/lang/String;
    goto :goto_0

    .line 453
    .local v1, "interfaceDescriptor":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
