.class public Lmiui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRootFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lmiui/maml/ResourceLoader;


# direct methods
.method static synthetic -get0(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 21
    :cond_0
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 28
    :cond_0
    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    .line 24
    return-void
.end method
