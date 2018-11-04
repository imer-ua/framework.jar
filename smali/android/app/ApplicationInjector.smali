.class public Landroid/app/ApplicationInjector;
.super Ljava/lang/Object;
.source "ApplicationInjector.java"


# static fields
.field private static mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ApplicationInjector;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onCreate(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 16
    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->addMiuiApplication()V

    .line 15
    return-void
.end method
