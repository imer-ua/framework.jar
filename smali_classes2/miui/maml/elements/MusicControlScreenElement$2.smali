.class Lmiui/maml/elements/MusicControlScreenElement$2;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 495
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$2;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get1(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap5(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    .line 497
    return-void
.end method
