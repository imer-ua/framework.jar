.class final Lmiui/maml/FancyDrawable$FancyDrawableState;
.super Lmiui/maml/MamlDrawable$MamlDrawableState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FancyDrawableState"
.end annotation


# instance fields
.field mRendererCore:Lmiui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 0
    .param p1, "rendererCore"    # Lmiui/maml/RendererCore;

    .prologue
    .line 233
    invoke-direct {p0}, Lmiui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 234
    iput-object p1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    .line 233
    return-void
.end method


# virtual methods
.method protected createDrawable()Lmiui/maml/MamlDrawable;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lmiui/maml/FancyDrawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-direct {v0, v1}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    return-object v0
.end method
