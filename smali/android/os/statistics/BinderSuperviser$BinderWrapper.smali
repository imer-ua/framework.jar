.class final Landroid/os/statistics/BinderSuperviser$BinderWrapper;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BinderWrapper"
.end annotation


# instance fields
.field private mObject:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native destroy()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    invoke-direct {p0}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 26
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    throw v0
.end method

.method public native getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
