.class Landroid/app/ActivityThread$ContentProviderCallbackImpl;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentProviderCallbackImpl"
.end annotation


# instance fields
.field public mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

.field removedByNotify:Z

.field final synthetic this$0:Landroid/app/ActivityThread;

.field waitForProvider:Z


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 5730
    iput-object p1, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5732
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->waitForProvider:Z

    .line 5733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->removedByNotify:Z

    .line 5730
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ContentProviderCallbackImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ContentProviderCallbackImpl;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public reset()Landroid/app/ActivityThread$ContentProviderCallbackImpl;
    .locals 1

    .prologue
    .line 5736
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 5737
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->waitForProvider:Z

    .line 5738
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$ContentProviderCallbackImpl;->removedByNotify:Z

    .line 5739
    return-object p0
.end method
