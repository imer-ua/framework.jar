.class public Lmiui/maml/NotifierManager$MultiBroadcastNotifier;
.super Lmiui/maml/NotifierManager$BroadcastNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBroadcastNotifier"
.end annotation


# instance fields
.field private mIntents:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intents"    # [Ljava/lang/String;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lmiui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 425
    iput-object p2, p0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    .line 423
    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 5

    .prologue
    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lmiui/maml/NotifierManager$MultiBroadcastNotifier;->mIntents:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 432
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
